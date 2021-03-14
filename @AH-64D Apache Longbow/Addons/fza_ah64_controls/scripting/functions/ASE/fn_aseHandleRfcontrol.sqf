/* ----------------------------------------------------------------------------
Function: fza_fnc_aseHandleRfControl

Description:
    Handles the RF jammer overheat

Parameters:
    _heli - The helicopter

Returns:
	nothing

Examples:
	_this spawn fza_fnc_aseHandleRfcontrol;
    
Author:
	ollieollieolllie
---------------------------------------------------------------------------- */
params ["_heli"];

if (!("fza_ah64_rfJamfail" in ((vehicle player) magazinesturret[-1]))) then {
    _heli setVariable ["fza_ah64_rfjon", 1, true];
    while {
        (fza_ah64_rfjammer < 61 && _heli getVariable "fza_ah64_rfjon" == 1)
    }
    do {
        fza_ah64_rfjammer = fza_ah64_rfjammer + 1;
        sleep 1;
    };
    if (fza_ah64_rfjammer > 60) then {
        _heli setVariable ["fza_ah64_rfjon", 0, true];
    };
    while {
        (fza_ah64_rfjammer > 0 && _heli getVariable "fza_ah64_rfjon" == 0)
    }
    do {
        fza_ah64_rfjammer = fza_ah64_rfjammer - 1;
        sleep 2;
    };
} else {
    _heli setVariable ["fza_ah64_rfjon", 0, true];
};