_jet = _this select 0;
_bomb = _this select 1;
if(!(local _bomb)) exitwith {};
_jetalt = getposasl _jet select 2;
_target = fza_ah64_mycurrenttarget;
_inittarg = objNull;
_basedir = direction _bomb;
_poweredmunition = 0;
_prox = 0;
_pdist = 10;
_pitch = 0;
_targaltfactor = 0;
_theta = 0;
_jetreldir = 0;
_hilimit = 340;
_lolimit = 20;
_dirrate = 0.5;
_loftcomplete = 0;
_abstheta = 0;
_abspitch = 0;
_cdirrate = 0;
_cprate = 0;
_speedfactor = 1;
_time = 1;
_basetargdist = _bomb distance _target;
_designator = fza_ah64_hfmode;
_laserguided = 0;
_attached = 1;
_launchmode = fza_ah64_ltype;

fza_ah64_shotat_list = fza_ah64_shotat_list + [_target];

//LASER OFF = AGM 114K WILL NOT TRACK ANYMORE

if(_bomb isKindOf "fza_agm114k" && !(fza_ah64_mycurrenttarget iskindof "Lasertarget")) exitwith{};

if(_bomb iskindof "fza_agm114k" || _bomb iskindof "fza_fim92") then
{
_target = cursortarget;
if(isNull cursortarget) then
{
_inittarg = "EmptyDetector" createvehiclelocal [(getposatl _bomb select 0) + (sin (getdir _bomb) * 7000),(getposatl _bomb select 1) + (cos (getdir _bomb) * 7000),0];
_target = _inittarg;
};
};

if (_launchmode == "direct.sqf" && (_bomb isKindOf "fza_agm114l" || _bomb isKindOf "fza_agm114k")) exitwith {};

if (_bomb isKindOf "fza_agm114k" && _designator != _jet && !(_launchmode == "direct.sqf" || _launchmode == "lobl.sqf")) then
{
		_target = _designator;
		_basetargdist = _bomb distance _target;
};

_bombpb = _bomb call fza_ah64_getpb;
_pitch = _bombpb select 0;
_bank = _bombpb select 1;

_bomb setdir (180 + _basedir);
sleep 0.01;

_vecdx = sin(_basedir) * cos(_pitch);
_vecdy = cos(_basedir) * cos(_pitch);
_vecdz = sin(_pitch);

_vecux = cos(_basedir) * cos(_pitch) * sin(_bank);
_vecuy = sin(_basedir) * cos(_pitch) * sin(_bank);
_vecuz = cos(_pitch) * cos(_bank);

_bomb setVectorDirAndUp [ [_vecdx,_vecdy,_vecdz], [_vecux,_vecuy,_vecuz] ];

if (!(isnil "fza_ah64_miscam")) then {_bomb switchcamera "external"; _bombspeed = [_bomb] execvm "\fza_ah64_controls\scripting\speedcheck.sqf";};

if ((fza_ah64_targlos == 0 && typeof _bomb == "fza_agm114l" && _launchmode == "lobl.sqf") || (_launchmode == "lobl.sqf" && typeof _bomb == "fza_agm114l" && fza_ah64_fcrstate == 0)) exitwith {fza_ah64_shotat_list = fza_ah64_shotat_list - [_target];};

fza_ah64_114sc = fza_ah64_114sc + [_bomb];

_curarrayidx = count fza_ah64_misguidearray;

_posdetector = "EmptyDetector" createvehiclelocal (getpos _target);
_posdetector attachto [_target,[0,0,0]];

if(fza_ah64_targlos == 0 && typeof _bomb == "fza_agm114l" && _launchmode != "lobl.sqf") then
{
detach _posdetector;
_attached = 0;
};

fza_ah64_misguidearray = fza_ah64_misguidearray + [[_bomb,_target,_launchmode,_designator,_curarrayidx,_posdetector,_jetalt,_basetargdist]];

fza_ah64_firedist = (_bomb distance _target) * 0.046;

while {(alive _bomb)} do
{

if (_attached == 1 && fza_ah64_targlos == 0 && (_bomb isKindOf "fza_agm114k" || _bomb isKindOf "fza_agm114c")) then
{
detach _posdetector;
_attached = 0;
};

if (_attached == 0 && fza_ah64_targlos == 1 && (_bomb isKindOf "fza_agm114k" || _bomb isKindOf "fza_agm114c")) then
{
_posdetector attachto [_target,[0,0,0]];
_attached = 1;
};

if ((_bomb isKindOf "fza_agm114k" || _bomb isKindOf "fza_agm114c") && _designator != _jet && isNull _target) then
{
fza_ah64_shotat_list = fza_ah64_shotat_list - [_target];
_curarrayidx = 0;

{
if((_x select 0) == _bomb) exitwith {};
_curarrayidx = _curarrayidx + 1;
} foreach fza_ah64_misguidearray;

fza_ah64_misguidearray set [(_curarrayidx),-1];
fza_ah64_misguidearray = fza_ah64_misguidearray - [-1];
sleep 0.03;
_target = _designator;
detach _posdetector;
_attached = 0;
sleep 0.03;
_curarrayidx = count fza_ah64_misguidearray;
_basetargdist = _bomb distance _target;
fza_ah64_misguidearray = fza_ah64_misguidearray + [[_bomb,_target,_launchmode,_designator,_curarrayidx,_posdetector,_jetalt,_basetargdist]];
fza_ah64_shotat_list = fza_ah64_shotat_list + [_target];
};

if ((_bomb isKindOf "fza_agm114k" || _bomb isKindOf "fza_agm114c") && _designator == _jet && fza_ah64_targlos == 1 && !(_target == cursortarget)) then
{
fza_ah64_shotat_list = fza_ah64_shotat_list - [_target];
_curarrayidx = 0;

{
if((_x select 0) == _bomb) exitwith {};
_curarrayidx = _curarrayidx + 1;
} foreach fza_ah64_misguidearray;

fza_ah64_misguidearray set [(_curarrayidx),-1];
fza_ah64_misguidearray = fza_ah64_misguidearray - [-1];
sleep 0.03;
_target = cursortarget;
detach _posdetector;
_attached = 0;
sleep 0.03;
_curarrayidx = count fza_ah64_misguidearray;
_basetargdist = _bomb distance _target;
fza_ah64_misguidearray = fza_ah64_misguidearray + [[_bomb,_target,_launchmode,_designator,_curarrayidx,_posdetector,_jetalt,_basetargdist]];
fza_ah64_shotat_list = fza_ah64_shotat_list + [_target];
};

sleep 0.05;
};

if (!(isnil "fza_ah64_miscam")) then 
{
sleep 3;
(vehicle player) switchcamera "external";
};

fza_ah64_114sc = fza_ah64_114sc - [_bomb];
fza_ah64_shotat_list = fza_ah64_shotat_list - [_target];

_curarrayidx = 0;

{
if((_x select 0) == _bomb) exitwith {};
_curarrayidx = _curarrayidx + 1;
} foreach fza_ah64_misguidearray;

fza_ah64_misguidearray set [(_curarrayidx),-1];
fza_ah64_misguidearray = fza_ah64_misguidearray - [-1];
detach _posdetector;
deletevehicle _posdetector;
if(!(isNull _inittarg)) then {deletevehicle _inittarg;};