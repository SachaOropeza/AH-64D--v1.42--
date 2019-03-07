if(!(isNil "fza_ah64_notsdfcr")) exitwith {};
_heli = _this select 0;
if(isNil "fza_ah64_tsdtargets") then {fza_ah64_tsdtargets = [];};
_adaunit = false;
_targzpos = 0;
_targindi = 0;
_targnum = 265;
_objnum = 0;
_targnumcpg = 1076;
_hdgformat1 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_hdgformat2 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_hdgformat3 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tsdrformat1 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tsdrformat2 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tgtrformat1 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tgtrformat2 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tgtrformat3 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_targdir1 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_targdir2 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_targdir3 = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_pfzsel = "\fza_ah64_us\tex\CHAR\G0_ca.paa";
_tfilter = "\fza_ah64_us\tex\mpd\all.paa";
_helidir = (direction _heli);
_tgtr = 0;
_windspd = 0;
_navstring = "\fza_ah64_US\tex\ICONS\ah64_wp_ina_00.paa";
if(isNil "fza_ah64_shotat_list") then {fza_ah64_shotat_list = [];};
_targxpos = 0;
_targypos = 0;
_helixpos = 0;
_heliypos = 0;
if(isNil "fza_ah64_mapsizearea") then {fza_ah64_mapsizearea = 5120;};
_mapsizefactor = 0.8/fza_ah64_mapsizearea;
if(isNil "fza_ah64_maplist") then {fza_ah64_maplist = ["\fza_ah64_US\tex\mpd\notfound_2.paa"];};
if(isNil "fza_ah64_currentmap") then {fza_ah64_currentmap = "\fza_ah64_US\tex\mpd\notfound_2.paa";};

