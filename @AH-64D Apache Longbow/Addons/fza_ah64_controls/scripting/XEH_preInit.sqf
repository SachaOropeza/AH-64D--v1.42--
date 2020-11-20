[
	"fza_ah64_rearmTime",
	"List",
	"Rearm time",
	["AH64D Apache", "Rearm"],
	[
		[0, 15, 30, 60, 120, 240],
		["Instant", "15 seconds", "30 seconds", "1 minute", "2 minutes", "4 minutes"],
		5
	],
	1
] call CBA_fnc_addSetting;

[
	"fza_ah64_headTrackAllowCursorMove",
	"CHECKBOX",
	"Allow cursor movement while in head tracking mode",
	["AH64D Apache", "Control"],
	[true],
	0
] call CBA_fnc_addSetting;

[
	"fza_ah64_headTrackSensitivity",
	"SLIDER",
	"Head tracking mode cursor sensitivity",
	["AH64D Apache", "Control"],
	[0, 1, 0.5, 2],
	0
] call CBA_fnc_addSetting;

[
	"fza_ah64_enableClickHelper",
	"CHECKBOX",
	"Enable Cockpit hints",
	["AH64D Apache", "UI"],
	[true]
] call CBA_fnc_addSetting;

[
	"fza_ah64_vanillaTargetingEnable",
	"CHECKBOX",
	"Show vanilla targeting information (restart needed)",
	["AH64D Apache", "UI"],
	[true],
	0,
	{
		profileNamespace setVariable ["fza_ah64_enableTargeting", [0, 1] select _this];
		saveProfileNamespace;
	}
] call CBA_fnc_addSetting;

fza_ah64_rocketweps14 = ["fza_m261_1234_zoneE", "fza_m261_14", "fza_m261_14_zoneA", "fza_m261_14_zoneB", "fza_m261_14_zoneE"];
fza_ah64_rocketweps23 = ["fza_m261_1234_zoneE", "fza_m261_23", "fza_m261_23_zoneC", "fza_m261_23_zoneD", "fza_m261_23_zoneE"];
fza_ah64_rocketweps1 = ["fza_m261_1", "fza_m261_1_zone1", "fza_m261_1_zone2", "fza_m261_1_zone3"];
fza_ah64_rocketweps2 = ["fza_m261_2", "fza_m261_2_zone1", "fza_m261_2_zone2", "fza_m261_2_zone3"];
fza_ah64_rocketweps3 = ["fza_m261_3", "fza_m261_3_zone1", "fza_m261_3_zone2", "fza_m261_3_zone3"];
fza_ah64_rocketweps4 = ["fza_m261_4", "fza_m261_4_zone1", "fza_m261_4_zone2", "fza_m261_4_zone3"];
fza_ah64_hellfireweps1 = ["fza_agm114_1_4", "fza_agm114_1_ul", "fza_agm114_1_ur", "fza_agm114_1_ll", "fza_agm114_1_lr"];
fza_ah64_hellfireweps2 = ["fza_agm114_2_4", "fza_agm114_2_ul", "fza_agm114_2_ur", "fza_agm114_2_ll", "fza_agm114_2_lr"];
fza_ah64_hellfireweps3 = ["fza_agm114_3_4", "fza_agm114_3_ul", "fza_agm114_3_ur", "fza_agm114_3_ll", "fza_agm114_3_lr"];
fza_ah64_hellfireweps4 = ["fza_agm114_4_4", "fza_agm114_4_ul", "fza_agm114_4_ur", "fza_agm114_4_ll", "fza_agm114_4_lr"];

