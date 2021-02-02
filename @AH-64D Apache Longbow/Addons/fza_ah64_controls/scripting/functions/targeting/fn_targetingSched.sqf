/* ----------------------------------------------------------------------------
Function: fza_fnc_targetingSched

Description:
	Handles repetitive target management. Should be run regularly in the scheduler.

Parameters:
	_heli - The helicopter to act on

Returns:
	Nothing

Examples:
	--- Code
    [_heli] call fza_fnc_targetingSched
	---

Author:
	Unknown
---------------------------------------------------------------------------- */
params ["_heli"];
if (!(player in _heli)) exitwith {};
private _visibleTargets = [];

fza_ah64_tsddisptargs = ([_heli, fza_ah64_targetlist] call fza_fnc_targetingFilterType) select {
    _theta = [_heli, (getposatl _heli select 0), (getposatl _heli select 1), (getposatl _x select 0), (getposatl _x select 1)] call fza_fnc_relativeDirection;

    ! (((_heli getVariable "fza_ah64_agmode" == 1 && getpos _x select 2 < 10) || (_theta > 90 && _theta < 270) || (_heli getVariable "fza_ah64_agmode" == 0 && getpos _x select 2 > 10) || (((_heli distance _x) * (_heli getVariable "fza_ah64_rangesetting")) > 1) || !(alive _x)) ||
       ((((_heli distance _x) * (_heli getVariable "fza_ah64_rangesetting") > 0.2) && (_theta > 90 && _theta < 270)) || ((_heli distance _x) * (_heli getVariable "fza_ah64_rangesetting") > 1) || !(alive _x)))
};

fza_ah64_dispfcrlist = ([_heli, fza_ah64_fcrlist] call fza_fnc_targetingFilterType) select {
    _thetafcr = [_heli, (getposatl _heli select 0), (getposatl _heli select 1), (getposatl _x select 0), (getposatl _x select 1)] call fza_fnc_relativeDirection;

    switch (_heli getVariable "fza_ah64_agmode") do {
        case 0: {
            !((getpos _x select 2 > 10) || ((_heli distance2D _x) > 8000) || (_thetafcr > 70 && _thetafcr < 290) || !(alive _x))
        };
        case 1: {
            !((getpos _x select 2 < 10) || ((_heli distance2D _x) > 8000) || !(alive _i))
        };
        default {
            true
        };
    };
};

fza_ah64_Cscopelist = ([_heli, fza_ah64_targetlist] call fza_fnc_targetingFilterType) select {
    _thetafcr = [_heli, (getposatl _heli select 0), (getposatl _heli select 1), (getposatl _x select 0), (getposatl _x select 1)] call fza_fnc_relativeDirection;

    switch (_heli getVariable "fza_ah64_agmode") do {
        case 0: {
            !((getpos _x select 2 > 10) || (_thetafcr > 70 && _thetafcr < 290) || !(alive _x))
        };
        case 1: {
            !((getpos _x select 2 < 10) || !(alive _i))
        };
        default {
            true
        };
    };
};
//what gets targeted with lock next target
_visibleTargets =
    if ([_heli, 1] call fza_fnc_mpdGetCurrentDisplay == "fcr") then {
        fza_ah64_dispfcrlist - alldead;
    } else {
        if ([_heli, 1] call fza_fnc_mpdGetCurrentDisplay == "tsd") then {
            fza_ah64_dispfcrlist - alldead;
        } else {
            if (_heli getVariable "fza_ah64_pfz_count" == 0) then {
                fza_ah64_targetlist - alldead;
            }
            else {
                (_heli getVariable "fza_ah64_pfzs") select (_heli getVariable "fza_ah64_pfz_count") - 1;
            }
        };
    };

if (count _visibleTargets == 0 && isNull fza_ah64_mycurrenttarget) then {
    fza_ah64_mycurrenttarget = objNull;
};
if (inputAction "vehLockTargets" > 0.5 && fza_ah64_locktargstate == 0 && count _visibleTargets > 0) then {
    if (fza_ah64_mynum >= count _visibleTargets - 1) then {
        fza_ah64_mynum = 0;
    } else {
        
        fza_ah64_mynum = fza_ah64_mynum + 1;
    };
    fza_ah64_mycurrenttarget = _visibleTargets select(fza_ah64_mynum);
    fza_ah64_locktargstate = 1;
};
if (inputAction "vehLockTargets" < 0.5 && fza_ah64_locktargstate == 1) then {
    fza_ah64_locktargstate = 0;
};
if (_heli getVariable "fza_ah64_agmode" == 2) then {
    fza_ah64_mycurrenttarget = cursortarget;
};