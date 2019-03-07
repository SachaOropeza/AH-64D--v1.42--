_heli = _this select 0;

private _map = getText (configFile >> "CfgWorlds" >> worldName >> "pictureMap");

fza_ah64_maplist = [_map];

_world_size = [] call BIS_fnc_mapSize;

fza_ah64_mapsizearea = _world_size;

_mapcount = count fza_ah64_maplist;

if(fza_ah64_tsdmap == _mapcount) exitwith {fza_ah64_tsdmap = 0;};
fza_ah64_tsdmap = fza_ah64_tsdmap + 1;
fza_ah64_currentmap = fza_ah64_maplist select (fza_ah64_tsdmap - 1);

_heli setobjecttexture [270,"\fza_ah64_US\tex\mpd\ownship_ca.paa"];
_heli setobjecttexture [1076,"\fza_ah64_US\tex\mpd\ownship_ca.paa"];