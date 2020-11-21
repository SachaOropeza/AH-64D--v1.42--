/* ----------------------------------------------------------------------------
Function: fza_fnc_targetinglockCamToTarget

Description:
	Locks the gunner's TADS to the current target

Parameters:
	_heli - The helicopter to act on

Returns:
	Nothing

Examples:
	--- Code
    [_heli] spawn fza_fnc_targetingLockCamTarget 
	---

Author:
	AngusLogan02
---------------------------------------------------------------------------- */
params["_heli"];
_tgt = cursorTarget;

if (player != gunner _heli) exitWith {};

if (_heli getVariable "fza_ah64_tadsLocked" == false && !isNull cursorTarget && {_tgt isKindOf "AT" || _tgt isKindOf "Civilian" || _tgt isKindOf "Diver" || _tgt isKindOf "Infantry" || _tgt isKindOf "Medic" || _tgt isKindOf "MG" || _tgt isKindOf "Officer" || _tgt isKindOf "Pilot" || _tgt isKindOf "Sniper" || _tgt isKindOf "SpecialForces" || _tgt isKindOf "UAVPilot" || _tgt isKindOf "Helicopter" || _tgt isKindOf "car" || _tgt isKindOf "motorcycle" || _tgt isKindOf "trackedAPC" || _tgt isKindOf "tank" || _tgt isKindOf "WheeledAPC" || _tgt isKindOf "Plane" || _tgt isKindOf "Ship"}) then {
	_heli lockCameraTo [_tgt, [0]];
	_heli setVariable["fza_ah64_tadsLocked", true, true];
} else {
	_heli lockCameraTo [objNull, [0]];
	_heli setVariable["fza_ah64_tadsLocked", false, true];
};

while {_heli getVariable "fza_ah64_tadsLocked" == true} do {
	if ([_heli, "VIEW", _tgt] checkVisibility [eyePos player, getPosASL _tgt] == 0) then {
		_heli lockCameraTo [objNull, [0]];
		_heli setVariable["fza_ah64_tadsLocked", false, true];
	};
	uiSleep 0.5;
};