while {(time > -1)} do
{
waituntil{(vehicle player) iskindof "fza_ah64base"};
_heli = vehicle player;
_prevcache = fza_ah64_pfzcache;
waitUntil {((driver (vehicle player) == player || gunner (vehicle player) == player))};

fza_ah64_dispfcrlist = fza_ah64_fcrlist;

{
_i = _x;
fza_ah64_dispfcrlist = fza_ah64_dispfcrlist - [_i];

if(fza_ah64_tsdsort < 4) then
{

	{if (_i iskindof _x) then {fza_ah64_dispfcrlist = fza_ah64_dispfcrlist + [_i];};} foreach fza_ah64_tsdsortarray;

} else {

	if (_i in fza_ah64_tsdsortarray) then {fza_ah64_dispfcrlist = fza_ah64_dispfcrlist + [_i];};
};

_thetafcr = [_heli,(getposatl _heli select 0),(getposatl _heli select 1),(getposatl _i select 0),(getposatl _i select 1)] call fza_ah64_reldir;

if(fza_ah64_agmode == 1) then
{
if((getpos _i select 2 < 10) || ((_heli distance _i) > 8000) || !(alive _i)) then {fza_ah64_dispfcrlist = fza_ah64_dispfcrlist - [_i];};
};

if(fza_ah64_agmode == 0) then
{
if((getpos _i select 2 > 10) || ((_heli distance _i) > 8000) || (_thetafcr > 70 && _thetafcr < 290) || !(alive _i)) then {fza_ah64_dispfcrlist = fza_ah64_dispfcrlist - [_i];};
};

} foreach fza_ah64_dispfcrlist;

//////////////END SORT///////////

//DRIVER AND FCR/TSD DISPLAYS
if((driver _heli == player || gunner _heli == player) && (fza_ah64_pr_mpd == "tsd" || fza_ah64_pl_mpd == "tsd" || fza_ah64_pr_mpd == "fcr")) then
{
_heli setobjecttexture [270,"\fza_ah64_US\tex\mpd\ownship_ca.paa"];
_heli setobjecttexture [1076,"\fza_ah64_US\tex\mpd\ownship_ca.paa"];
_mapsizefactor = 0.8/fza_ah64_mapsizearea;
_pfzsel = [fza_ah64_pfz_count,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digit;
_tfilter = "\fza_ah64_us\tex\mpd\all.paa";
if(fza_ah64_tsdsort == 0) then {_tfilter = "\fza_ah64_us\tex\mpd\all.paa";};
if(fza_ah64_tsdsort == 1) then {_tfilter = "\fza_ah64_us\tex\mpd\track.paa";};
if(fza_ah64_tsdsort == 2) then {_tfilter = "\fza_ah64_us\tex\mpd\radiation.paa";};
if(fza_ah64_tsdsort == 3) then {_tfilter = "\fza_ah64_us\tex\mpd\wheel.paa";};
if(fza_ah64_tsdsort == 4) then {_tfilter = "\fza_ah64_us\tex\CHAR\G1_ca.paa";};
if(fza_ah64_tsdsort == 5) then {_tfilter = "\fza_ah64_us\tex\CHAR\G2_ca.paa";};
if(fza_ah64_tsdsort == 6) then {_tfilter = "\fza_ah64_us\tex\CHAR\G3_ca.paa";};
if(fza_ah64_tsdsort == 7) then {_tfilter = "\fza_ah64_us\tex\CHAR\G4_ca.paa";};
if(fza_ah64_tsdsort == 8) then {_tfilter = "\fza_ah64_us\tex\CHAR\G5_ca.paa";};
if(fza_ah64_tsdsort == 9) then {_tfilter = "\fza_ah64_us\tex\CHAR\G6_ca.paa";};
if(fza_ah64_tsdsort == 10) then {_tfilter = "\fza_ah64_us\tex\CHAR\G7_ca.paa";};
if(fza_ah64_tsdsort == 11) then {_tfilter = "\fza_ah64_us\tex\CHAR\G8_ca.paa";};
_helidir = (direction _heli);
_hdghu = round(floor(10*((_helidir * 0.001) - floor(_helidir * 0.001))));
_hdgte = round(10*(((floor(_helidir * 0.1)) * 0.1) - floor((floor(_helidir * 0.1)) * 0.1)));
_hdgsi = round(10*((_helidir * 0.1) - floor(_helidir * 0.1)));
if(_hdgsi > 9) then {_hdgsi = 9;};
_tsdrange = (abs(1 / fza_ah64_rangesetting))*0.001;
_tsdrte = round(10*(((floor(_tsdrange * 0.1)) * 0.1) - floor((floor(_tsdrange * 0.1)) * 0.1)));
_tsdrsi = round(10*((_tsdrange * 0.1) - floor(_tsdrange * 0.1)));
if(isNull fza_ah64_mycurrenttarget) then
{
_tgtr = 0;
} else {
_tgtr = (fza_ah64_mycurrenttarget distance _heli) * 0.001;
};
if(fza_ah64_tsdmode == "nav") then
{
_tgtr = ([(fza_ah64_curwp select 0),(fza_ah64_curwp select 1),0] distance [(getpos _heli select 0),(getpos _heli select 1),0]) * 0.001;
};
_tgtrtk = round(floor(_tgtr * 0.1));
_tgtrk = round(floor(10*((_tgtr * 0.1) - floor(_tgtr * 0.1))));
_tgtrdk = round(10*(_tgtr - (round(floor _tgtr))));
if(_tgtrdk > 9) then {_tgtrdk = 9;};
_winddir = round((wind select 0) atan2 (wind select 1));
if (_winddir < 0) then
{
_winddir = _winddir + 360;
};
_windhu = round(floor(10*((_winddir * 0.001) - floor(_winddir * 0.001))));
_windte = round(10*(((floor(_winddir * 0.1)) * 0.1) - floor((floor(_winddir * 0.1)) * 0.1)));
_windsi = round(10*((_winddir * 0.1) - floor(_winddir * 0.1)));
if(_windsi > 9) then {_windsi = 9;};
_windspd = round(1.94*(sqrt((0.836*(abs(wind select 0)^1.5))^2 + (0.836*(abs(wind select 2)^1.5))^2 + (0.836*(abs(wind select 1)^1.5))^2)));
_windste = round(10*(((floor(_windspd * 0.1)) * 0.1) - floor((floor(_windspd * 0.1)) * 0.1)));
_windssi = round(10*((_windspd * 0.1) - floor(_windspd * 0.1)));
if(_windssi > 9) then {_windssii = 9;};
_hdgformat1 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_hdghu]) + "_ca.paa";
_hdgformat2 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_hdgte]) + "_ca.paa";
_hdgformat3 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_hdgsi]) + "_ca.paa";
_tsdrformat1 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_tsdrte]) + "_ca.paa";
_tsdrformat2 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_tsdrsi]) + "_ca.paa";
_tgtrformat1 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_tgtrtk]) + "_ca.paa";
_tgtrformat2 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_tgtrk]) + "_ca.paa";
_tgtrformat3 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_tgtrdk]) + "_ca.paa";
_wndformat1 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_windhu]) + "_ca.paa";
_wndformat2 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_windte]) + "_ca.paa";
_wndformat3 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_windsi]) + "_ca.paa";
_wndsformat1 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_windste]) + "_ca.paa";
_wndsformat2 = "\fza_ah64_us\tex\CHAR\G" + (format ["%1",_windssi]) + "_ca.paa";

