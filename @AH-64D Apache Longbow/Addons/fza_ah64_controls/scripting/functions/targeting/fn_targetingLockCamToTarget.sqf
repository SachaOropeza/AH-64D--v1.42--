/* ----------------------------------------------------------------------------
Function: fza_fnc_lockCamTarget

Description:
	Locks the gunner's TADS to the current target

Parameters:
	_heli - The helicopter to act on

Returns:
	Nothing

Examples:
	--- Code
    [_heli] call fza_fnc_lockCamTarget 
	---

Author:
	AngusLogan02
---------------------------------------------------------------------------- */

// NOTES: 	keybind currently works, but not through fza_fnc_lockCamTarget
//			the script runs, gets past if clause but no effect on camera

params["_heli"];

hint format["script ran"];

if ((fza_ah64_mycurrenttarget isKindOf "car" || fza_ah64_mycurrenttarget isKindOf "motorcycle" || fza_ah64_mycurrenttarget isKindOf "TrackedAPC" || fza_ah64_mycurrenttarget isKindOf "tank" || fza_ah64_mycurrenttarget isKindOf "WheeledAPC")) then {
	_heli lockCameraTo [fza_ah64_mycurrenttarget, [0]];

} else {
	_heli lockCameraTo [objNull, [0]];
}