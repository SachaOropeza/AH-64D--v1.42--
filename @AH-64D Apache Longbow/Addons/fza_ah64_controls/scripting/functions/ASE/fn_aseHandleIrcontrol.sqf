/* ----------------------------------------------------------------------------
Function: fza_fnc_aseHandleIrControl

Description:
    Handles the IR jammer overheat

Parameters:
    _heli - The helicopter

Returns:
	nothing

Examples:
	_this spawn fza_fnc_aseHandleIrcontrol;
    
Author:
	ollieollieolllie
---------------------------------------------------------------------------- */
params ["_heli"];

if (!("fza_ah64_irJamfail" in ((vehicle player) magazinesturret[-1]))) then {
    _heli setVariable ["fza_ah64_irjon", 1, true];
    while {
        (fza_ah64_irjammer < 61 && _heli getVariable "fza_ah64_irjon" == 1)
    }
    do {
        fza_ah64_irjammer = fza_ah64_irjammer + 1;
        sleep 1;
    };
    if (fza_ah64_irjammer > 60) then {
        _heli setVariable ["fza_ah64_irjon", 0, true];
    };
    while {
        (fza_ah64_irjammer > 0 && _heli getVariable "fza_ah64_irjon" == 0)
    }
    do {
        fza_ah64_irjammer = fza_ah64_irjammer - 1;
        sleep 2;
    };
} else {
    _heli setVariable ["fza_ah64_irjon", 0, true];
};