fza_ah64_mousehorpos = 0.5;
fza_ah64_mousevertpos = 0.5;
fza_ah64_laserstate = 0;
fza_ah64_gunheat = 0;
fza_ah64_firekeypressed = 0;
fza_ah64_overallticker = 0;
fza_ah64_pf_daytime = 0;
fza_ah64_fire1arm = 0;
fza_ah64_fire2arm = 0;
fza_ah64_fireapuarm = 0;
fza_ah64_firepdisch = 0;
fza_ah64_firerdisch = 0;
fza_ah64_locktargstate = 0;
fza_ah64_irjammer = 0;
fza_ah64_rfjammer = 0;
fza_ah64_irjstate = 0;
fza_ah64_rfjstate = 0;
fza_ah64_irjon = 0;
fza_ah64_rfjon = 0;
fza_ah64_curflrln = 0;
fza_ah64_curchfln = 0;
fza_ah64_salvofired = 0;
fza_ah64_remtsel = 0;
fza_ah64_mynum = 0;
fza_ah64_lastdir = 0;
fza_ah64_dps = 0;
fza_ah64_slip = 0;
fza_ah64_wptimhr = 0;
fza_ah64_wptim = 0;
fza_ah64_tiron = false;
fza_ah64_skinlist = [];
fza_ah64_wptimtm = 0;
fza_ah64_wptimsm = 0;
fza_ah64_wpdistr = 0;
fza_ah64_tiron = false;
fza_ah64_bweff = ppEffectCreate["colorCorrections", 1499];
fza_ah64_bweff ppEffectAdjust[0, 0, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
fza_ah64_bweff ppEffectCommit 0;
fza_ah64_bweff ppEffectEnable false;
fza_ah64_targetlist = [];
fza_ah64_mycurrenttarget = objNull;
fza_ah64_burst = 1;
fza_ah64_pfzcache = ["none", "none", [], 0];
fza_ah64_mis_ir = ["M_R73_AA","M_Strela_AA","M_Igla_AA","M_Stinger_AA","M_Sidewinder_AA","fza_fim92","Missile_AGM_01_F","ammo_Missile_rim116","ammo_Missile_BIM9X","M_Air_AA","M_Air_AA_MI02","M_Air_AA_MI06","Missile_AA_04_F","Missile_AGM_02_F","Missile_AA_03_F","rhs_fim92_mag","rhs_mag_9k38_rocket","rhs_mag_9k32_rocket","M_Titan_AA"];
fza_ah64_mis_rf = ["M_9M311_AA","ammo_Missile_s750","ammo_Missile_rim162","ammo_Missile_mim145","ammo_Missile_AMRAAM_D","ammo_Missile_AMRAAM_C","ammo_Missile_AA_R77","ammo_Missile_AA_R73","M_Zephyr","M_Titan_AA_long","M_Titan_AA_static"];
fza_ah64_asethreats = [];
fza_ah64_threattracking = [];
fza_ah64_threatfiring = [];
fza_ah64_mycurrenttarget = objNull;
fza_ah64_pfz1 = [];
fza_ah64_pfz2 = [];
fza_ah64_pfz3 = [];
fza_ah64_pfz4 = [];
fza_ah64_pfz5 = [];
fza_ah64_pfz6 = [];
fza_ah64_pfz7 = [];
fza_ah64_pfz8 = [];
fza_ah64_fcrlist = [];
fza_ah64_tsdmap = 0;
fza_ah64_dispfcrlist = [];
fza_ah64_Cscopelist = [];
fza_ah64_pnvsdir = 0;
fza_ah64_pnvselev = 0.5;
fza_ah64_pylonelev = 0;
fza_ah64_pylonelev1 = 0;
fza_ah64_pylonelev2 = 0;
fza_ah64_pylonelev3 = 0;
fza_ah64_pylonelev4 = 0;
fza_ah64_headdir = 0;
fza_ah64_headelev = 0;
fza_ah64_cmpressed = 0;
fza_ah64_nohelpers = 1;
fza_ah64_hducolor = [0.1, 1, 0, 1];
fza_ah64_schedarray = [fza_fnc_weaponTurretAim, fza_fnc_targetingPNVSControl, fza_fnc_targetingSched, fza_fnc_avionicsSlipIndicator, fza_fnc_navigationWaypointEta, fza_fnc_damageRotors, fza_fnc_ihadssDraw, fza_fnc_targetingUpdate, fza_fnc_engineGovernor, fza_fnc_mpdUpdateDisplays]; //disabled fza_ah64_cpg_controls//
fza_ah64_mapfaker = addMissionEventHandler["Draw3D", {
	[0] call fza_fnc_coreScheduler;
}];
fza_ah64_ada_units = ["vme_PLA_DK9","VME_PLA_HQ64","VME_PLA_HQ7","VME_PLA_PGZ04","VME_PLA_EQ2050_AA","RHS_Stinger_AA_pod_Base","SAM_System_01_base_F","SAM_System_03_base_F",
"Radar_System_01_base_F","SAM_System_02_base_F","AAA_System_01_base_F","RHS_ZU23_base","rhs_Igla_AA_pod_Base","AA_01_base_F","Radar_System_02_base_F","SAM_System_04_base_F",
"RR_PGZ_04_ADS_SP_AA","VME_PLA_ADS_Base","I_LT_01_scout_F","I_LT_01_AA_F","O_APC_Tracked_02_AA_F","O_T_APC_Tracked_02_AA_ghex_F","rhs_zsutank_base","LOP_ZSU234_base",
"B_APC_Tracked_01_AA_F","B_T_APC_Tracked_01_AA_F"];


//EXPERIMENTAL - RUN ONCE FOR PLAYER ONLY

_asetracker = [player] execvm "\fza_ah64_controls\scripting\page_ase.sqf";
_ufdtracker = [player] execvm "\fza_ah64_controls\scripting\ufd.sqf";
_targetscanner = [] execvm "\fza_ah64_controls\scripting\fcr_longbow.sqf";