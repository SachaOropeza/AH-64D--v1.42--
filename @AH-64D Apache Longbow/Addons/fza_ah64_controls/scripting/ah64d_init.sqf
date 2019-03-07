///MASTER INIT FOR AH-64D///
_heli = _this select 0;
_heli selectweapon "fza_ma_safe";

// ENABLE/DISABLE CPG CONTROLS
if (isCopilotEnabled _heli) then {
    _heli enableCopilot true;
};

if(isNil "fza_ah64_skinlist") then {fza_ah64_skinlist = [];};

_skinset = 0;
if(!(_heli in fza_ah64_skinlist)) then
{
_setskin = [_heli,"\fza_ah64_us\tex\ex\b2_weather_co.paa"] execvm "\fza_ah64_controls\scripting\damage\skins.sqf";
_skinset = 1;
};

if(!(isNil "fza_ah64_noinit")) exitwith {};
if(!(player in _heli) && !(isNil "fza_ah64_noai")) exitwith {hintsilent "EXITING";};

if (isServer) then {_ahspawns = [_heli] execvm "\fza_ah64_controls\scripting\ahspawns.sqf";};

//default weight//
if((weightRTD _heli select 3) == 0) then
{
if(typeof _heli == "fza_ah64d_b2e") then
{
_heli setCustomWeightRTD 295;
};
};

/////INIT FUNCTIONS/////
if (isNil "fza_ah64_fx_init") then
{
	fza_ah64_fx_init = true;
	fza_ah64_fx_EH_Fired = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_bi_fired.sqf";

	fza_ah64_fx_30mm=compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\effects_30mm.sqf";

	fza_ah64_fx_rktmsl=compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\fx_rkt_msl.sqf";
	fza_ah64_rocketalign=compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\ffar_align2.sqf";
	fza_ah64_hellfirealign=compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\hellfire_align.sqf";
	fza_ah64_hiderockets = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_hidewpn.sqf";
	fza_ah64_systemdamage = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\damage\system_dam.sqf";
	fza_ah64_weapondamage = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\damage\weapon_dam.sqf";
	fza_ah64_processdamage = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\damage\processor_dam.sqf";
	fza_ah64_weaponfault = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\damage\gun_jam.sqf";
	fza_ah64_ldrfcall = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_ldrf.sqf";
	fza_ah64_mousepos = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_mousepos.sqf";
	fza_ah64_hmdihadss = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_ihadss.sqf";
	fza_ah64_fcrlongbow = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_fcr.sqf";
	fza_ah64_rocketweps14 = ["fza_m261_1234_zoneE","fza_m261_14","fza_m261_14_zoneA","fza_m261_14_zoneB","fza_m261_14_zoneE"];
	fza_ah64_rocketweps23 = ["fza_m261_1234_zoneE","fza_m261_23","fza_m261_23_zoneC","fza_m261_23_zoneD","fza_m261_23_zoneE"];
	fza_ah64_rocketweps1 = ["fza_m261_1","fza_m261_1_zone1","fza_m261_1_zone2","fza_m261_1_zone3"];
	fza_ah64_rocketweps2 = ["fza_m261_2","fza_m261_2_zone1","fza_m261_2_zone2","fza_m261_2_zone3"];
	fza_ah64_rocketweps3 = ["fza_m261_3","fza_m261_3_zone1","fza_m261_3_zone2","fza_m261_3_zone3"];
	fza_ah64_rocketweps4 = ["fza_m261_4","fza_m261_4_zone1","fza_m261_4_zone2","fza_m261_4_zone3"];
	fza_ah64_hellfireweps1 = ["fza_agm114_1_4","fza_agm114_1_ul","fza_agm114_1_ur","fza_agm114_1_ll","fza_agm114_1_lr"];
	fza_ah64_hellfireweps2 = ["fza_agm114_2_4","fza_agm114_2_ul","fza_agm114_2_ur","fza_agm114_2_ll","fza_agm114_2_lr"];
	fza_ah64_hellfireweps3 = ["fza_agm114_3_4","fza_agm114_3_ul","fza_agm114_3_ur","fza_agm114_3_ll","fza_agm114_3_lr"];
	fza_ah64_hellfireweps4 = ["fza_agm114_4_4","fza_agm114_4_ul","fza_agm114_4_ur","fza_agm114_4_ll","fza_agm114_4_lr"];

	///engines///
	if(isNil "fza_ah64_cem") then {fza_ah64_cem = true;};
	fza_ah64_estarted = false;
	if(isengineon _heli) then {fza_ah64_estarted = true;};
	/////////////
	fza_ah64_mousehorpos = 0.5;
	fza_ah64_mousevertpos = 0.5;
	fza_ah64_laserstate = 0;
	fza_ah64_gunheat = 0;
	fza_ah64_firekeypressed = 0;
	fza_ah64_fcrcscope = 0;
	fza_ah64_hmdfsmode = "trans";
	fza_ah64_overallticker = 0;
	fza_ah64_pf_daytime = 0;
	fza_ah64_pfsched = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_pfsched.sqf";
	fza_ah64_rotordam = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\damage\dam_rotor.sqf";
	fza_ah64_misguide = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_missileg.sqf";
	fza_ah64_misguidearray = [];
	fza_ah64_curmisguide = 0;
	fza_ah64_perframe = {
	uiNamespace setVariable ["fza_ah64_mapfake", (_this select 0)];
	((_this select 0) displayCtrl 3001) ctrlSetEventHandler ["Draw", '[_this] call fza_ah64_pfsched'];
	};
	fza_ah64_apuon = 0;
	fza_ah64_pwron = 0;
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
	fza_ah64_rocketsalvo = 1;
	fza_ah64_flarecount = 30;
	fza_ah64_chaffcount = 0;
	fza_ah64_cmsel = 0;
	fza_ah64_burst_limit = 10;
	fza_ah64_pl_mpd = "fuel";
	fza_ah64_pr_mpd = "eng";
	fza_ah64_ltype = "lobl.sqf";
	fza_ah64_hfmode = _heli;
	fza_ah64_remtsel = 0;
	fza_ah64_mynum = 0;
	fza_ah64_dps = 0;
	fza_ah64_slip = 0;
	fza_ah64_wptimhr = 0;
	fza_ah64_wptim = 0;
	fza_ah64_wptimtm = 0;
	fza_ah64_wptimsm = 0;
	fza_ah64_wpdistr = 0;
	if(isNil "fza_ah64_desiglist") then {fza_ah64_desiglist = [];};
	fza_ah64_setpb = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\fsetpitch.sqf";
	fza_ah64_getpb = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\frotate.sqf";
	fza_ah64_reldir = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_reldir.sqf";
	fza_ah64_digitthou = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_digitthou.sqf";
	fza_ah64_digithun = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_digithun.sqf";
	fza_ah64_digitten = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_digitten.sqf";
	fza_ah64_digit = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_digit.sqf";
	fza_ah64_turrets = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_turrets.sqf";
	fza_ah64_bladerot = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_bladerot.sqf"; //TEST REMOVE BLADE ROTS
	fza_ah64_pnvscontrol = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_pnvs.sqf";
	fza_ah64_worldtoscreen = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_click_this.sqf";
	fza_ah64_targetcycle = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_targeting.sqf";
	fza_ah64_wepactionswitch = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_was.sqf";
	fza_ah64_velvect = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_vvect.sqf";
	fza_ah64_slipcheck = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_slip.sqf";
	fza_ah64_timetowp = compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_timetowp.sqf";
	//fza_ah64_cpg_controls=compile preprocessFileLineNumbers "\fza_ah64_controls\scripting\calls\call_cpgai.sqf";
	if(isNil "fza_ah64_targetlist") then {fza_ah64_targetlist = [];};
	if(isNil "fza_ah64_mycurrenttarget") then {fza_ah64_mycurrenttarget = objNull;};
	fza_ah64_wheelbrake = 1;
	fza_ah64_burst = 1;
	fza_ah64_tsdsort = 0;
	fza_ah64_tsdsortarray = ["all"];
	fza_ah64_laser = 0;
	////target xfer///////
	fza_ah64_pfzcache = ["none","none",[],0];
	publicvariable "fza_ah64_pfzcache";
	if(isNil "fza_ah64_mis_ir") then {fza_ah64_mis_ir = ["M_R73_AA","M_Strela_AA","M_Igla_AA","M_Stinger_AA","M_Sidewinder_AA","fza_fim92"];};
	if(isNil "fza_ah64_mis_rf") then {fza_ah64_mis_rf = ["M_9M311_AA"];};
	fza_ah64_aseautopage = 0;
	fza_ah64_asethreats = [];
	fza_ah64_threattracking = [];
	fza_ah64_threatfiring = [];
	/////targeting//////
	fza_ah64_agmode = 0;
	fza_ah64_mycurrenttarget = objNull;
	fza_ah64_targlos = 0;
	fza_ah64_currentpfz = [];
	fza_ah64_pfz_count = 0;
	fza_ah64_pfz1 = [];
	fza_ah64_pfz2 = [];
	fza_ah64_pfz3 = [];
	fza_ah64_pfz4 = [];
	fza_ah64_pfz5 = [];
	fza_ah64_pfz6 = [];
	fza_ah64_pfz7 = [];
	fza_ah64_pfz8 = [];
	fza_ah64_curwpnum = 0;
	fza_ah64_curwp = [0,0,0];
	fza_ah64_waypointdata = [getpos _heli];
	fza_ah64_wpmarkers = [];
	fza_ah64_rangesetting = 0.001; //1km
	fza_ah64_fcrstate = 0;
	fza_ah64_fcrlist = [];
	fza_ah64_tsddisptargs = [];
	fza_ah64_tsdmode = "nav";
	fza_ah64_tsdmap = 0;
	fza_ah64_dispfcrlist = [];
	//turrets//
	fza_ah64_estate = 0;
	fza_ah64_turdir = 0;
	fza_ah64_turelev = 0;
	fza_ah64_pnvsdir = 0;
	fza_ah64_pnvselev = 0.5;
	fza_ah64_pylonelev = 0;
	fza_ah64_pylonelev1 = 0;
	fza_ah64_pylonelev2 = 0;
	fza_ah64_pylonelev3 = 0;
	fza_ah64_pylonelev4 = 0;
	fza_ah64_guncontrol = 3;
	fza_ah64_headdir = 0;
	fza_ah64_headelev = 0;
	fza_ah64_head1dir = 0;
	fza_ah64_head1elev = 0;
	fza_ah64_cmpressed = 0;
	fza_ah64_nohelpers = 1;
	fza_ah64_hducolor = [0.1, 1, 0, 1];
	fza_ah64_schedarray = [fza_ah64_turrets,fza_ah64_pnvscontrol,fza_ah64_worldtoscreen,fza_ah64_targetcycle,fza_ah64_slipcheck,fza_ah64_timetowp,fza_ah64_rotordam,fza_ah64_ldrfcall,fza_ah64_hmdihadss,fza_ah64_bladerot]; //disabled fza_ah64_cpg_controls//
	fza_ah64_asemisarray = [];
	if(isNil "fza_ah64_pfsstate") then {fza_ah64_mapfaker = addMissionEventHandler ["Draw3D", {[0] call fza_ah64_pfsched;}]; fza_ah64_pfsstate = true;};

//EXPERIMENTAL - RUN ONCE FOR PLAYER ONLY//
_weapontracker = [player] execvm "\fza_ah64_controls\scripting\page_wpn.sqf";
_wcatracker = [player] execvm "\fza_ah64_controls\scripting\page_wca.sqf";
_flttracker = [player] execvm "\fza_ah64_controls\scripting\page_flt.sqf";
_engtracker = [player] execvm "\fza_ah64_controls\scripting\page_eng.sqf";
_asetracker = [player] execvm "\fza_ah64_controls\scripting\page_ase.sqf";
_ufdtracker = [player] execvm "\fza_ah64_controls\scripting\ufd.sqf";
//_targettracker1 = [_heli] execvm "\fza_ah64_controls\scripting\targeting.sqf";
//_targetscanner = [player] execvm "\fza_ah64_controls\scripting\fcr_longbow.sqf";
_tsdfcr = [player] execvm "\fza_ah64_controls\scripting\tsd_fcr.sqf";
///////////////////////////////////////////

};

