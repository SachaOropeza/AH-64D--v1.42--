params ["_heli","_munitons","_hostile"];

if !(player == driver _ac) exitwith {};
if(!(_munition isKindOf "missileBase") || !(isengineon _ac || (alive _ac))) exitwith {};

_missile = nearestobject [_hostile,_munition];


////Reduces the missiles 2 cores to 1 activation
_fza_ah64_incominghandled2 = _hostile getVariable ["fza_ah64_shotCounter2", 0];
_hostile setVariable ["fza_ah64_shotCounter2", (_fza_ah64_incominghandled2 + 1) % 2];
if (_fza_ah64_incominghandled2 % 2 == 1) exitWith {};

////ASE PAGE LINK////
waitUntil {((_ac getVariable "fza_ah64_irjstate" == 1) || (_ac getVariable "fza_ah64_irjon" == 1) || !(alive _missile))};
if !(alive _missile) exitwith {};
////ASE PAGE LINK END////

//1st action is deploying flares incase the ecm cant jam in time
[vehicle player, "fza_CMFlareLauncher", [-1]] call BIS_fnc_fire;
sleep 1;
[vehicle player, "fza_CMFlareLauncher", [-1]] call BIS_fnc_fire;

_flarecount = 0;
while {(_flarecount < 3) && (alive _ac)} do {
	sleep 4;
	[vehicle player, "fza_CMFlareLauncher", [-1]] call BIS_fnc_fire;
	_flarecount = _flarecount + 1;
};