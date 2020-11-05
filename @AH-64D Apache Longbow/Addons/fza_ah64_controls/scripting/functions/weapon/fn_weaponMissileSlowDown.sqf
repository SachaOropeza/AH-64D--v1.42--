params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

if(!local _projectile)exitWith{}; 

_heli = (getShotParents _projectile) # 0;

if (_projectile isKindOf "fza_agm114l") then {
	_targ =  fza_ah64_mycurrenttarget;
	if !(isNull _targ) then {
		_projectile setMissileTarget _targ;
	};
};

if (_projectile isKindOf "fza_agm114k" || _projectile isKindOf "fza_fim92") then {
    _targ = (_heli getVariable "fza_ah64_currentLase");
	if !(isNull _targ) then {
		_projectile setMissileTarget _targ;
	};
};

_targ = fza_ah64_mycurrenttarget;
_heli setVariable ["fza_ah64_shotat_list", (_heli getVariable "fza_ah64_shotat_list")+[_targ], true];
_heli setVariable ["fza_ah64_shotmissile_list", (_heli getVariable "fza_ah64_shotmissile_list")+[_projectile], true];
private _pfh = "fza_pfh_agm114_helper_" + str _projectile;

[_pfh, "onEachFrame", {
	params["_projectile","_pfh"];

	if(!alive _projectile)exitWith{
		[_pfh, "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		_heli setVariable ["fza_ah64_shotat_list", (_heli getVariable "fza_ah64_shotat_list")-[_targ, objNull], true];
		_heli setVariable ["fza_ah64_shotmissile_list", (_heli getVariable "fza_ah64_shotmissile_list")-[_projectile, objNull], true];
	};

	private _target = missileTarget _projectile;
	if(!(_target isEqualTo objNull)  ) then
	{
		if(_projectile distance _target < 200)then
		{
			if(speed _projectile > 600)then
			{
				// Slow down the missile to fight default ugly missile physics
				_projectile setVelocity (velocity _projectile vectorMultiply 0.98);
			};
		};
	};
	//hintSilent format["speed %1\ntarget: %2",speed _projectile,missileTarget _projectile];

}, [_projectile,_pfh, _heli, _targ]] call BIS_fnc_addStackedEventHandler;