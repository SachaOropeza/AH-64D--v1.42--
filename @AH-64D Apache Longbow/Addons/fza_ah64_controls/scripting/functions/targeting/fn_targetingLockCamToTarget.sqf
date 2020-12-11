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

Authors:
	AngusLogan02, Ollieollieollie
---------------------------------------------------------------------------- */
params["_heli"];
_tgt = cursorTarget;

if (player != gunner _heli) exitWith {};

if (_heli getVariable "fza_ah64_tadsLocked" == false && !isNull _tgt) then {
	_heli lockCameraTo [_tgt, [0]];
	_heli setVariable["fza_ah64_tadsLocked", true, true];
} else {
	_heli lockCameraTo [objNull, [0]];
	_heli setVariable["fza_ah64_tadsLocked", false, true];
};

while {_heli getVariable "fza_ah64_tadsLocked" == true} do {
	_theta = [_heli, (getpos _heli select 0), (getpos _heli select 1), (getpos _tgt select 0), (getpos _tgt select 1)] call fza_fnc_relativeDirection;
	if ([_heli, "VIEW", _tgt] checkVisibility [eyePos player, getPosASL _tgt] == 0 || (_theta > 118 && _theta < 242)) then {
		_heli lockCameraTo [objNull, [0]];
		_heli setVariable["fza_ah64_tadsLocked", false, true];
	};
	uiSleep 0.5;
};