//gen//
_enginetracker = [_heli] execvm "\fza_ah64_controls\scripting\func_engines.sqf";
_aiturrets = [_heli] execvm "\fza_ah64_controls\scripting\turrets.sqf";
_blades = [_heli] execvm "\fza_ah64_controls\scripting\bladerot.sqf";
//_arming = [_heli] execvm "\fza_ah64_controls\arming\arming.sqf";
//if(!(isMultiplayer)) then {_savetracker = player execvm "\fza_ah64_controls\scripting\savetracker.sqf";};
if(isnil "fza_ah64_tiron") then {fza_ah64_tiron = false;};

if(typeOf _heli == "fza_ah64d_b2e") then
{
	[_heli] execvm "\fza_ah64_controls\scripting\fcr_animate.sqf";
};

_rail1 = 0;
_rail2 = 0;
_rail3 = 0;
_rail4 = 0;
_pod1 = 0;
_pod2 = 0;
_pod3 = 0;
_pod4 = 0;
_pod1rocket = 0;
_pod1rocket1 = 0;
_pod1rocket2 = 0;
_pod1rocket3 = 0;
_pod2rocket = 0;
_pod2rocket1 = 0;
_pod2rocket2 = 0;
_pod2rocket3 = 0;
_pod3rocket = 0;
_pod3rocket1 = 0;
_pod3rocket2 = 0;
_pod3rocket3 = 0;
_pod4rocket = 0;
_pod4rocket1 = 0;
_pod4rocket2 = 0;
_pod4rocket3 = 0;
_pod14rocket1 = 0;
_pod14rocket2 = 0;
_pod14rocket3 = 0;
_pod23rocket1 = 0;
_pod23rocket2 = 0;
_pod23rocket3 = 0;
_beg1 = 0;
_beg2 = 0;
_beg3 = 0;
_beg4 = 0;
_end1 = 0;
_end2 = 0;
_end3 = 0;
_end4 = 0;
_num = 227;
fza_ah64_114sc = [];

