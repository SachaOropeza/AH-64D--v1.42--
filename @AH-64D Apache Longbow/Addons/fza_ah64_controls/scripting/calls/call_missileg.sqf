if(count fza_ah64_misguidearray < 1) exitwith {};
private ["_jet","_bomb","_target","_launchmode","_designator","_bombarray","_posdetector","_jetalt","_basetargdist"];
_jet = _this select 0;
_bomb = _this select 1;
_target = _this select 2;
_launchmode = _this select 3;
_designator = _this select 4;
_bombarray = _this select 5;
_posdetector = _this select 6;
_jetalt = _this select 7;
_basetargdist = _this select 8;
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
_dirrate = 0.1;
_loftcomplete = 0;
_abstheta = 0;
_abspitch = 0;
_cdirrate = 0;
_cprate = 0;
_speedfactor = 1;
_mistime = 1;
_laserguided = 0;
_attached = 1;

if((_bomb iskindof "fza_agm114c" || _bomb iskindof "fza_agm114k") && !(isNull cursortarget)) then {_target = cursortarget;};

if (!(_bomb isKindOf "fza_agm114l" || _bomb isKindOf "fza_agm114k" || _bomb isKindOf "fza_agm114c" || _bomb isKindOf "fza_fim92")) exitwith {};

if (_bomb isKindOf "fza_fim92") then {_hilimit = 270; _lolimit = 90; _poweredmunition = 1; _prox = 1; _pdist = 15; _dirrate = 6.25;};

if (typeOf _bomb == "fza_agm114l") then {_hilimit = 330; _lolimit = 30; _poweredmunition = 1; _dirrate = 5.5; _laserguided = 0;};
if (typeOf _bomb == "fza_agm114k") then {_hilimit = 330; _lolimit = 30; _poweredmunition = 1; _dirrate = 5.7; _laserguided = 1;};
if (typeOf _bomb == "fza_agm114c") then {_hilimit = 330; _lolimit = 30; _poweredmunition = 1; _dirrate = 5.7; _laserguided = 1;};

if (_launchmode == "direct.sqf" && (_bomb isKindOf "fza_agm114l" || _bomb isKindOf "fza_agm114k")) exitwith {};

_bombpb = _bomb call fza_ah64_getpb;
_pitch = _bombpb select 0;
_bank = _bombpb select 1;

_dir = direction _bomb;
_basedir = _dir;

//CALCULATE LEAD FOR TARGET VELOCITY

_relvel = sqrt((((velocity _bomb select 0)-(velocity _target select 0))^2)+(((velocity _bomb select 1)-(velocity _target select 1))^2)+(((velocity _bomb select 2)-(velocity _target select 2))^2));
_magvel = sqrt(((velocity _target select 0)^2)+((velocity _target select 1)^2)+((velocity _target select 2)^2));
if(_relvel == 0) then {_relvel = 1;};
_mistime = (_bomb distance _target) / (_relvel);
_distfactor = _magvel * _mistime;

_htfactor = _target modelToWorldVisual (_target selectionposition "zamerny");
_finalX = (getposasl _posdetector select 0) + ((Sin ((velocity _target select 0) atan2 (velocity _target select 1))) * (_distfactor));
_finaly = (getposasl _posdetector select 1) + ((Cos ((velocity _target select 0) atan2 (velocity _target select 1))) * (_distfactor));
_targetpb = _target call fza_ah64_getpb;
_targetp = _targetpb select 0;
_htfactor = _htfactor select 2;
if(_htfactor > 1) then {_htfactor = 1;};
_htfactor2 = (_bomb distance _target) * 0.005;
_finalZ = (getposasl _posdetector select 2) + ((sin ((velocity _target select 2) atan2 (sqrt((velocity _target select 0)^2+(velocity _target select 1)^2)))) * (_distfactor));
if((speed _target < 1 && speed _target > -1) || _bomb distance _target < 50) then {_finalX = (getposasl _posdetector select 0); _finalY = (getposasl _posdetector select 1); _finalZ = (getposasl _posdetector select 2);};
if(getpos _target select 2 < 5) then {_finalZ = (getposasl _posdetector select 2) + _htfactor2;};
if(_finalZ < 0) then {_finalZ = _htfactor2;};

//PITCH AND BANK

_bombpb = _bomb call fza_ah64_getpb;
_pitch = _bombpb select 0;
_bank = _bombpb select 1;

//DIRECTION CORRECTION

_speedfactor = speed _bomb;
if(speed _bomb < 1) then {_speedfactor = 1;};
_finalX = _finalX + ((sin _dir) * (2000 / _speedfactor));
_finalY = _finalY + ((cos _dir) * (2000 / _speedfactor));
_jdamtarget = [_finalX,_finaly,_finalZ];
_bombpos = getposasl _bomb;

_jetreldir = [_jet,(getposasl _jet select 0),(getposasl _jet select 1),(_jdamtarget select 0),(_jdamtarget select 1)] call fza_ah64_reldir;

if((_laserguided == 1 && _jetreldir > 120 && _jetreldir < 240) || (_laserguided == 1 && "fza_ah64_tads_fail" in magazines _jet && _designator == _jet)) exitwith
{
};

_theta = [_bomb,(_bombpos select 0),(_bombpos select 1),(_jdamtarget select 0),(_jdamtarget select 1)] call fza_ah64_reldir;

