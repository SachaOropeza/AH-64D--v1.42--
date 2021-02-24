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
/*
{
	if ((_heli == assignedTarget _x || _x AimedAtTarget[_heli] > 0.5 || isVehicleRadarOn _x) && (alive _x)) then {
		fza_ah64_asethreats = fza_ah64_asethreats + [_x];
		fza_ah64_targetlist = fza_ah64_targetlist + fza_ah64_asethreats;
		if !(_x in fza_ah64_threattracking) then {
			fza_ah64_threattracking = fza_ah64_threattracking + [_x];
			if (_i iskindof "rhs_zsutank_base") then {
				["fza_ah64_zsu23_track", 2.3] spawn fza_fnc_playAudio;
			};
			if (_i iskindof "O_APC_Tracked_02_AA_F") then {
				["fza_ah64_bt_sa19", 1.6, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
			};
			if !((_i iskindof "rhs_zsutank_base") || (_i iskindof "O_APC_Tracked_02_AA_F") || (true == isVehicleRadarOn vehicle _i)) then {
				["fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
			};
			if !((_i iskindof "rhs_zsutank_base") || (_i iskindof "O_APC_Tracked_02_AA_F") || !(true == isVehicleRadarOn vehicle _i)) then {
				["fza_ah64_rdr_track", 0.1] spawn fza_fnc_playAudio;
			};
			if (_heli getVariable "fza_ah64_aseautopage" == 1) then {
				[_heli, 1, "ase"] call fza_fnc_mpdSetDisplay;
			};
		};
	};
} forEach fza_ah64_asethreats;