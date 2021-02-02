#include "\a3\ui_f\hpp\definedikcodes.inc"
#define MOD_NAME "AH-64D Apache"

#define ENSURE_IN_APACHE(expr) if(vehicle player isKindOf "fza_ah64base") then { expr };

#define CALL_ENSURE_IN_APACHE(func) ENSURE_IN_APACHE( [vehicle player] call func; )

#define USER_1 0xFA
#define USER_2 0xFB
#define USER_3 0xFC
#define USER_4 0xFD
#define USER_5 0xFE
#define USER_6 0xFF
#define USER_7 0x100
#define USER_8 0x101
#define USER_9 0x102
#define USER_10 0x103
#define USER_11 0x104
#define USER_12 0x105
#define USER_13 0x106
#define USER_14 0x107
#define USER_15 0x108
#define USER_16 0x109
#define USER_17 0x10A
#define USER_18 0x10B
#define USER_19 0x10C
#define USER_20 0x10D

[MOD_NAME, "crosshairAction", "Crosshair Action", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleCrosshairAction)
}, {}, [USER_20, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "cycleMPDLeft", "Cycle Left MPD", {
	ENSURE_IN_APACHE([vehicle player] execvm "\fza_ah64_controls\scripting\plmpdcycle.sqf")
}, {}, [USER_2, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "cycleMPDRight", "Cycle Right MPD", {
	ENSURE_IN_APACHE([vehicle player] execvm "\fza_ah64_controls\scripting\prmpdcycle.sqf")
}, {}, [USER_1, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "gunTracking", "Gun Tracking", {
	ENSURE_IN_APACHE([vehicle player] execvm "\fza_ah64_controls\scripting\guncontrol.sqf")
}, {}, [USER_3, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "was", "Weapon Action Switch", {
	CALL_ENSURE_IN_APACHE(fza_fnc_weaponActionSwitch)
}, {}, [USER_4, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "armLaserDesig", "Arm Laser Designation System", {
	CALL_ENSURE_IN_APACHE(fza_fnc_laserArm)
}, {}, [USER_5, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "targFilter", "TSD/FCR Filter", {
	ENSURE_IN_APACHE([vehicle player] execVM "\fza_ah64_controls\scripting\tsd_targfilter.sqf")
}, {}, [USER_6, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "tsdRange", "TSD Range", {
	ENSURE_IN_APACHE([vehicle player] execVM "\fza_ah64_controls\scripting\tsd_range.sqf")
}, {}, [USER_7, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "tsdMode", "TSD Mode", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleTSDMode)
}, {}, [USER_8, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "pfzSelect", "PFZ Select", {
	CALL_ENSURE_IN_APACHE(fza_fnc_targetingPFZCycle)
}, {}, [USER_9, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "disarmLaserDesig", "Disarm Laser Designation System", {
	CALL_ENSURE_IN_APACHE(fza_fnc_laserDisarm)
}, {}, [USER_10, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "toggleIHADSS", "IHADSS Toggle", {
	ENSURE_IN_APACHE([vehicle player] execVM "\fza_ah64_controls\scripting\ihadss.sqf")
}, {}, [USER_11, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "toggleHDUPNVS", "HDU/PNVS Toggle", {
	ENSURE_IN_APACHE(vehicle player setVariable ["fza_ah64_ihadss_pnvs_cam", !(vehicle player getVariable "fza_ah64_ihadss_pnvs_cam")];)
}, {}, [USER_12, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "jammersToggle", "Manual/Automatic Jammers Toggle", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleJammerToggle)
}, {}, [USER_13, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "aseAutopage", "ASE Autopage", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleASEAutopage)
}, {}, [USER_14, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "modeIHADSS", "IHADSS Mode", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleIHADSSMode)
}, {}, [USER_15, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "waypointNext", "Cycle Waypoint Forwards", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandleNextWaypoint)
}, {}, [USER_18, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "waypointPrev", "Cycle Waypoint Backwards", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandlePrevWaypoint)
}, {}, [USER_17, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "Self/remote laser", "Switch from self/remote lase", {
	CALL_ENSURE_IN_APACHE(fza_fnc_controlHandlelaserchange)
}, {}, [user_20, [false, false, false]]] call fza_fnc_addKeybind;

[MOD_NAME, "toggleHeadtracking", "Toggle Head Tracking", {
	ENSURE_IN_APACHE(fza_ah64_tiron = !fza_ah64_tiron;)
}, {}, [USER_19, [false, false, false]]] call fza_fnc_addKeybind;