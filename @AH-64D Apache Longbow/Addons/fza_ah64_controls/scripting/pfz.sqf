_heli = _this select 0;
_pfznum = _this select 1;
_pfz = [];
fza_ah64_pfz_counter = 0;
fza_ah64_curpfzarea = [];

if(fza_ah64_pfz_count == 0) exitwith {_heli vehiclechat "PFZ is not selected!";};

_markerarea = "fza_ah64_pfz" + format ["%1",_pfznum] + "m";
_markername = "fza_ah64_pfz" + format ["%1",_pfznum] + "n";

deleteMarkerLocal _markerarea;
deleteMarkerLocal _markername;

_heli vehiclechat format ["PFZ%1 ACTIVE",_pfznum];

onMapSingleClick "fza_ah64_curpfzarea = fza_ah64_curpfzarea + [_pos]; fza_ah64_pfz_counter = fza_ah64_pfz_counter + 1; true;";

waituntil {fza_ah64_pfz_counter == 2;};

onMapSingleClick "";

_heli vehiclechat format ["PFZ%1 CREATED",_pfznum];

_xsize = [(fza_ah64_curpfzarea select 0) select 0,0,0] distance [(fza_ah64_curpfzarea select 1) select 0,0,0];
_ysize = [(fza_ah64_curpfzarea select 0) select 1,0,0] distance [(fza_ah64_curpfzarea select 1) select 1,0,0];

_radius = _xsize;

if(_ysize > _xsize) then {_radius = _ysize;};

_xpos = (_xsize*0.5)+((fza_ah64_curpfzarea select 0) select 0);
_ypos = (_ysize*0.5)+((fza_ah64_curpfzarea select 0) select 1);
_xgreat = 0;
_ygreat = 0;

if(((fza_ah64_curpfzarea select 1) select 0) < ((fza_ah64_curpfzarea select 0) select 0)) then
{
_xpos = (_xsize*0.5)+((fza_ah64_curpfzarea select 1) select 0);
_xgreat = 1;
};

if(((fza_ah64_curpfzarea select 1) select 1) < ((fza_ah64_curpfzarea select 0) select 1)) then
{
_ypos = (_ysize*0.5)+((fza_ah64_curpfzarea select 1) select 1);
_ygreat = 1;
};

createmarkerlocal [_markerarea,[_xpos,_ypos]];
_markerarea setMarkerShapeLocal "RECTANGLE";
_markerarea setMarkerSizeLocal [_xsize*0.5,_ysize*0.5];
_markerarea setMarkerColorLocal "ColorWhite";

createmarkerlocal [_markername,[_xpos,_ypos]];
_markername setMarkerShapeLocal "ICON";
_markername setMarkerTypeLocal "Empty";
_markername setMarkerTextLocal "PFZ" + format ["%1",_pfznum];
_markername setMarkerColorLocal "ColorBlack";

{
if([(getposasl _x select 0),(getposasl _x select 1)] distance [_xpos,_ypos] < _radius) then
{
//if pfz +x and +y
if((getposasl _x select 0) > ((fza_ah64_curpfzarea select 0) select 0) && (getposasl _x select 0) < ((fza_ah64_curpfzarea select 1) select 0) && (getposasl _x select 1) > ((fza_ah64_curpfzarea select 0) select 1) && (getposasl _x select 1) < ((fza_ah64_curpfzarea select 1) select 1)) then {_pfz = _pfz + [_x];};
//if pfz -x and -y
if((getposasl _x select 0) < ((fza_ah64_curpfzarea select 0) select 0) && (getposasl _x select 0) > ((fza_ah64_curpfzarea select 1) select 0) && (getposasl _x select 1) < ((fza_ah64_curpfzarea select 0) select 1) && (getposasl _x select 1) > ((fza_ah64_curpfzarea select 1) select 1)) then {_pfz = _pfz + [_x];};
//if pfz +x and -y
if((getposasl _x select 0) > ((fza_ah64_curpfzarea select 0) select 0) && (getposasl _x select 0) < ((fza_ah64_curpfzarea select 1) select 0) && (getposasl _x select 1) < ((fza_ah64_curpfzarea select 0) select 1) && (getposasl _x select 1) > ((fza_ah64_curpfzarea select 1) select 1)) then {_pfz = _pfz + [_x];};
//if pfz -x and +y
if((getposasl _x select 0) < ((fza_ah64_curpfzarea select 0) select 0) && (getposasl _x select 0) < ((fza_ah64_curpfzarea select 1) select 0) && (getposasl _x select 1) > ((fza_ah64_curpfzarea select 0) select 1) && (getposasl _x select 1) < ((fza_ah64_curpfzarea select 1) select 1)) then {_pfz = _pfz + [_x];};
};
sleep 0.01;
} foreach fza_ah64_targetlist;

if(_pfznum == 1) then {fza_ah64_pfz1 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 2) then {fza_ah64_pfz2 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 3) then {fza_ah64_pfz3 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 4) then {fza_ah64_pfz4 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 5) then {fza_ah64_pfz5 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 6) then {fza_ah64_pfz6 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 7) then {fza_ah64_pfz7 = _pfz; fza_ah64_currentpfz = _pfz;};
if(_pfznum == 8) then {fza_ah64_pfz8 = _pfz; fza_ah64_currentpfz = _pfz;};