while {alive _heli} do
{

_mags = magazines _heli;
_magsp = _heli magazinesturret [-1];

if(damage _heli > 0.001) then
{
_skinset = 0;
};

if(damage _heli < 0.001) then
{
//////light//////
_heli setobjecttexture [1202,""];
_heli setobjecttexture [1203,""];
_heli setobjecttexture [1204,""];
_heli setobjecttexture [1205,""];
_heli setobjecttexture [1206,""];
_heli setobjecttexture [1207,""];
_heli setobjecttexture [1208,""];
_heli setobjecttexture [1209,""];
_heli setobjecttexture [1210,""];
_heli setobjecttexture [1211,""];
_heli setobjecttexture [1212,""];
_heli setobjecttexture [1213,""];
_heli setobjecttexture [1214,""];
_heli setobjecttexture [1215,""];
_heli setobjecttexture [1216,""];
_heli setobjecttexture [1217,""];
_heli setobjecttexture [1218,""];
_heli setobjecttexture [1219,""];
_heli setobjecttexture [1220,""];
_heli setobjecttexture [1221,""];
_heli setobjecttexture [1222,""];
///////medium//////////
_heli setobjecttexture [1223,""];
_heli setobjecttexture [1224,""];
_heli setobjecttexture [1225,""];
_heli setobjecttexture [1226,""];
_heli setobjecttexture [1227,""];
_heli setobjecttexture [1228,""];
_heli setobjecttexture [1229,""];
_heli setobjecttexture [1230,""];
_heli setobjecttexture [1231,""];
_heli setobjecttexture [1232,""];
_heli setobjecttexture [1233,""];
_heli setobjecttexture [1234,""];
_heli setobjecttexture [1235,""];
_heli setobjecttexture [1236,""];
_heli setobjecttexture [1237,""];
_heli setobjecttexture [1238,""];
_heli setobjecttexture [1239,""];
_heli setobjecttexture [1240,""];
_heli setobjecttexture [1241,""];
_heli setobjecttexture [1242,""];
_heli setobjecttexture [1243,""];
//////catastrophic/////
_heli setobjecttexture [1251,""];
if(_skinset == 0) then
{
	_skinselector = 0;
	while {(_skinselector < count fza_ah64_skinlist)} do
	{
		if(fza_ah64_skinlist select _skinselector == _heli) then
		{
			_setskin = [_heli,(fza_ah64_skinlist select (_skinselector + 1))] execvm "\fza_ah64_controls\scripting\damage\skins.sqf";
			_selector = count fza_ah64_skinlist;
		};
		_skinselector = _skinselector + 2;
	};
_skinset = 1;
};
if(local _heli || player == gunner _heli) then
{
//////light////////
_heli removemagazinesturret ["fza_ah64_dam_fuse",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_nose",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_leng",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_reng",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_lfab",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_rfab",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_lwing",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_rwing",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_tailboom",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_vtail",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_hstab",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_pylon1",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_pylon2",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_pylon3",[-1]];
_heli removemagazinesturret ["fza_ah64_dam_pylon4",[-1]];
//////medium//////
_heli removemagazinesturret ["fza_ah64_mdam_fuse",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_nose",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_leng",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_reng",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_lfab",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_rfab",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_lwing",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_rwing",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_tailboom",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_vtail",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_hstab",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_pylon1",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_pylon2",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_pylon3",[-1]];
_heli removemagazinesturret ["fza_ah64_mdam_pylon4",[-1]];
//////catastrophic////
_heli removemagazinesturret ["fza_ah64_cdam_tailboom",[-1]];
//////systems/////
_heli removemagazinesturret ["fza_ah64_tailrotor_dam",[-1]];
_heli removemagazinesturret ["fza_ah64_tailrotor_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_rotor_dam",[-1]];
_heli removemagazinesturret ["fza_ah64_rotor_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_tads_dam",[-1]];
_heli removemagazinesturret ["fza_ah64_tads_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_pnvs_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_gun_jam",[-1]];
_heli removemagazinesturret ["fza_ah64_gun_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_trans_dam",[-1]];
_heli removemagazinesturret ["fza_ah64_trans_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_fcr_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_fwd_leak",[-1]];
_heli removemagazinesturret ["fza_ah64_aft_leak",[-1]];
_heli removemagazinesturret ["fza_ah64_rdp_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_ldp_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_rwp_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_lwp_fail",[-1]];
_heli removemagazinesturret ["fza_ah64_irjamfail",[-1]];
_heli removemagazinesturret ["fza_ah64_rfjamfail",[-1]];
_heli removemagazinesturret ["fza_ah64_firepdisch",[-1]];
_heli removemagazinesturret ["fza_ah64_firerdisch",[-1]];
};
};

if("fza_ah64_dam_fuse" in _magsp) then {_heli setobjecttexture [1202,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_nose" in _magsp) then {_heli setobjecttexture [1203,"\fza_ah64_us\tex\dam\ldam.paa"]; _heli setobjecttexture [1209,"\fza_ah64_us\tex\dam\ldam.paa"]; _heli setobjecttexture [1210,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_leng" in _magsp) then {_heli setobjecttexture [1206,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_reng" in _magsp) then {_heli setobjecttexture [1217,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_lfab" in _magsp) then {_heli setobjecttexture [1205,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_rfab" in _magsp) then {_heli setobjecttexture [1216,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_lwing" in _magsp) then {_heli setobjecttexture [1208,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_rwing" in _magsp) then {_heli setobjecttexture [1219,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_tailboom" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1221,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_vtail" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1222,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_hstab" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1204,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_tads_dam" in _magsp) then {_heli setobjecttexture [1220,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_pylon1" in _magsp) then {_heli setobjecttexture [1212,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_pylon2" in _magsp) then {_heli setobjecttexture [1213,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_pylon3" in _magsp) then {_heli setobjecttexture [1214,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_dam_pylon4" in _magsp) then {_heli setobjecttexture [1215,"\fza_ah64_us\tex\dam\ldam.paa"];};
if("fza_ah64_pnvs_fail" in _magsp) then {_heli setobjecttexture [1211,"\fza_ah64_us\tex\dam\ldam.paa"];};

if("fza_ah64_mdam_fuse" in _magsp) then {_heli setobjecttexture [1223,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_nose" in _magsp) then {_heli setobjecttexture [1224,"\fza_ah64_us\tex\dam\mdam.paa"]; _heli setobjecttexture [1230,"\fza_ah64_us\tex\dam\mdam.paa"]; _heli setobjecttexture [1231,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_leng" in _magsp) then {_heli setobjecttexture [1227,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_reng" in _magsp) then {_heli setobjecttexture [1238,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_lfab" in _magsp) then {_heli setobjecttexture [1226,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_rfab" in _magsp) then {_heli setobjecttexture [1237,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_lwing" in _magsp) then {_heli setobjecttexture [1229,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_rwing" in _magsp) then {_heli setobjecttexture [1240,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_tailboom" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1242,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_vtail" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1243,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_hstab" in _magsp && !("fza_ah64_cdam_tailboom" in _magsp)) then {_heli setobjecttexture [1225,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_tads_fail" in _magsp) then {_heli setobjecttexture [1241,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_pylon1" in _magsp) then {_heli setobjecttexture [1233,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_pylon2" in _magsp) then {_heli setobjecttexture [1234,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_pylon3" in _magsp) then {_heli setobjecttexture [1235,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_mdam_pylon4" in _magsp) then {_heli setobjecttexture [1236,"\fza_ah64_us\tex\dam\mdam.paa"];};
if("fza_ah64_pnvs_fail" in _magsp) then {_heli setobjecttexture [1232,"\fza_ah64_us\tex\dam\mdam.paa"];};

if("fza_ah64_cdam_tailboom" in _magsp) then
{
_heli setobjecttexture [1221,""];
_heli setobjecttexture [1222,""];
_heli setobjecttexture [1204,""];
_heli setobjecttexture [1242,""];
_heli setobjecttexture [1243,""];
_heli setobjecttexture [1225,""];
//model//
_heli setobjecttexture [1153,""];
_heli setobjecttexture [1181,""];
_heli setobjecttexture [1183,""];
_heli setobjecttexture [1184,""];
_heli setobjecttexture [1251,"\fza_ah64_us\tex\dam\metdam_co.paa"];
_skinset = 0;
};

if(_heli hasweapon "fza_agm114_1_4" || _heli hasweapon "fza_agm114_2_4" || _heli hasweapon "fza_agm114_3_4" || _heli hasweapon "fza_agm114_4_4" || _heli hasweapon "fza_agm114_14_8" || _heli hasweapon "fza_agm114_23_8" || _heli hasweapon "fza_agm114_16" || _heli hasweapon "fza_agm114_1_ul"|| _heli hasweapon "fza_agm114_1_ur"|| _heli hasweapon "fza_agm114_1_ll"|| _heli hasweapon "fza_agm114_1_lr" || _heli hasweapon "fza_agm114_2_ul"|| _heli hasweapon "fza_agm114_2_ur"|| _heli hasweapon "fza_agm114_2_ll"|| _heli hasweapon "fza_agm114_2_lr" || _heli hasweapon "fza_agm114_3_ul"|| _heli hasweapon "fza_agm114_3_ur"|| _heli hasweapon "fza_agm114_3_ll"|| _heli hasweapon "fza_agm114_3_lr" || _heli hasweapon "fza_agm114_4_ul"|| _heli hasweapon "fza_agm114_4_ur"|| _heli hasweapon "fza_agm114_4_ll"|| _heli hasweapon "fza_agm114_4_lr") then
{
if(_heli hasweapon "fza_agm114_1_4") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_1_4";
	_r1hf1 = 228;
	_r1hf2 = 229;
	_r1hf3 = 230;
	_r1hf4 = 231;
	if("fza_agm114k_1_4" in _mags || "fza_agm114m_1_4" in _mags || "fza_agm114n_1_4" in _mags || ("fza_agm114a_1_4" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_1_4" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf1 = 232; _r1hf2 = 233; _r1hf3 = 234; _r1hf4 = 235;};
	if(_amount > 3) then {_heli setobjecttexture [_r1hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r1hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r1hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 4) then {_heli setobjecttexture [_r1hf1,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r1hf2,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r1hf3,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf4,""]; _heli setobjecttexture [235,""];};
};
if(_heli hasweapon "fza_agm114_1_ul") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_1_ul";
	_r1hf1 = 228;
	if("fza_agm114k_1_ul" in _mags || "fza_agm114m_1_ul" in _mags || "fza_agm114n_1_ul" in _mags || ("fza_agm114a_1_ul" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_1_ul" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf1 = 232;};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf1,""]; _heli setobjecttexture [232,""];};
};
if(_heli hasweapon "fza_agm114_1_ur") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_1_ur";
	_r1hf2 = 229;
	if("fza_agm114k_1_ur" in _mags || "fza_agm114m_1_ur" in _mags || "fza_agm114n_1_ur" in _mags || ("fza_agm114a_1_ur" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_1_ur" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf2 = 233;};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf2,""]; _heli setobjecttexture [233,""];};
};
if(_heli hasweapon "fza_agm114_1_ll") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_1_ll";
	_r1hf3 = 230;
	if("fza_agm114k_1_ll" in _mags || "fza_agm114m_1_ll" in _mags || "fza_agm114n_1_ll" in _mags || ("fza_agm114a_1_ll" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_1_ll" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf3 = 234;};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf3,""]; _heli setobjecttexture [234,""];};
};
if(_heli hasweapon "fza_agm114_1_lr") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_1_lr";
	_r1hf4 = 231;
	if("fza_agm114k_1_lr" in _mags || "fza_agm114m_1_lr" in _mags || "fza_agm114n_1_lr" in _mags || ("fza_agm114a_1_lr" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_1_lr" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf4 = 235;};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf4,""]; _heli setobjecttexture [235,""];};
};
if(_heli hasweapon "fza_agm114_2_4") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_2_4";
	_r2hf1 = 236;
	_r2hf2 = 237;
	_r2hf3 = 238;
	_r2hf4 = 239;
	if("fza_agm114k_2_4" in _mags || "fza_agm114m_2_4" in _mags || "fza_agm114n_2_4" in _mags || ("fza_agm114a_2_4" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_2_4" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf1 = 240; _r2hf2 = 241; _r2hf3 = 242; _r2hf4 = 243;};
	if(_amount > 3) then {_heli setobjecttexture [_r2hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r2hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r2hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 4) then {_heli setobjecttexture [_r2hf1,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r2hf2,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r2hf3,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf4,""]; _heli setobjecttexture [243,""];};
};
if(_heli hasweapon "fza_agm114_2_ul") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_2_ul";
	_r2hf1 = 236;
	if("fza_agm114k_2_ul" in _mags || "fza_agm114m_2_ul" in _mags || "fza_agm114n_2_ul" in _mags || ("fza_agm114a_2_ul" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_2_ul" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf1 = 240;};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf1,""]; _heli setobjecttexture [240,""];};
};
if(_heli hasweapon "fza_agm114_2_ur") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_2_ur";
	_r2hf2 = 237;
	if("fza_agm114k_2_ur" in _mags || "fza_agm114m_2_ur" in _mags || "fza_agm114n_2_ur" in _mags || ("fza_agm114a_2_ur" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_2_ur" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf2 = 241;};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf2,""]; _heli setobjecttexture [241,""];};
};
if(_heli hasweapon "fza_agm114_2_ll") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_2_ll";
	_r2hf3 = 238;
	if("fza_agm114k_2_ll" in _mags || "fza_agm114m_2_ll" in _mags || "fza_agm114n_2_ll" in _mags || ("fza_agm114a_2_ll" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_2_ll" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf3 = 242;};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf3,""]; _heli setobjecttexture [242,""];};
};
if(_heli hasweapon "fza_agm114_2_lr") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_2_lr";
	_r2hf4 = 239;
	if("fza_agm114k_2_lr" in _mags || "fza_agm114m_2_lr" in _mags || "fza_agm114n_2_lr" in _mags || ("fza_agm114a_2_lr" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_2_lr" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf4 = 243;};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf4,""]; _heli setobjecttexture [243,""];};
};
if(_heli hasweapon "fza_agm114_3_4") then
{
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_3_4";
	_r3hf1 = 244;
	_r3hf2 = 245;
	_r3hf3 = 246;
	_r3hf4 = 247;
	if("fza_agm114k_3_4" in _mags || "fza_agm114m_3_4" in _mags || "fza_agm114n_3_4" in _mags || ("fza_agm114a_3_4" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_3_4" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r3hf1 = 248; _r3hf2 = 249; _r3hf3 = 250; _r3hf4 = 251;};
	if(_amount > 3) then {_heli setobjecttexture [_r3hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r3hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r3hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r3hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 4) then {_heli setobjecttexture [_r3hf1,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r3hf2,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r3hf3,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r3hf4,""]; _heli setobjecttexture [251,""];};
};
if(_heli hasweapon "fza_agm114_3_ul") then
{
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_3_ul";
	_r3hf1 = 244;
	if("fza_agm114k_3_ul" in _mags || "fza_agm114m_3_ul" in _mags || "fza_agm114n_3_ul" in _mags || ("fza_agm114a_3_ul" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_3_ul" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r3hf1 = 248;};
	if(_amount > 0) then {_heli setobjecttexture [_r3hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r3hf1,""]; _heli setobjecttexture [248,""];};
};
if(_heli hasweapon "fza_agm114_3_ur") then
{
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_3_ur";
	_r3hf2 = 245;
	if("fza_agm114k_3_ur" in _mags || "fza_agm114m_3_ur" in _mags || "fza_agm114n_3_ur" in _mags || ("fza_agm114a_3_ur" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_3_ur" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r3hf2 = 249;};
	if(_amount > 0) then {_heli setobjecttexture [_r3hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r3hf2,""]; _heli setobjecttexture [249,""];};
};
if(_heli hasweapon "fza_agm114_3_ll") then
{
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_3_ll";
	_r3hf3 = 246;
	if("fza_agm114k_3_ll" in _mags || "fza_agm114m_3_ll" in _mags || "fza_agm114n_3_ll" in _mags || ("fza_agm114a_3_ll" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_3_ll" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r3hf3 = 250;};
	if(_amount > 0) then {_heli setobjecttexture [_r3hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r3hf3,""]; _heli setobjecttexture [250,""];};
};
if(_heli hasweapon "fza_agm114_3_lr") then
{
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_3_lr";
	_r3hf4 = 247;
	if("fza_agm114k_3_lr" in _mags || "fza_agm114m_3_lr" in _mags || "fza_agm114n_3_lr" in _mags || ("fza_agm114a_3_lr" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_3_lr" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r3hf4 = 251;};
	if(_amount > 0) then {_heli setobjecttexture [_r3hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r3hf4,""]; _heli setobjecttexture [251,""];};
};
if(_heli hasweapon "fza_agm114_4_4") then
{
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_4_4";
	_r4hf1 = 252;
	_r4hf2 = 253;
	_r4hf3 = 254;
	_r4hf4 = 255;
	if("fza_agm114k_4_4" in _mags || "fza_agm114m_4_4" in _mags || "fza_agm114n_4_4" in _mags || ("fza_agm114a_4_4" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_4_4" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r4hf1 = 256; _r4hf2 = 257; _r4hf3 = 258; _r4hf4 = 259;};
	if(_amount > 3) then {_heli setobjecttexture [_r4hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r4hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r4hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r4hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 4) then {_heli setobjecttexture [_r4hf1,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r4hf2,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r4hf3,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r4hf4,""]; _heli setobjecttexture [259,""];};
};
if(_heli hasweapon "fza_agm114_4_ul") then
{
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_4_ul";
	_r4hf1 = 252;
	if("fza_agm114k_4_ul" in _mags || "fza_agm114m_4_ul" in _mags || "fza_agm114n_4_ul" in _mags || ("fza_agm114a_4_ul" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_4_ul" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r4hf1 = 256;};
	if(_amount > 0) then {_heli setobjecttexture [_r4hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r4hf1,""]; _heli setobjecttexture [256,""];};
};
if(_heli hasweapon "fza_agm114_4_ur") then
{
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_4_ur";
	_r4hf2 = 253;
	if("fza_agm114k_4_ur" in _mags || "fza_agm114m_4_ur" in _mags || "fza_agm114n_4_ur" in _mags || ("fza_agm114a_4_ur" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_4_ur" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r4hf2 = 257;};
	if(_amount > 0) then {_heli setobjecttexture [_r4hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r4hf2,""]; _heli setobjecttexture [257,""];};
};
if(_heli hasweapon "fza_agm114_4_ll") then
{
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_4_ll";
	_r4hf3 = 254;
	if("fza_agm114k_4_ll" in _mags || "fza_agm114m_4_ll" in _mags || "fza_agm114n_4_ll" in _mags || ("fza_agm114a_4_ll" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_4_ll" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r4hf3 = 258;};
	if(_amount > 0) then {_heli setobjecttexture [_r4hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r4hf3,""]; _heli setobjecttexture [258,""];};
};
if(_heli hasweapon "fza_agm114_4_lr") then
{
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_4_lr";
	_r4hf4 = 255;
	if("fza_agm114k_4_lr" in _mags || "fza_agm114m_4_lr" in _mags || "fza_agm114n_4_lr" in _mags || ("fza_agm114a_4_lr" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_4_lr" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r4hf4 = 259;};
	if(_amount > 0) then {_heli setobjecttexture [_r4hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 1) then {_heli setobjecttexture [_r4hf4,""]; _heli setobjecttexture [259,""];};
};
if(_heli hasweapon "fza_agm114_23_8") then
{
	_heli setobjecttexture [1117,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1118,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_23_8";
	_r2hf1 = 236;
	_r2hf2 = 237;
	_r2hf3 = 238;
	_r2hf4 = 239;
	_r3hf1 = 244;
	_r3hf2 = 245;
	_r3hf3 = 246;
	_r3hf4 = 247;
	if("fza_agm114k_23_8" in _mags || "fza_agm114m_23_8" in _mags || "fza_agm114n_23_8" in _mags || ("fza_agm114a_23_8" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_23_8" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r2hf1 = 240; _r2hf2 = 241; _r2hf3 = 242; _r2hf4 = 243; _r3hf1 = 248; _r3hf2 = 249; _r3hf3 = 250; _r3hf4 = 251;};
	if(_amount > 7) then {_heli setobjecttexture [_r3hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 6) then {_heli setobjecttexture [_r2hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 5) then {_heli setobjecttexture [_r3hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 4) then {_heli setobjecttexture [_r2hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 3) then {_heli setobjecttexture [_r3hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r2hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r3hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r2hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 8) then {_heli setobjecttexture [_r3hf1,""];};
	if(_amount < 7) then {_heli setobjecttexture [_r2hf1,""];};
	if(_amount < 6) then {_heli setobjecttexture [_r3hf2,""];};
	if(_amount < 5) then {_heli setobjecttexture [_r2hf2,""];};
	if(_amount < 4) then {_heli setobjecttexture [_r3hf3,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r2hf3,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r3hf4,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r2hf4,""]; _heli setobjecttexture [243,""];};
};
if(_heli hasweapon "fza_agm114_14_8") then
{
	_heli setobjecttexture [1116,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1119,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_agm114_14_8";
	_r1hf1 = 228;
	_r1hf2 = 229;
	_r1hf3 = 230;
	_r1hf4 = 231;
	_r4hf1 = 252;
	_r4hf2 = 253;
	_r4hf3 = 254;
	_r4hf4 = 255;
	if("fza_agm114k_14_8" in _mags || "fza_agm114m_14_8" in _mags || "fza_agm114n_14_8" in _mags || ("fza_agm114a_14_8" in _mags && !(_heli iskindof "fza_ah64a_l")) || ("fza_agm114c_14_8" in _mags && !(_heli iskindof "fza_ah64a_l"))) then {_r1hf1 = 232; _r1hf2 = 233; _r1hf3 = 234; _r1hf4 = 235; _r4hf1 = 256; _r4hf2 = 257; _r4hf3 = 258; _r4hf4 = 259;};
	if(_amount > 7) then {_heli setobjecttexture [_r4hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 6) then {_heli setobjecttexture [_r1hf1,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 5) then {_heli setobjecttexture [_r4hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 4) then {_heli setobjecttexture [_r1hf2,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 3) then {_heli setobjecttexture [_r4hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [_r1hf3,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [_r4hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [_r1hf4,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 8) then {_heli setobjecttexture [_r4hf1,""];};
	if(_amount < 7) then {_heli setobjecttexture [_r1hf1,""];};
	if(_amount < 6) then {_heli setobjecttexture [_r4hf2,""];};
	if(_amount < 5) then {_heli setobjecttexture [_r1hf2,""];};
	if(_amount < 4) then {_heli setobjecttexture [_r4hf3,""];};
	if(_amount < 3) then {_heli setobjecttexture [_r1hf3,""];};
	if(_amount < 2) then {_heli setobjecttexture [_r4hf4,""];};
	if(_amount < 1) then {_heli setobjecttexture [_r1hf4,""]; _heli setobjecttexture [235,""];};
};
} else {
	_heli setobjecttexture [1116,""];
	_heli setobjecttexture [1117,""];
	_heli setobjecttexture [1118,""];
	_heli setobjecttexture [1119,""];
	_heli setobjecttexture [228,""];
	_heli setobjecttexture [229,""];
	_heli setobjecttexture [230,""];
	_heli setobjecttexture [231,""];
	_heli setobjecttexture [232,""];
	_heli setobjecttexture [233,""];
	_heli setobjecttexture [234,""];
	_heli setobjecttexture [235,""];
	_heli setobjecttexture [236,""];
	_heli setobjecttexture [237,""];
	_heli setobjecttexture [238,""];
	_heli setobjecttexture [239,""];
	_heli setobjecttexture [240,""];
	_heli setobjecttexture [241,""];
	_heli setobjecttexture [242,""];
	_heli setobjecttexture [243,""];
	_heli setobjecttexture [244,""];
	_heli setobjecttexture [245,""];
	_heli setobjecttexture [246,""];
	_heli setobjecttexture [247,""];
	_heli setobjecttexture [248,""];
	_heli setobjecttexture [249,""];
	_heli setobjecttexture [250,""];
	_heli setobjecttexture [251,""];
	_heli setobjecttexture [252,""];
	_heli setobjecttexture [253,""];
	_heli setobjecttexture [254,""];
	_heli setobjecttexture [255,""];
	_heli setobjecttexture [256,""];
	_heli setobjecttexture [257,""];
	_heli setobjecttexture [258,""];
	_heli setobjecttexture [259,""];

};
if(_heli hasweapon "fza_m261_1" || _heli hasweapon "fza_m261_1_zone1" || _heli hasweapon "fza_m261_1_zone2" || _heli hasweapon "fza_m261_1_zone3" || _heli hasweapon "fza_m261_2"  || _heli hasweapon "fza_m261_2_zone1" || _heli hasweapon "fza_m261_2_zone2" || _heli hasweapon "fza_m261_2_zone3" || _heli hasweapon "fza_m261_3_zone1" || _heli hasweapon "fza_m261_3_zone2" || _heli hasweapon "fza_m261_3_zone3" || _heli hasweapon "fza_m261_3" || _heli hasweapon "fza_m261_4" || _heli hasweapon "fza_m261_4_zone1" || _heli hasweapon "fza_m261_4_zone2" || _heli hasweapon "fza_m261_4_zone3" || _heli hasweapon "fza_m261_14" || _heli hasweapon "fza_m261_23" || _heli hasweapon "fza_m261_14_zoneA" || _heli hasweapon "fza_m261_14_zoneB" || _heli hasweapon "fza_m261_14_zoneE" || _heli hasweapon "fza_m261_23_zoneC" || _heli hasweapon "fza_m261_23_zoneD" || _heli hasweapon "fza_m261_23_zoneE" || _heli hasweapon "fza_m261_1234_zoneE") then
{
_num = 227;

if(_heli hasweapon "fza_m261_1") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_1";
	_rktarray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
	_fullcount = 19;
	_beg1 = 0;
	_end1 = 19;
	if("fza_m261_m229_1_19" in _mags) then
	{
		_rktarray = [19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37];
		_beg1 = 19;
		_end1 = 38;
	};
	if("fza_m261_m261_1_19" in _mags) then
	{
		_rktarray = [38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56];
		_beg1 = 38;
		_end1 = 57;
	};
	if("fza_m261_m255_1_19" in _mags) then
	{
		_rktarray = [38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56];
		_beg1 = 38;
		_end1 = 57;
	};
	if("fza_m261_m257_1_19" in _mags) then
	{
		_rktarray = [38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56];
		_beg1 = 38;
		_end1 = 57;
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 19) then
			{
				_heli setobjecttexture [(_rktarray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _rktarray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [19,""];
		_heli setobjecttexture [38,""];
	};
};

if(_heli hasweapon "fza_m261_1_zone1") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_1_zone1";
	_fullcount = 12;
	_zonearray = [3,4,7,8,11,12,13,14,15,16,17,18];
	if("fza_m261_m229_1_zone1_12" in _mags) then
	{
		_zonearray = [22,23,26,27,30,31,32,33,34,35,36,37];
	};
	if("fza_m261_m261_1_zone1_12" in _mags) then
	{
		_zonearray = [41,42,45,46,49,50,51,52,53,54,55,56];
	};
	if("fza_m261_m255_1_zone1_12" in _mags) then
	{
		_zonearray = [41,42,45,46,49,50,51,52,53,54,55,56];
	};
	if("fza_m261_m257_1_zone1_12" in _mags) then
	{
		_zonearray = [41,42,45,46,49,50,51,52,53,54,55,56];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 12) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [22,""];
		_heli setobjecttexture [41,""];
	};
};

if(_heli hasweapon "fza_m261_1_zone2") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_1_zone2";
	_fullcount = 4;
	_zonearray = [5,6,9,10];
	if("fza_m261_m229_1_zone2_4" in _mags) then
	{
		_zonearray = [24,25,28,29];
	};
	if("fza_m261_m261_1_zone2_4" in _mags) then
	{
		_zonearray = [43,44,47,48];
	};
	if("fza_m261_m255_1_zone2_4" in _mags) then
	{
		_zonearray = [43,44,47,48];
	};
	if("fza_m261_m257_1_zone2_4" in _mags) then
	{
		_zonearray = [43,44,47,48];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 4) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [24,""];
		_heli setobjecttexture [43,""];
	};
};

if(_heli hasweapon "fza_m261_1_zone3") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_1_zone3";
	_fullcount = 3;
	_zonearray = [0,1,2];
	if("fza_m261_m229_1_zone3_3" in _mags) then
	{
		_zonearray = [19,20,21];
	};
	if("fza_m261_m261_1_zone3_3" in _mags) then
	{
		_zonearray = [38,39,40];
	};
	if("fza_m261_m255_1_zone3_3" in _mags) then
	{
		_zonearray = [38,39,40];
	};
	if("fza_m261_m257_1_zone3_3" in _mags) then
	{
		_zonearray = [38,39,40];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 3) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [19,""];
		_heli setobjecttexture [38,""];
	};
};

if(_heli hasweapon "fza_m261_2") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_2";
	_fullcount = 19;
	_beg2 = 57;
	_end2 = 76;
	if("fza_m261_m229_2_19" in _mags) then
	{
		_beg2 = 76;
		_end2 = 95;
	};
	if("fza_m261_m261_2_19" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
	};
	if("fza_m261_m255_2_19" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
	};
	if("fza_m261_m257_2_19" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
	};
	if(_pod2rocket <= 0) then {_pod2rocket = _beg2;};
	if(_amount == _fullcount && ((_pod2rocket - _beg2) <= _fullcount)) then
	{
		if (_pod2rocket < _end2) then
		{
		_heli setobjecttexture [_pod2rocket,"\fza_ah64_us\tex\wpn1_co.paa"];
		_pod2rocket = _pod2rocket + 1;
		};
	};
	if(_amount < _fullcount) then
	{
		if ((_pod2rocket - _beg2) > ((_amount)-1)) then
		{
		_heli setobjecttexture [_pod2rocket,""];
		_pod2rocket = _pod2rocket - 1;
		};
	};
};

if(_heli hasweapon "fza_m261_2_zone1") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_2_zone1";
	_fullcount = 12;
	_zonearray = [60,61,64,65,68,69,70,71,72,73,74,75];
	if("fza_m261_m229_2_zone1_12" in _mags) then
	{
		_zonearray = [79,80,83,84,87,88,89,90,91,92,93,94];
	};
	if("fza_m261_m261_2_zone1_12" in _mags) then
	{
		_zonearray = [98,99,102,103,106,107,108,109,110,111,112,113];
	};
	if("fza_m261_m255_2_zone1_12" in _mags) then
	{
		_zonearray = [98,99,102,103,106,107,108,109,110,111,112,113];
	};
	if("fza_m261_m257_2_zone1_12" in _mags) then
	{
		_zonearray = [98,99,102,103,106,107,108,109,110,111,112,113];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 12) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [79,""];
		_heli setobjecttexture [98,""];
	};
};

if(_heli hasweapon "fza_m261_2_zone2") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_2_zone2";
	_fullcount = 4;
	_zonearray = [62,63,66,67];
	if("fza_m261_m229_2_zone2_4" in _mags) then
	{
		_zonearray = [81,82,85,86];
	};
	if("fza_m261_m261_2_zone2_4" in _mags) then
	{
		_zonearray = [100,101,104,105];
	};
	if("fza_m261_m255_2_zone2_4" in _mags) then
	{
		_zonearray = [100,101,104,105];
	};
	if("fza_m261_m257_2_zone2_4" in _mags) then
	{
		_zonearray = [100,101,104,105];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 4) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [81,""];
		_heli setobjecttexture [100,""];
	};
};

if(_heli hasweapon "fza_m261_2_zone3") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_2_zone3";
	_fullcount = 3;
	_zonearray = [57,58,59];
	if("fza_m261_m229_2_zone3_3" in _mags) then
	{
		_zonearray = [76,77,78];
	};
	if("fza_m261_m261_2_zone3_3" in _mags) then
	{
		_zonearray = [95,96,97];
	};
	if("fza_m261_m255_2_zone3_3" in _mags) then
	{
		_zonearray = [95,96,97];
	};
	if("fza_m261_m257_2_zone3_3" in _mags) then
	{
		_zonearray = [95,96,97];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 3) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [76,""];
		_heli setobjecttexture [95,""];
	};
};

if(_heli hasweapon "fza_m261_3") then
{
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_3";
	_fullcount = 19;
	_beg3 = 114;
	_end3 = 133;
	if("fza_m261_m229_3_19" in _mags) then
	{
		_beg3 = 133;
		_end3 = 152;
	};
	if("fza_m261_m261_3_19" in _mags) then
	{
		_beg3 = 152;
		_end3 = 171;
	};
	if("fza_m261_m255_3_19" in _mags) then
	{
		_beg3 = 152;
		_end3 = 171;
	};
	if("fza_m261_m257_3_19" in _mags) then
	{
		_beg3 = 152;
		_end3 = 171;
	};
	if(_pod3rocket <= 0) then {_pod3rocket = _beg3;};
	if(_amount == _fullcount && ((_pod3rocket - _beg3) <= _fullcount)) then
	{
		if (_pod3rocket < _end3) then
		{
		_heli setobjecttexture [_pod3rocket,"\fza_ah64_us\tex\wpn1_co.paa"];
		_pod3rocket = _pod3rocket + 1;
		};
	};
	if(_amount < _fullcount) then
	{
		if ((_pod3rocket - _beg3) > ((_amount)-1)) then
		{
		_heli setobjecttexture [_pod3rocket,""];
		_pod3rocket = _pod3rocket - 1;
		};
	};
};

if(_heli hasweapon "fza_m261_3_zone1") then
{
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_3_zone1";
	_fullcount = 12;
	_zonearray = [117,118,121,122,125,126,127,128,129,130,131,132];
	if("fza_m261_m229_3_zone1_12" in _mags) then
	{
		_zonearray = [136,137,140,141,144,145,146,147,148,149,150,151];
	};
	if("fza_m261_m261_3_zone1_12" in _mags) then
	{
		_zonearray = [155,156,159,160,163,164,165,166,167,168,169,170];
	};
	if("fza_m261_m255_3_zone1_12" in _mags) then
	{
		_zonearray = [155,156,159,160,163,164,165,166,167,168,169,170];
	};
	if("fza_m261_m257_3_zone1_12" in _mags) then
	{
		_zonearray = [155,156,159,160,163,164,165,166,167,168,169,170];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 12) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [136,""];
		_heli setobjecttexture [155,""];
	};
};

if(_heli hasweapon "fza_m261_3_zone2") then
{
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_3_zone2";
	_fullcount = 4;
	_zonearray = [119,120,123,124];
	if("fza_m261_m229_3_zone2_4" in _mags) then
	{
		_zonearray = [138,139,142,143];
	};
	if("fza_m261_m261_3_zone2_4" in _mags) then
	{
		_zonearray = [157,158,161,162];
	};
	if("fza_m261_m255_3_zone2_4" in _mags) then
	{
		_zonearray = [157,158,161,162];
	};
	if("fza_m261_m257_3_zone2_4" in _mags) then
	{
		_zonearray = [157,158,161,162];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 4) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [138,""];
		_heli setobjecttexture [157,""];
	};
};

if(_heli hasweapon "fza_m261_3_zone3") then
{
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_3_zone3";
	_fullcount = 3;
	_zonearray = [114,115,116];
	if("fza_m261_m229_3_zone3_3" in _mags) then
	{
		_zonearray = [133,134,135];
	};
	if("fza_m261_m261_3_zone3_3" in _mags) then
	{
		_zonearray = [152,153,154];
	};
	if("fza_m261_m255_3_zone3_3" in _mags) then
	{
		_zonearray = [152,153,154];
	};
	if("fza_m261_m257_3_zone3_3" in _mags) then
	{
		_zonearray = [152,153,154];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 3) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [133,""];
		_heli setobjecttexture [152,""];
	};
};

if(_heli hasweapon "fza_m261_4") then
{
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_4";
	_fullcount = 19;
	_beg4 = 171;
	_end4 = 190;
	if("fza_m261_m229_4_19" in _mags) then
	{
		_beg4 = 190;
		_end4 = 209;
	};
	if("fza_m261_m261_4_19" in _mags) then
	{
		_beg4 = 209;
		_end4 = 228;
	};
	if("fza_m261_m255_4_19" in _mags) then
	{
		_beg4 = 209;
		_end4 = 228;
	};
	if("fza_m261_m257_4_19" in _mags) then
	{
		_beg4 = 209;
		_end4 = 228;
	};
	if(_pod4rocket <= 0) then {_pod4rocket = _beg4;};
	if(_amount == _fullcount && ((_pod4rocket - _beg4) <= _fullcount)) then
	{
		if (_pod4rocket < _end4) then
		{
		_heli setobjecttexture [_pod4rocket,"\fza_ah64_us\tex\wpn1_co.paa"];
		_pod4rocket = _pod4rocket + 1;
		};
	};
	if(_amount < _fullcount) then
	{
		if ((_pod4rocket - _beg4) > ((_amount)-1)) then
		{
		_heli setobjecttexture [_pod4rocket,""];
		_pod4rocket = _pod4rocket - 1;
		};
	};
};

if(_heli hasweapon "fza_m261_4_zone1") then
{
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_4_zone1";
	_fullcount = 12;
	_zonearray = [174,175,178,179,182,183,184,185,186,187,188,189];
	if("fza_m261_m229_4_zone1_12" in _mags) then
	{
		_zonearray = [193,194,197,198,201,202,203,204,205,206,207,208];
	};
	if("fza_m261_m261_4_zone1_12" in _mags) then
	{
		_zonearray = [212,213,216,217,220,221,222,223,224,225,226,227];
	};
	if("fza_m261_m255_4_zone1_12" in _mags) then
	{
		_zonearray = [212,213,216,217,220,221,222,223,224,225,226,227];
	};
	if("fza_m261_m257_4_zone1_12" in _mags) then
	{
		_zonearray = [212,213,216,217,220,221,222,223,224,225,226,227];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 12) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [193,""];
		_heli setobjecttexture [212,""];
	};
};

if(_heli hasweapon "fza_m261_4_zone2") then
{
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_4_zone2";
	_fullcount = 4;
	_zonearray = [176,177,180,181];
	if("fza_m261_m229_4_zone2_4" in _mags) then
	{
		_zonearray = [195,196,199,200];
	};
	if("fza_m261_m261_4_zone2_4" in _mags) then
	{
		_zonearray = [214,215,218,219];
	};
	if("fza_m261_m255_4_zone2_4" in _mags) then
	{
		_zonearray = [214,215,218,219];
	};
	if("fza_m261_m257_4_zone2_4" in _mags) then
	{
		_zonearray = [214,215,218,219];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 4) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [195,""];
		_heli setobjecttexture [214,""];
	};
};

if(_heli hasweapon "fza_m261_4_zone3") then
{
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_4_zone3";
	_fullcount = 3;
	_zonearray = [171,172,173];
	if("fza_m261_m229_4_zone3_3" in _mags) then
	{
		_zonearray = [190,191,192];
	};
	if("fza_m261_m261_4_zone3_3" in _mags) then
	{
		_zonearray = [209,210,211];
	};
	if("fza_m261_m255_4_zone3_3" in _mags) then
	{
		_zonearray = [209,210,211];
	};
	if("fza_m261_m257_4_zone3_3" in _mags) then
	{
		_zonearray = [209,210,211];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 3) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [190,""];
		_heli setobjecttexture [209,""];
	};
};

if(_heli hasweapon "fza_m261_14") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_14";
	_fullcount = 38;
	_beg1 = 0;
	_end1 = 19;
	_beg4 = 171;
	_end4 = 190;
	_rktarray = [171,0,172,1,173,2,174,3,175,4,176,5,177,6,178,7,179,8,180,9,181,10,182,11,183,12,184,13,185,14,186,15,187,16,188,17,189,18];
	if("fza_m261_m229_14_38" in _mags) then
	{
		_beg1 = 19;
		_end1 = 38;
		_beg4 = 190;
		_end4 = 209;
		_rktarray = [190,19,191,20,192,21,193,22,194,23,195,24,196,25,197,26,198,27,199,28,200,29,201,30,202,31,203,32,204,33,205,34,206,35,207,36,208,37];
	};
	if("fza_m261_m261_14_38" in _mags) then
	{
		_beg1 = 38;
		_end1 = 57;
		_beg4 = 209;
		_end4 = 228;
		_rktarray = [209,38,210,39,211,40,212,41,213,42,214,43,215,44,216,45,217,46,218,47,219,48,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
	if("fza_m261_m255_14_38" in _mags) then
	{
		_beg1 = 38;
		_end1 = 57;
		_beg4 = 209;
		_end4 = 228;
		_rktarray = [209,38,210,39,211,40,212,41,213,42,214,43,215,44,216,45,217,46,218,47,219,48,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
	if("fza_m261_m257_14_38" in _mags) then
	{
		_beg1 = 38;
		_end1 = 57;
		_beg4 = 209;
		_end4 = 228;
		_rktarray = [209,38,210,39,211,40,212,41,213,42,214,43,215,44,216,45,217,46,218,47,219,48,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
	_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 38) then
			{
				_heli setobjecttexture [(_rktarray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _rktarray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [190,""];
		_heli setobjecttexture [209,""];
	};
};

if(_heli hasweapon "fza_m261_14_zoneA") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_14_zoneA";
	_fullcount = 24;
	_zonearray = [174,3,175,4,178,7,179,8,182,11,183,12,184,13,184,14,186,15,187,16,188,17,189,18];
	if("fza_m261_m229_14_zoneA" in _mags) then
	{
		_zonearray = [193,22,194,23,197,26,198,27,201,30,202,31,203,32,204,33,205,34,206,35,207,36,208,37];
	};
	if("fza_m261_m261_14_zoneA" in _mags) then
	{
		_zonearray = [212,41,213,42,216,45,217,46,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
	if("fza_m261_m255_14_zoneA" in _mags) then
	{
		_zonearray = [212,41,213,42,216,45,217,46,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
	if("fza_m261_m257_14_zoneA" in _mags) then
	{
		_zonearray = [212,41,213,42,216,45,217,46,220,49,221,50,222,51,223,52,224,53,225,54,226,55,227,56];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 24) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [193,""];
		_heli setobjecttexture [212,""];
	};
};

if(_heli hasweapon "fza_m261_14_zoneB") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_14_zoneB";
	_fullcount = 8;
	_zonearray = [176,5,177,6,180,9,181,10];
	if("fza_m261_m229_14_zoneB" in _mags) then
	{
		_zonearray = [195,24,196,25,199,28,200,29];
	};
	if("fza_m261_m261_14_zoneB" in _mags) then
	{
		_zonearray = [214,43,215,44,218,47,219,48];
	};
	if("fza_m261_m255_14_zoneB" in _mags) then
	{
		_zonearray = [214,43,215,44,218,47,219,48];
	};
	if("fza_m261_m257_14_zoneB" in _mags) then
	{
		_zonearray = [214,43,215,44,218,47,219,48];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 8) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [195,""];
		_heli setobjecttexture [214,""];
	};
};

if(_heli hasweapon "fza_m261_14_zoneE") then
{
	_heli setobjecttexture [1112,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1115,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_14_zoneE";
	_fullcount = 6;
	_zonearray = [171,0,172,1,173,2];
	if("fza_m261_m229_14_zoneE" in _mags) then
	{
		_zonearray = [190,19,191,20,192,21];
	};
	if("fza_m261_m261_14_zoneE" in _mags) then
	{
		_zonearray = [209,38,210,39,211,40];
	};
	if("fza_m261_m255_14_zoneE" in _mags) then
	{
		_zonearray = [209,38,210,39,211,40];
	};
	if("fza_m261_m257_14_zoneE" in _mags) then
	{
		_zonearray = [209,38,210,39,211,40];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 6) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [190,""];
		_heli setobjecttexture [209,""];
	};
};

if(_heli hasweapon "fza_m261_23") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_23";
	_fullcount = 38;
	_beg2 = 57;
	_end2 = 76;
	_beg3 = 114;
	_end3 = 133;
	if("fza_m261_m229_23_38" in _mags) then
	{
		_beg2 = 76;
		_end2 = 95;
		_beg3 = 133;
		_end3 = 152;
	};
	if("fza_m261_m261_23_38" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
		_beg3 = 152;
		_end3 = 171;
	};
	if("fza_m261_m255_23_38" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
		_beg3 = 152;
		_end3 = 171;
	};
	if("fza_m261_m257_23_38" in _mags) then
	{
		_beg2 = 95;
		_end2 = 114;
		_beg3 = 152;
		_end3 = 171;
	};
	if(_pod2rocket <= 0) then {_pod2rocket = _beg2;};
	if(_pod3rocket <= 0) then {_pod3rocket = _beg3;};
	if(_amount == _fullcount && ((_pod2rocket - _beg2 + _pod3rocket - _beg3) <= _fullcount)) then
	{
		if (_pod2rocket < _end2) then
		{
		_heli setobjecttexture [_pod2rocket,"\fza_ah64_us\tex\wpn1_co.paa"];
		_pod2rocket = _pod2rocket + 1;
		};
		if (_pod3rocket < _end3) then
		{
		_heli setobjecttexture [_pod3rocket,"\fza_ah64_us\tex\wpn1_co.paa"];
		_pod3rocket = _pod3rocket + 1;
		};
	};
	if(_amount < _fullcount) then
	{
		if ((_pod2rocket - _beg2) > ((floor (_amount * 0.5))-1)) then
		{
		_heli setobjecttexture [_pod2rocket,""];
		_pod2rocket = _pod2rocket - 1;
		};
		if ((_pod3rocket - _beg3) > ((floor (_amount * 0.5))-1)) then
		{
		_heli setobjecttexture [_pod3rocket,""];
		_pod3rocket = _pod3rocket - 1;
		};
	};
};

if(_heli hasweapon "fza_m261_23_zoneC") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_23_zoneC";
	_fullcount = 24;
	_zonearray = [60,117,61,118,64,121,65,122,68,125,69,126,70,127,71,128,72,129,73,130,74,131,75,132];
	if("fza_m261_m229_23_zoneC" in _mags) then
	{
		_zonearray = [79,136,80,137,83,140,84,141,87,144,88,145,89,146,90,147,91,148,92,149,93,150,94,151];
	};
	if("fza_m261_m261_23_zoneC" in _mags) then
	{
		_zonearray = [98,155,99,156,102,159,103,160,106,163,107,164,108,165,109,166,110,167,111,168,112,169,113,170];
	};
	if("fza_m261_m255_23_zoneC" in _mags) then
	{
		_zonearray = [98,155,99,156,102,159,103,160,106,163,107,164,108,165,109,166,110,167,111,168,112,169,113,170];
	};
	if("fza_m261_m257_23_zoneC" in _mags) then
	{
		_zonearray = [98,155,99,156,102,159,103,160,106,163,107,164,108,165,109,166,110,167,111,168,112,169,113,170];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 24) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [79,""];
		_heli setobjecttexture [98,""];
	};
};

if(_heli hasweapon "fza_m261_23_zoneD") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_23_zoneD";
	_fullcount = 8;
	_zonearray = [62,119,63,120,66,123,67,124];
	if("fza_m261_m229_23_zoneD" in _mags) then
	{
		_zonearray = [81,138,82,139,85,142,86,143];
	};
	if("fza_m261_m261_23_zoneD" in _mags) then
	{
		_zonearray = [100,157,101,158,104,161,105,162];
	};
	if("fza_m261_m255_23_zoneD" in _mags) then
	{
		_zonearray = [100,157,101,158,104,161,105,162];
	};
	if("fza_m261_m257_23_zoneD" in _mags) then
	{
		_zonearray = [100,157,101,158,104,161,105,162];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 8) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [81,""];
		_heli setobjecttexture [100,""];
	};
};

if(_heli hasweapon "fza_m261_23_zoneE") then
{
	_heli setobjecttexture [1113,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [1114,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_m261_23_zoneE";
	_fullcount = 6;
	_zonearray = [57,114,58,115,59,116];
	if("fza_m261_m229_23_zoneE" in _mags) then
	{
		_zonearray = [76,133,77,134,78,135];
	};
	if("fza_m261_m261_23_zoneE" in _mags) then
	{
		_zonearray = [95,152,96,153,97,154];
	};
	if("fza_m261_m255_23_zoneE" in _mags) then
	{
		_zonearray = [95,152,96,153,97,154];
	};
	if("fza_m261_m257_23_zoneE" in _mags) then
	{
		_zonearray = [95,152,96,153,97,154];
	};
		_counter = 0;
		{
			if(_counter < _amount) then
			{
				_heli setobjecttexture [_x,"\fza_ah64_us\tex\wpn1_co.paa"];
			};
			if(_counter >= _amount && _amount < 6) then
			{
				_heli setobjecttexture [(_zonearray select _counter),""];
			};
			_counter = _counter + 1;
		} foreach _zonearray;
	if(_amount < 1) then
	{
		_heli setobjecttexture [76,""];
		_heli setobjecttexture [95,""];
	};
};

} else {
	_heli setobjecttexture [1112,""];
	_heli setobjecttexture [1113,""];
	_heli setobjecttexture [1114,""];
	_heli setobjecttexture [1115,""];
	_pod1rocket = 0;
	_pod1rocket1 = 0;
	_pod1rocket2 = 0;
	_pod1rocket3 = 0;
	_pod2rocket = 0;
	_pod2rocket1 = 0;
	_pod2rocket2 = 0;
	_pod2rocket3 = 0;
	_pod3rocket = 0;
	_pod3rocket1 = 0;
	_pod3rocket2 = 0;
	_pod3rocket3 = 0;
	_pod4rocket = 0;
	_pod4rocket1 = 0;
	_pod4rocket2 = 0;
	_pod4rocket3 = 0;
	_pod14rocket1 = 0;
	_pod14rocket2 = 0;
	_pod14rocket3 = 0;
	_pod23rocket1 = 0;
	_pod23rocket2 = 0;
	_pod23rocket3 = 0;
	[_heli] call fza_ah64_hiderockets;
};
if(_heli hasweapon "fza_atas_2") then
{
	if(_heli hasweapon "fza_atas_2") then
	{
	_heli setobjecttexture [260,"\fza_ah64_us\tex\wpn1_co.paa"];
	_heli setobjecttexture [261,"\fza_ah64_us\tex\wpn1_co.paa"];
	_amount = _heli ammo "fza_atas_2";
	if(_amount > 3) then {_heli setobjecttexture [262,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 2) then {_heli setobjecttexture [263,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 1) then {_heli setobjecttexture [264,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount > 0) then {_heli setobjecttexture [265,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if(_amount < 4) then {_heli setobjecttexture [262,""];};
	if(_amount < 3) then {_heli setobjecttexture [263,""];};
	if(_amount < 2) then {_heli setobjecttexture [264,""];};
	if(_amount < 1) then {_heli setobjecttexture [265,""];};
	};
} else {
_heli setobjecttexture [260,""];
_heli setobjecttexture [261,""];
_heli setobjecttexture [262,""];
_heli setobjecttexture [263,""];
_heli setobjecttexture [264,""];
_heli setobjecttexture [265,""];
};
if("fza_auxtank_230_1" in _mags || "fza_auxtank_230_2" in _mags || "fza_auxtank_230_3" in _mags || "fza_auxtank_230_4" in _mags) then
{
	if("fza_auxtank_230_1" in _mags) then {_heli setobjecttexture [266,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if("fza_auxtank_230_2" in _mags) then {_heli setobjecttexture [267,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if("fza_auxtank_230_3" in _mags) then {_heli setobjecttexture [268,"\fza_ah64_us\tex\wpn1_co.paa"];};
	if("fza_auxtank_230_4" in _mags) then {_heli setobjecttexture [269,"\fza_ah64_us\tex\wpn1_co.paa"];};
} else {
_heli setobjecttexture [266,""];
_heli setobjecttexture [267,""];
_heli setobjecttexture [268,""];
_heli setobjecttexture [269,""];
};
sleep 0.03;
};