if(fza_ah64_pr_mpd == "tsd") then
{
_heli setobjecttexture [401,_pfzsel];
_heli setobjecttexture [402,_tfilter];
//TSD//FCR/ICONS
_targnum = 270;
_objnum = 1;
if(fza_ah64_tsdmap < 1) then
{
_heli setobjecttexture [303,"\fza_ah64_us\tex\mpd\tsd-b.paa"];
} else {
_heli setobjecttexture [303,"\fza_ah64_US\tex\mpd\notfound_2.paa"];
};
_heli setobjecttexture [1111,"\fza_ah64_us\tex\mpd\tsd.paa"];
_heli setobjecttexture [393,_hdgformat3];
_heli setobjecttexture [394,_hdgformat2];
_heli setobjecttexture [395,_hdgformat1];
_heli setobjecttexture [396,_tgtrformat3];
_heli setobjecttexture [397,_tgtrformat2];
_heli setobjecttexture [398,_tgtrformat1];
_heli setobjecttexture [399,_tsdrformat2];
_heli setobjecttexture [400,_tsdrformat1];
_heli setobjecttexture [404,_wndformat3];
_heli setobjecttexture [405,_wndformat2];
_heli setobjecttexture [406,_wndformat1];
_heli setobjecttexture [407,_wndsformat2];
_heli setobjecttexture [408,_wndsformat1];

if(fza_ah64_tsdmode == "atk") then
{
_heli setobjecttexture [1071,"\fza_ah64_us\tex\mpd\tsd.paa"];
/////////////////////////////////////////
////////////////ATTACK///////////////////
/////////////////////////////////////////
if(fza_ah64_tsdmap > 0) then
{
_heli setobjecttexture [1110,fza_ah64_currentmap];
_heli setobjecttexture [1069,"\fza_ah64_us\tex\mpd\tsd.paa"];
_mapscale = 1 - (fza_ah64_rangesetting * (fza_ah64_mapsizearea/8));
_zoom = (1 - _mapscale)/(fza_ah64_mapsizearea*2);
_helidir = (1/360) * getdir _heli;
_helixpos = _zoom*(getposasl _heli select 0);
_heliypos = _zoom*(getposasl _heli select 1);
if(player == driver _heli) then
{
_heli animate ["mpd_pr_mmap_z",_helidir];
_heli animate ["mpd_pr_mmap_h",_helixpos];
_heli animate ["mpd_pr_mmap_v",_heliypos];
_heli animate ["mpd_pr_mmap_s1",_mapscale];
_heli animate ["mpd_pr_mmap_s2",_mapscale];
_heli animate ["mpd_pr_mmap_s3",_mapscale];
};

//CPG
if(player == gunner _heli) then
{
_heli setobjecttexture [1108,fza_ah64_currentmap];
_heli animate ["mpd_gr_mmap_z",_helidir];
_heli animate ["mpd_gr_mmap_h",_helixpos];
_heli animate ["mpd_gr_mmap_v",_heliypos];
_heli animate ["mpd_gr_mmap_s1",_mapscale];
_heli animate ["mpd_gr_mmap_s2",_mapscale];
_heli animate ["mpd_gr_mmap_s3",_mapscale];
};
} else {
_heli setobjecttexture [1108,""];
_heli setobjecttexture [1110,""];
_heli setobjecttexture [1069,""];
};

if(player == driver _heli) then
{
_heli animate ["mpd_pl_obj1_v",0.25];
_heli animate ["mpd_pl_obj1_h",0.5];
_heli animate ["mpd_pl_obj1_z",0.005];
};
if(player == gunner _heli) then
{
_heli animate ["mpd_gr_obj1_v",0.25];
_heli animate ["mpd_gr_obj1_h",0.5];
_heli animate ["mpd_gr_obj1_z",0.005];
};
{
if(_targnum > 301) exitwith {};
if(_targnum <= 301) then
{
_targnum = _targnum + 1;
_targnumcpg = _targnum + 806;
if(_targnum > 301) exitwith {};
_objnum = _objnum + 1;
_targzpos = 0;
_adaunit = false;
_i = _x;
{if(_i iskindof _x) then {_adaunit = true;};} foreach fza_ah64_ada_units;

_targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_gen.paa";

if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_hc.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_hc.paa";};
if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";};
if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_tnk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_tnk.paa";};
if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_whl.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_whl.paa";};
if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada.paa";};
if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_gen.paa"];};

if (_x in fza_ah64_currentpfz) then
{
if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_hc_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_hc_pfz.paa";};
if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ac_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ac_pfz.paa";};
if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_tnk_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_tnk_pfz.paa";};
if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_whl_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_whl_pfz.paa";};
if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada_pfz.paa";};
if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_gen_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_gen_pfz.paa";};
};

if (_x == fza_ah64_mycurrenttarget) then
{
if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_hc_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_hc_trk.paa";};
if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ac_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ac_trk.paa";};
if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_tnk_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_tnk_trk.paa";};
if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_whl_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_whl_trk.paa";};
if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada_trk.paa";};
if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_gen_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_gen_trk.paa";};
_targzpos = 1;
};

if (_x in fza_ah64_shotat_list) then
{
_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_shotat.paa"];
_targicon = "\fza_ah64_US\tex\ICONS\ah64_shotat.paa";
};

_heli setobjecttexture [_targnumcpg,_targicon];

_theta = [_heli,(getposatl _heli select 0),(getposatl _heli select 1),(getposatl _x select 0),(getposatl _x select 1)] call fza_ah64_reldir;

_targhead = _theta;

if(_x == fza_ah64_mycurrenttarget) then
{
_targdir1 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digithun;
_targdir2 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digitten;
_targdir3 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digit;
_heli setobjecttexture [386,_targdir3];
_heli setobjecttexture [387,_targdir2];
_heli setobjecttexture [388,_targdir1];
};

if (_theta >= 180) then {_targhead = _theta - 360;} else {_targhead = _theta;};

_targxpos = ((sin _targhead) * (((_heli distance _x) * fza_ah64_rangesetting)*0.75))+0.5;
_targypos = ((cos _targhead) * (((_heli distance _x) * fza_ah64_rangesetting)*0.75))+0.25;

if(_targxpos > 0.9) then {_targxpos = 0.9;};
if(_targxpos < 0.1) then {_targxpos = 0.1;};

if(_targypos > 0.9) then {_targypos = 0.9;};
if(_targypos < 0.1) then {_targypos = 0.1;};

_objnumformat = format ["%1",_objnum];
_objstrh = "mpd_pl_obj" + _objnumformat + "_h";
_objstrv = "mpd_pl_obj" + _objnumformat + "_v";
_objstrz = "mpd_pl_obj" + _objnumformat + "_z";
//player globalchat format ["TARGX %1 TARGY %2 TARG %3",_targxpos,_targypos,_objstrv];
if(player == driver _heli) then
{
_heli animate [_objstrh,_targxpos];
_heli animate [_objstrv,_targypos];
_heli animate [_objstrz,_targzpos];
};
if(player == gunner _heli) then
{
_objstrh = "mpd_gr_obj" + _objnumformat + "_h";
_objstrv = "mpd_gr_obj" + _objnumformat + "_v";
_objstrz = "mpd_gr_obj" + _objnumformat + "_z";
_heli animate [_objstrh,_targxpos];
_heli animate [_objstrv,_targypos];
_heli animate [_objstrz,_targzpos];
};
};
//sleep 0.01;
} foreach fza_ah64_tsddisptargs;
/////////////////////////////////////////
////////////END ATTACK///////////////////
/////////////////////////////////////////
};
if(fza_ah64_tsdmode == "nav") then
{
_heli setobjecttexture [1071,""];
/////////////////////////////////////////
////////////////NAV//////////////////////
/////////////////////////////////////////
if(fza_ah64_tsdmap > 0) then
{
_heli setobjecttexture [1110,fza_ah64_currentmap];
_heli setobjecttexture [1069,"\fza_ah64_us\tex\mpd\tsd.paa"];
_mapscale = 1 - (fza_ah64_rangesetting * (fza_ah64_mapsizearea/8));
_zoom = (1 - _mapscale)/(fza_ah64_mapsizearea*2);
_helidir = (1/360) * getdir _heli;
_helixpos = _zoom*(getposasl _heli select 0);
_heliypos = _zoom*(getposasl _heli select 1);
if(player == driver _heli) then
{
_heli animate ["mpd_pr_mmap_z",_helidir];
_heli animate ["mpd_pr_mmap_h",_helixpos];
_heli animate ["mpd_pr_mmap_v",_heliypos];
_heli animate ["mpd_pr_mmap_s1",_mapscale];
_heli animate ["mpd_pr_mmap_s2",_mapscale];
_heli animate ["mpd_pr_mmap_s3",_mapscale];
};
//cpg//
if(player == gunner _heli) then
{
_heli setobjecttexture [1108,fza_ah64_currentmap];
_heli animate ["mpd_gr_mmap_z",_helidir];
_heli animate ["mpd_gr_mmap_h",_helixpos];
_heli animate ["mpd_gr_mmap_v",_heliypos];
_heli animate ["mpd_gr_mmap_s1",_mapscale];
_heli animate ["mpd_gr_mmap_s2",_mapscale];
_heli animate ["mpd_gr_mmap_s3",_mapscale];
};
} else {
_heli setobjecttexture [1108,""];
_heli setobjecttexture [1110,""];
_heli setobjecttexture [1069,""];
};
if(player == driver _heli) then
{
_heli animate ["mpd_pl_obj1_v",0.25];
_heli animate ["mpd_pl_obj1_h",0.5];
_heli animate ["mpd_pl_obj1_z",0.005];
};
if(player == gunner _heli) then
{
_heli animate ["mpd_gr_obj1_v",0.25];
_heli animate ["mpd_gr_obj1_h",0.5];
_heli animate ["mpd_gr_obj1_z",0.005];
};
{
if(_targnum < 302) then
{
_targnum = _targnum + 1;
_targnumcpg = _targnum + 806;
_objnum = _objnum + 1;

_navstring = "\fza_ah64_US\tex\ICONS\ah64_wp_ina_0" + (format ["%1",_objnum - 2]) + ".paa";

if(_objnum > 11) then
{
_navstring = "\fza_ah64_US\tex\ICONS\ah64_wp_ina_" + (format ["%1",_objnum - 2]) + ".paa";
};

if((fza_ah64_curwp select 0) == (_x select 0) && (fza_ah64_curwp select 1) == (_x select 1)) then
{

_navstring = "\fza_ah64_US\tex\ICONS\ah64_wp_act_0" + (format ["%1",_objnum - 2]) + ".paa";

if(_objnum > 11) then
{
_navstring = "\fza_ah64_US\tex\ICONS\ah64_wp_act_" + (format ["%1",_objnum - 2]) + ".paa";
};

};

_heli setobjecttexture [_targnum,_navstring];
_heli setobjecttexture [_targnumcpg,_navstring];

_theta = [_heli,(getposatl _heli select 0),(getposatl _heli select 1),(_x select 0),(_x select 1)] call fza_ah64_reldir;

_targhead = _theta;

if((fza_ah64_curwp select 0) == (_x select 0) && (fza_ah64_curwp select 1) == (_x select 1)) then
{
_targdir1 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digithun;
_targdir2 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digitten;
_targdir3 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digit;
_heli setobjecttexture [386,_targdir3];
_heli setobjecttexture [387,_targdir2];
_heli setobjecttexture [388,_targdir1];
};

if (_theta >= 180) then {_targhead = _theta - 360;} else {_targhead = _theta;};

_targxpos = ((sin _targhead) * (((_heli distance _x) * fza_ah64_rangesetting)*0.75))+0.5;
_targypos = ((cos _targhead) * (((_heli distance _x) * fza_ah64_rangesetting)*0.75))+0.25;

if(_targxpos > 0.9) then {_targxpos = 0.9;};
if(_targxpos < 0.1) then {_targxpos = 0.135;};

if(_targypos > 0.9) then {_targypos = 0.9;};
if(_targypos < 0.135) then {_targypos = 0.135;};

_objnumformat = format ["%1",_objnum];
_objstrh = "mpd_pl_obj" + _objnumformat + "_h";
_objstrv = "mpd_pl_obj" + _objnumformat + "_v";
//player globalchat format ["TARGX %1 TARGY %2 TARG %3",_targxpos,_targypos,_objstrv];
if(player == driver _heli) then
{
_heli animate [_objstrh,_targxpos];
_heli animate [_objstrv,_targypos];
};
if(player == gunner _heli) then
{
_objstrh = "mpd_gr_obj" + _objnumformat + "_h";
_objstrv = "mpd_gr_obj" + _objnumformat + "_v";
_heli animate [_objstrh,_targxpos];
_heli animate [_objstrv,_targypos];
};
};
//sleep 0.01;
} foreach fza_ah64_waypointdata;
/////////////////////////////////////////
////////////END NAV//////////////////////
/////////////////////////////////////////
};
};