if(_theta < _hilimit && _theta > _lolimit) exitwith
{

_vecdx = sin(_dir) * cos(-60);
_vecdy = cos(_dir) * cos(-60);
_vecdz = sin(-60);

_vecux = cos(_dir) * cos(-60) * sin(0);
_vecuy = sin(_dir) * cos(-60) * sin(0);
_vecuz = cos(-60) * cos(0);

_bomb setVectorDirAndUp [ [_vecdx,_vecdy,_vecdz], [_vecux,_vecuy,_vecuz] ];
};

//PITCH

if(isnil "_bombpos") then {_bombpos = [0,0,0]; _jdamtarget = [0,0,0];};
_bombtargdist = [(_jdamtarget select 0),(_jdamtarget select 1),(_jdamtarget select 2)] distance [(_bombpos select 0),(_bombpos select 1),(_jdamtarget select 2)];
_relpitch = ((_jdamtarget select 2) - (_bombpos select 2)) atan2 (_bombtargdist);
_thetapitch = (_relpitch - _pitch);

//DEBUG

//player globalchat format ["Pitch %1 Bombpitch %2 Direction %3 Altfactor %4",_thetapitch,_pitch,_theta,_targaltfactor];

_cdirrate = _dirrate;
_cprate = _dirrate;
if(_dirrate > _theta) then {_cdirrate = _dirrate * (_theta / _dirrate);};
if(_dirrate > (360 - _theta)) then {_cdirrate = _dirrate * ((360 - _theta) / _dirrate);};
if(_dirrate > (abs _thetapitch)) then {_cprate = _dirrate * ((abs _thetapitch) / _dirrate);};

if(_theta > 359.9 && _theta < 0.1) then {_dir = _dir;};
if(_theta > 180 && _theta < 359.9) then {_dir = _dir - _cdirrate;};
if(_theta < 180 && _theta > 0.1) then {_dir = _dir + _cdirrate;};
_basepitch = _pitch;
if(_thetapitch > -0.1 && _thetapitch < 0.1) then {_pitch = _pitch;};
if(_thetapitch < -0.1) then {_pitch = _pitch - _cprate;};
if(_thetapitch > 0.1) then {_pitch = _pitch + _cprate;};

_relalt = (getposasl _bomb select 2) - _jetalt;
_maxpitch = 30;
_pfactor = 1.2;
_maxalt = _basetargdist * 0.07;
if(_launchmode == "lobl.sqf") then {_maxpitch = ((_bomb distance _posdetector) * 0.005625);};
if(_launchmode == "loaldir.sqf") then {_maxpitch = ((_bomb distance _posdetector) * 0.004375); _maxalt = _basetargdist * 0.034;  _pfactor = 0.7;};
if(_launchmode == "loallo.sqf") then {_maxpitch = 70; _pfactor = 2; _maxalt = _basetargdist * 0.05;};
if(_launchmode == "loalhi.sqf") then {_maxpitch = 55; _pfactor = 1.5; _maxalt = _basetargdist * 0.075;};

if(typeOf _bomb == "fza_agm114l" || _bomb isKindOf "fza_agm114k") then {_maxpitch = 30; _pfactor = 1.2; _maxalt = _basetargdist * 0.106;};

if(_loftcomplete == 0 && _basepitch < _maxpitch && (typeOf _bomb == "fza_agm114l" || _bomb isKindOf "fza_agm114k") && _bomb distance _target > (_relalt+((_relalt)/((_relalt)*0.0013))) && (_relalt) < _maxalt) then
{
_pitch = _basepitch + _pfactor;
};

if(_loftcomplete == 0 && _basepitch > 0 && (typeOf _bomb == "fza_agm114l" || _bomb isKindOf "fza_agm114k") && _bomb distance _target > (_relalt+((_relalt)/((_relalt)*0.0013))) && (_relalt) >= _maxalt) then
{
_pitch = _basepitch - 2;
if(_pitch <= 5) then
{
_loftcomplete = 1;
};
};

if(_loftcomplete == 1 && (typeOf _bomb == "fza_agm114l" || _bomb isKindOf "fza_agm114k") && _bomb distance _target > (_relalt+((_relalt)/((_relalt)*0.0013)))) then
{
_pitch = 2;
};

if(_designator == _jet && _bomb isKindOf "fza_agm114k" && fza_ah64_targlos == 0 && _bomb distance _target < (_relalt+((_relalt)/((_relalt)*0.0013)))) exitwith
{
_pitch = _bombpb select 0;
_dir = _basedir;
};

if(_bomb isKindOf "fza_fim92" && (getposasl _bomb select 2) < ((_jetalt)+25) && _bomb distance _target > 1000) then {_pitch = _basepitch + 1;};

_bank = 0;


_vecdx = sin(_dir) * cos(_pitch);
_vecdy = cos(_dir) * cos(_pitch);
_vecdz = sin(_pitch);

_vecux = cos(_dir) * cos(_pitch) * sin(_bank);
_vecuy = sin(_dir) * cos(_pitch) * sin(_bank);
_vecuz = cos(_pitch) * cos(_bank);

_bomb setVectorDirAndUp [ [_vecdx,_vecdy,_vecdz], [_vecux,_vecuy,_vecuz] ];

if(_bomb distance _target < _pdist && _prox == 1) then
{
_bomb setvelocity [0,0,0];
_bomb setpos (_target modelToWorldVisual (_target selectionposition "zamerny"));
};