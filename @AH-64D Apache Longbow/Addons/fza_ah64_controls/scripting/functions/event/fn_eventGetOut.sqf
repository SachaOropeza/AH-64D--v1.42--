/* ----------------------------------------------------------------------------
Function: fza_fnc_eventGetOut

Description:
    Event handler that finishes parts of apache logic when someone gets out.

    Closes HUD UI

Parameters:
    _heli - the helicopter to modify

Returns:
	Nothing

Examples:

Author:
	unknown
---------------------------------------------------------------------------- */
params["_heli"];
_isHeliDriver = !(player isEqualTo driver objectParent player);
_isHeliGunner = !(player isEqualTo gunner objectParent player);


if (!(vehicle player isKindOf "fza_ah64base")) then {
    1 cuttext["", "PLAIN", 0.1];
    2 cuttext["", "PLAIN", 0.1];
    3 cuttext["", "PLAIN", 0.1];
    4 cuttext["", "PLAIN", 0.1];

    if (!(isNil "fza_ah64_bweff")) then {
        fza_ah64_bweff ppEffectEnable false;
    };

    if (!(isNil "fza_ah64_pnvsgreff")) then {
        fza_ah64_pnvsgreff ppEffectEnable false;
    };
};
_heli setVariable ["fza_ah64_ihadssoff", 1];
[_heli] execVM "\fza_ah64_controls\scripting\ihadss.sqf";