_targindi = _targnum + 1;
while {(_targindi < 302 && fza_ah64_pr_mpd == "tsd")} do
{
_heli setobjecttexture [_targindi,""];
_heli setobjecttexture [(_targindi + 806),""];
_targindi = _targindi + 1;
};

if(!(fza_ah64_pr_mpd == "tsd")) then
{
_heli setobjecttexture [386,""];
_heli setobjecttexture [387,""];
_heli setobjecttexture [388,""];
_heli setobjecttexture [389,""];
_heli setobjecttexture [390,""];
_heli setobjecttexture [391,""];
_heli setobjecttexture [392,""];
//////
_heli setobjecttexture [396,""];
_heli setobjecttexture [397,""];
_heli setobjecttexture [398,""];
_heli setobjecttexture [399,""];
_heli setobjecttexture [400,""];
_heli setobjecttexture [401,""];
_heli setobjecttexture [402,""];
_heli setobjecttexture [403,""];
_heli setobjecttexture [404,""];
_heli setobjecttexture [405,""];
_heli setobjecttexture [406,""];
_heli setobjecttexture [407,""];
_heli setobjecttexture [408,""];
_heli setobjecttexture [1068,""];
_heli setobjecttexture [1069,""];
_heli setobjecttexture [1070,""];
_heli setobjecttexture [1071,""];
_heli setobjecttexture [1110,""];
_heli setobjecttexture [1111,""];
//hide unused TSD icons when FCR page is active
_heli setobjecttexture [287,""];
_heli setobjecttexture [288,""];
_heli setobjecttexture [289,""];
_heli setobjecttexture [290,""];
_heli setobjecttexture [291,""];
_heli setobjecttexture [292,""];
_heli setobjecttexture [293,""];
_heli setobjecttexture [294,""];
_heli setobjecttexture [295,""];
_heli setobjecttexture [296,""];
_heli setobjecttexture [297,""];
_heli setobjecttexture [298,""];
_heli setobjecttexture [299,""];
_heli setobjecttexture [300,""];
_heli setobjecttexture [301,""];
//cpg
_heli setobjecttexture [1092,""];
_heli setobjecttexture [1093,""];
_heli setobjecttexture [1094,""];
_heli setobjecttexture [1095,""];
_heli setobjecttexture [1096,""];
_heli setobjecttexture [1097,""];
_heli setobjecttexture [1098,""];
_heli setobjecttexture [1099,""];
_heli setobjecttexture [1100,""];
_heli setobjecttexture [1101,""];
_heli setobjecttexture [1102,""];
_heli setobjecttexture [1103,""];
_heli setobjecttexture [1104,""];
_heli setobjecttexture [1105,""];
_heli setobjecttexture [1106,""];
_heli setobjecttexture [1107,""];
_heli setobjecttexture [1108,""];
};

