/* ----------------------------------------------------------------------------
Function: fza_fnc_targetingUpdate

Description:
	Handles repetitive ASE targeting information management. Should be run regularly.

Parameters:
	_heli - The helicopter to act on

Returns:
	Nothing

Examples:
	--- Code
    [_heli] call fza_fnc_targetingUpdate
	---

Author:
	Unknown
---------------------------------------------------------------------------- */
params ["_heli"];
//Disabling this line below fixes the ASe page & The contents below are already beign done on page_ase
//fza_ah64_asethreats = fza_ah64_targetlist select { alive _x && _x call fza_fnc_targetIsADA && [side _x, side _heli] call BIS_fnc_sideIsEnemy};

{
	if ((_heli == assignedTarget _x || _x AimedAtTarget[_heli] > 0.5) && (alive _x) && !(_x in fza_ah64_threattracking)) then {
		fza_ah64_threattracking = fza_ah64_threattracking + [_x];
		if (_x iskindof "ZSU_Base") then {
			["fza_ah64_bt_zsu23", 2.3, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
		};
		if (_x iskindof "2S6M_Tunguska") then {
			["fza_ah64_bt_sa19", 1.6, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
		};
		if !((_x iskindof "ZSU_Base") || (_x iskindof "2S6M_Tunguska")) then {
			["fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
		};
		if (_heli getVariable "fza_ah64_aseautopage" == 1) then {
			[_heli, 1, "ase"] call fza_fnc_mpdSetDisplay;
			if (fza_ah64_rfjstate == 1 && fza_ah64_rfjon == 0) then {
				_rfjammerscript = [(vehicle player)] execvm "\fza_ah64_controls\scripting\rf_jammer.sqf";
			};
			if (fza_ah64_irjstate == 1 && fza_ah64_irjon == 0) then {
				_irjammerscript = [(vehicle player)] execvm "\fza_ah64_controls\scripting\ir_jammer.sqf";
			};
		};
	};
} forEach fza_ah64_asethreats;