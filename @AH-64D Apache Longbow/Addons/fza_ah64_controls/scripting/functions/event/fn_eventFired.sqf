/* ----------------------------------------------------------------------------
Function: fza_fnc_eventFired

Description:
    Event handler that handles any ammunition fired by the apache

    - Starts custom missile guidance
    - Ensures correct number of rockets fired in salvo
    - Damages people holding on external stores if pylons fired
    - Checks for gun overheat

Parameters:
    Schema of the "fired" event handler.

Returns:
	Nothing

Examples:

Author:
	unknown
---------------------------------------------------------------------------- */
params["_ah64", "_weapon", "_muzzle", "_mode", "_ammotype", "_missobj"];
_mags = magazines _ah64;

if (!(player == driver _ah64 || player == gunner _ah64)) exitwith {};

//MSL GUIDANCE STARTS HERE !

//COUNTERMEASURES

if (_weapon == "fza_CMFlareLauncher") then {
    fza_ah64_curflrln = fza_ah64_curflrln + 2;
    [] spawn {
        sleep 3;
        fza_ah64_curflrln = fza_ah64_curflrln - 2;
    }
};

//SPECIAL SCRIPTS

//Damages any outside occupants if wing stores used

if (!(_weapon == "fza_m230")) then {
    {
        _x setdamage((damage _x) + 0.05);
    }
    foreach(crew _ah64 - [gunner _ah64, driver _ah64]);
};

//OVERHEAT GUN FAULT

if (_weapon == "fza_m230" && (player == gunner _ah64 || local gunner _ah64 || isNull gunner _ah64)) then {
    if (time - fza_ah64_firekeypressed > 1) then {
        fza_ah64_burst = 0;
    };
    if (fza_ah64_gunheat > 105) then {
        [_ah64] call fza_fnc_damageM230;
    };
    fza_ah64_burst = fza_ah64_burst + 1;
    fza_ah64_gunheat = fza_ah64_gunheat + 1;
    fza_ah64_firekeypressed = time;
};

//ROCKETS SALVOS
/*
if (player == gunner _ah64 || local gunner _ah64 || isNull gunner _ah64) then {
    _this spawn {
        params["_ah64", "_weapon", "_muzzle", "_mode", "_ammotype", "_missobj"];
        sleep 0.011;
        if ((_ah64 getVariable "fza_ah64_rocketsalvo") > 0 && fza_ah64_salvofired < (_ah64 getVariable "fza_ah64_rocketsalvo") && (_weapon in fza_ah64_rocketweps14 || _weapon in fza_ah64_rocketweps23 || _weapon in fza_ah64_rocketweps1 || _weapon in fza_ah64_rocketweps2 || _weapon in fza_ah64_rocketweps3 || _weapon in fza_ah64_rocketweps4)) then {
            if (_ah64 ammo _weapon <= 0) then {
                fza_ah64_salvofired = 0;
            };
            _weaponindex = 1;
            _wpncounter = 0; {
                if (_x == _weapon) then {
                    _weaponindex = _wpncounter;
                };
                _wpncounter = _wpncounter + 1;
            }
            foreach(weapons _ah64);
            _ah64 setWeaponReloadingTime[gunner _ah64, _weapon, 0];
            _ah64 action["useWeapon", _ah64, gunner _ah64, _weaponindex];
        };

        if (fza_ah64_salvofired >= (_ah64 getVariable "fza_ah64_rocketsalvo")) then {
            sleep 0.1;
            fza_ah64_salvofired = 0;
        };
    };
};*/