/////////////////////////////////////////////////////
/////////////RIGHT PILOT FCR/////////////////////////
/////////////////////////////////////////////////////

if(fza_ah64_pr_mpd == "fcr") then
{
	//_heli setobjecttexture [401,_pfzsel];
	//_heli setobjecttexture [402,_tfilter];
	//TSD//FCR/ICONS
	_targnum = 269;
	_targnumcpg = _targnum + 806;
	_objnum = 0;
	_targcount = count fza_ah64_fcrlist;
	if(_targcount > 99) then {_targcount = 99;};
	_targcount2 = [_targcount,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digitten;
	_targcount1 = [_targcount,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digit;
	_heli setobjecttexture [1128,_targcount1];
	_heli setobjecttexture [1129,_targcount2];
	_heli setobjecttexture [393,_hdgformat3];
	_heli setobjecttexture [394,_hdgformat2];
	_heli setobjecttexture [395,_hdgformat1];
	if(fza_ah64_targlos == 0) then
	{
		_heli setobjecttexture [1132,"\fza_ah64_us\tex\mpd\mpd_had_nolos.paa"];
	} else {
		_heli setobjecttexture [1132,""];
	};
	if(fza_ah64_agmode == 1) then
	{
		_heli setobjecttexture [303,"\fza_ah64_US\tex\mpd\air.paa"];
		_heli setobjecttexture [1126,"\fza_ah64_us\tex\mpd\air.paa"];
		_heli setobjecttexture [1127,""];
		_heli setobjecttexture [1130,""];
		_heli setobjecttexture [1131,""];
	} else {
		_heli setobjecttexture [303,"\fza_ah64_US\tex\mpd\grnd.paa"];
		_heli setobjecttexture [1127,"fza_ah64_us\tex\mpd\grnd.paa"];
		_heli setobjecttexture [1126,""];
		_heli setobjecttexture [1130,"\fza_ah64_us\tex\mpd\gunlimit.paa"];
		_heli setobjecttexture [1131,"\fza_ah64_us\tex\mpd\tads.paa"];
		_heli animate ["mpd_pr_mpd_had_apos_v",(_heli animationphase "tads")];
		_heli animate ["mpd_pr_mpd_had_apos_h",(_heli animationphase "tads_tur")];
	};

	{
		if(_targnum > 285) exitwith {};
		if(_targnum <= 285) then
		{
			_targnum = _targnum + 1;
			_targnumcpg = _targnum + 806;
			if(_targnum > 285) exitwith {};
			_objnum = _objnum + 1;
			_targzpos = 0;
			_adaunit = false;
			_i = _x;
			{if(_i iskindof _x) then {_adaunit = true;};} foreach fza_ah64_ada_units;

			_targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_gen.paa";
			
			if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_hc.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_hc.paa";};
			if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";};
			if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_tnk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_tnk.paa";};
			if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_whl.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_whl.paa";};
			if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada.paa";};
			if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\f16_rsc_fcr_gen.paa"];};

			if (_x in fza_ah64_currentpfz) then
			{
				if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_hc_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_hc_pfz.paa";};
				if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ac_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ac_pfz.paa";};
				if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_tnk_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_tnk_pfz.paa";};
				if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_whl_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_whl_pfz.paa";};
				if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada_pfz.paa";};
				if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_gen_pfz.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_gen_pfz.paa";};
			};

			if (_x == fza_ah64_mycurrenttarget) then
			{
				if (_x isKindOf "helicopter") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_hc_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_hc_trk.paa";};
				if (_x isKindOf "plane") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ac_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ac_trk.paa";};
				if (_x isKindOf "tank") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_tnk_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_tnk_trk.paa";};
				if (_x isKindOf "car") then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_whl_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_whl_trk.paa";};
				if (_adaunit) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_ada_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_ada_trk.paa";};
				if (!(_x isKindOf "car" || _x isKindOf "tank" || _x isKindOf "plane" || _x isKindOf "helicopter" || _adaunit)) then {_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_gen_trk.paa"]; _targicon = "\fza_ah64_US\tex\ICONS\ah64_gen_trk.paa";};
				_targzpos = 1;
			};

			if (_x in fza_ah64_shotat_list) then
			{
				_heli setobjecttexture [_targnum,"\fza_ah64_US\tex\ICONS\ah64_shotat.paa"];
				_targicon = "\fza_ah64_US\tex\ICONS\ah64_shotat.paa";
			};

			_heli setobjecttexture [_targnumcpg,_targicon];

			_theta = [_heli,(getposatl _heli select 0),(getposatl _heli select 1),(getposatl _x select 0),(getposatl _x select 1)] call fza_ah64_reldir;

			_targhead = _theta;

			if(_x == fza_ah64_mycurrenttarget) then
			{
				_targdir1 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digithun;
				_targdir2 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digitten;
				_targdir3 = [_targhead,"\fza_ah64_us\tex\CHAR\G"] call fza_ah64_digit;
				//_heli setobjecttexture [386,_targdir3];
				//_heli setobjecttexture [387,_targdir2];
				//_heli setobjecttexture [388,_targdir1];
			};

			if (_theta >= 180) then {_targhead = _theta - 360;} else {_targhead = _theta;};
			if(fza_ah64_agmode == 1) then
			{
				_targxpos = ((sin _targhead) * (((_heli distance _x) * 0.000125)*0.45))+0.5;
				_targypos = ((cos _targhead) * (((_heli distance _x) * 0.000125)*0.45))+0.5;
	
				if(_targxpos > 0.95) then {_targxpos = 0.95;};
				if(_targxpos < 0.1) then {_targxpos = 0.1;};
	
				if(_targypos > 0.95) then {_targypos = 0.95;};
				if(_targypos < 0.1) then {_targypos = 0.1;};
			} else {
				_targxpos = ((sin _targhead) * (((_heli distance _x) * 0.000125)*0.6))+0.5;
				_targypos = ((cos _targhead) * (((_heli distance _x) * 0.000125)*0.6))+0.2;
	
				if(_targxpos > 0.9) then {_targxpos = 0.9;};
				if(_targxpos < 0.1) then {_targxpos = 0.1;};
	
				if(_targypos > 0.8) then {_targypos = 0.8;};
				if(_targypos < 0.1) then {_targypos = 0.1;};
			};

			_objnumformat = format ["%1",_objnum];
			_objstrh = "mpd_pl_obj" + _objnumformat + "_h";
			_objstrv = "mpd_pl_obj" + _objnumformat + "_v";
			_objstrz = "mpd_pl_obj" + _objnumformat + "_z";
			if(driver _heli == player) then
			{
			_heli animate [_objstrh,_targxpos];
			_heli animate [_objstrv,_targypos];
			_heli animate [_objstrz,_targzpos];
			};
			if(gunner _heli == player) then
			{
			_objstrh = "mpd_gr_obj" + _objnumformat + "_h";
			_objstrv = "mpd_gr_obj" + _objnumformat + "_v";
			_objstrz = "mpd_gr_obj" + _objnumformat + "_z";
			_heli animate [_objstrh,_targxpos];
			_heli animate [_objstrv,_targypos];
			_heli animate [_objstrz,_targzpos];
			};
		};
	} foreach fza_ah64_dispfcrlist;
} else {
	_heli setobjecttexture [1126,""];
	_heli setobjecttexture [1127,""];
	_heli setobjecttexture [1128,""];
	_heli setobjecttexture [1129,""];
	_heli setobjecttexture [1130,""];
	_heli setobjecttexture [1131,""];
};

_targindi = _targnum + 1;
while {(_targindi < 287 && fza_ah64_pr_mpd == "fcr")} do
{
_heli setobjecttexture [_targindi,""];
_heli setobjecttexture [(_targindi + 806),""];
_targindi = _targindi + 1;
};

/////////////////////////////////////////////////////
////////////////END RIGHT PILOT FCR//////////////////
/////////////////////////////////////////////////////

//elimination of icons for PR
if(!(fza_ah64_pr_mpd == "tsd" || fza_ah64_pr_mpd == "fcr")) then
{
_heli setobjecttexture [270,""];
_heli setobjecttexture [271,""];
_heli setobjecttexture [272,""];
_heli setobjecttexture [273,""];
_heli setobjecttexture [274,""];
_heli setobjecttexture [275,""];
_heli setobjecttexture [276,""];
_heli setobjecttexture [277,""];
_heli setobjecttexture [278,""];
_heli setobjecttexture [279,""];
_heli setobjecttexture [280,""];
_heli setobjecttexture [281,""];
_heli setobjecttexture [282,""];
_heli setobjecttexture [283,""];
_heli setobjecttexture [284,""];
_heli setobjecttexture [285,""];
_heli setobjecttexture [286,""];
_heli setobjecttexture [287,""];
_heli setobjecttexture [288,""];
_heli setobjecttexture [289,""];
_heli setobjecttexture [290,""];
_heli setobjecttexture [291,""];
_heli setobjecttexture [292,""];
_heli setobjecttexture [293,""];
_heli setobjecttexture [294,""];
_heli setobjecttexture [295,""];
_heli setobjecttexture [296,""];
_heli setobjecttexture [297,""];
_heli setobjecttexture [298,""];
_heli setobjecttexture [299,""];
_heli setobjecttexture [300,""];
_heli setobjecttexture [301,""];
_heli setobjecttexture [393,""];
_heli setobjecttexture [394,""];
_heli setobjecttexture [395,""];
_heli setobjecttexture [1128,""];
_heli setobjecttexture [1129,""];
//gunner//

_heli setobjecttexture [1076,""];
_heli setobjecttexture [1077,""];
_heli setobjecttexture [1078,""];
_heli setobjecttexture [1079,""];
_heli setobjecttexture [1080,""];
_heli setobjecttexture [1081,""];
_heli setobjecttexture [1082,""];
_heli setobjecttexture [1083,""];
_heli setobjecttexture [1084,""];
_heli setobjecttexture [1085,""];
_heli setobjecttexture [1086,""];
_heli setobjecttexture [1087,""];
_heli setobjecttexture [1088,""];
_heli setobjecttexture [1089,""];
_heli setobjecttexture [1090,""];
_heli setobjecttexture [1091,""];
_heli setobjecttexture [1092,""];
_heli setobjecttexture [1093,""];
_heli setobjecttexture [1094,""];
_heli setobjecttexture [1095,""];
_heli setobjecttexture [1096,""];
_heli setobjecttexture [1097,""];
_heli setobjecttexture [1098,""];
_heli setobjecttexture [1099,""];
_heli setobjecttexture [1100,""];
_heli setobjecttexture [1101,""];
_heli setobjecttexture [1102,""];
_heli setobjecttexture [1103,""];
_heli setobjecttexture [1104,""];
_heli setobjecttexture [1105,""];
_heli setobjecttexture [1106,""];
_heli setobjecttexture [1107,""];

_heli setobjecttexture [1132,""];
};

///LEFT MPD CLEAR////

_targindi = _targnum + 1;
while {(_targindi < 1108 && fza_ah64_pl_mpd == "tsd")} do
{
_heli setobjecttexture [_targindi,""];
_targindi = _targindi + 1;
};

if(!(fza_ah64_pl_mpd == "tsd")) then
{
_heli setobjecttexture [409,""];
_heli setobjecttexture [410,""];
_heli setobjecttexture [411,""];
_heli setobjecttexture [412,""];
_heli setobjecttexture [413,""];
_heli setobjecttexture [414,""];
_heli setobjecttexture [415,""];
_heli setobjecttexture [416,""];
_heli setobjecttexture [417,""];
_heli setobjecttexture [418,""];
_heli setobjecttexture [419,""];
_heli setobjecttexture [420,""];
_heli setobjecttexture [421,""];
_heli setobjecttexture [422,""];
_heli setobjecttexture [423,""];
_heli setobjecttexture [424,""];
_heli setobjecttexture [425,""];
_heli setobjecttexture [426,""];
_heli setobjecttexture [427,""];
_heli setobjecttexture [428,""];
_heli setobjecttexture [429,""];
_heli setobjecttexture [430,""];
_heli setobjecttexture [431,""];
_heli setobjecttexture [1072,""];
_heli setobjecttexture [1073,""];
_heli setobjecttexture [1074,""];
_heli setobjecttexture [1075,""];
};

////END LEFT MPD///

};
///
if(!(fza_ah64_pl_mpd == "tsd") && !(fza_ah64_pr_mpd == "tsd") && !(fza_ah64_pr_mpd == "fcr")) then
{
_heli setobjecttexture [386,""];
_heli setobjecttexture [387,""];
_heli setobjecttexture [388,""];
_heli setobjecttexture [389,""];
_heli setobjecttexture [390,""];
_heli setobjecttexture [391,""];
_heli setobjecttexture [392,""];
///
_heli setobjecttexture [396,""];
_heli setobjecttexture [397,""];
_heli setobjecttexture [398,""];
_heli setobjecttexture [399,""];
_heli setobjecttexture [400,""];
_heli setobjecttexture [401,""];
_heli setobjecttexture [402,""];
_heli setobjecttexture [403,""];
_heli setobjecttexture [404,""];
_heli setobjecttexture [405,""];
_heli setobjecttexture [406,""];
_heli setobjecttexture [407,""];
_heli setobjecttexture [408,""];
_heli setobjecttexture [1068,""];
_heli setobjecttexture [1069,""];
_heli setobjecttexture [1070,""];
_heli setobjecttexture [1071,""];
_heli setobjecttexture [1110,""];
_heli setobjecttexture [1111,""];
_heli setobjecttexture [1132,""];
if(!(fza_ah64_pr_mpd == "ase")) then
{
_heli setobjecttexture [393,""];
_heli setobjecttexture [394,""];
_heli setobjecttexture [395,""];
///
_heli setobjecttexture [270,""];
_heli setobjecttexture [271,""];
_heli setobjecttexture [272,""];
_heli setobjecttexture [273,""];
_heli setobjecttexture [274,""];
_heli setobjecttexture [275,""];
_heli setobjecttexture [276,""];
_heli setobjecttexture [277,""];
_heli setobjecttexture [278,""];
_heli setobjecttexture [279,""];
_heli setobjecttexture [280,""];
_heli setobjecttexture [281,""];
_heli setobjecttexture [282,""];
_heli setobjecttexture [283,""];
_heli setobjecttexture [284,""];
_heli setobjecttexture [285,""];
_heli setobjecttexture [286,""];
_heli setobjecttexture [287,""];
_heli setobjecttexture [288,""];
_heli setobjecttexture [289,""];
_heli setobjecttexture [290,""];
_heli setobjecttexture [291,""];
_heli setobjecttexture [292,""];
_heli setobjecttexture [293,""];
_heli setobjecttexture [294,""];
_heli setobjecttexture [295,""];
_heli setobjecttexture [296,""];
_heli setobjecttexture [297,""];
_heli setobjecttexture [298,""];
_heli setobjecttexture [299,""];
_heli setobjecttexture [300,""];
_heli setobjecttexture [301,""];
///gunner///
_heli setobjecttexture [1076,""];
_heli setobjecttexture [1077,""];
_heli setobjecttexture [1078,""];
_heli setobjecttexture [1079,""];
_heli setobjecttexture [1080,""];
_heli setobjecttexture [1081,""];
_heli setobjecttexture [1082,""];
_heli setobjecttexture [1083,""];
_heli setobjecttexture [1084,""];
_heli setobjecttexture [1085,""];
_heli setobjecttexture [1086,""];
_heli setobjecttexture [1087,""];
_heli setobjecttexture [1088,""];
_heli setobjecttexture [1089,""];
_heli setobjecttexture [1090,""];
_heli setobjecttexture [1091,""];
_heli setobjecttexture [1092,""];
_heli setobjecttexture [1093,""];
_heli setobjecttexture [1094,""];
_heli setobjecttexture [1095,""];
_heli setobjecttexture [1096,""];
_heli setobjecttexture [1097,""];
_heli setobjecttexture [1098,""];
_heli setobjecttexture [1099,""];
_heli setobjecttexture [1100,""];
_heli setobjecttexture [1101,""];
_heli setobjecttexture [1102,""];
_heli setobjecttexture [1103,""];
_heli setobjecttexture [1104,""];
_heli setobjecttexture [1105,""];
_heli setobjecttexture [1106,""];
_heli setobjecttexture [1107,""];
_heli setobjecttexture [1108,""];
};
/////
_heli setobjecttexture [409,""];
_heli setobjecttexture [410,""];
_heli setobjecttexture [411,""];
_heli setobjecttexture [412,""];
_heli setobjecttexture [413,""];
_heli setobjecttexture [414,""];
_heli setobjecttexture [415,""];
_heli setobjecttexture [416,""];
_heli setobjecttexture [417,""];
_heli setobjecttexture [418,""];
_heli setobjecttexture [419,""];
_heli setobjecttexture [420,""];
_heli setobjecttexture [421,""];
_heli setobjecttexture [422,""];
_heli setobjecttexture [423,""];
_heli setobjecttexture [424,""];
_heli setobjecttexture [425,""];
_heli setobjecttexture [426,""];
_heli setobjecttexture [427,""];
_heli setobjecttexture [428,""];
_heli setobjecttexture [429,""];
_heli setobjecttexture [430,""];
_heli setobjecttexture [431,""];
_heli setobjecttexture [1072,""];
_heli setobjecttexture [1073,""];
_heli setobjecttexture [1074,""];
_heli setobjecttexture [1075,""];
///
_heli setobjecttexture [1126,""];
_heli setobjecttexture [1127,""];
_heli setobjecttexture [1128,""];
_heli setobjecttexture [1129,""];
_heli setobjecttexture [1130,""];
_heli setobjecttexture [1131,""];
};
///
sleep 0.03;
if((fza_ah64_pfzcache select 3) != (_prevcache select 3)) then
{
	if((fza_ah64_pfzcache select 1) == (name player) || (fza_ah64_pfzcache select 1) == "all") then {_heli vehiclechat "New cache data detected."};
};
};