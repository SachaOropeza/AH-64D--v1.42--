_heli = _this select 0;
fza_ah64_waypointfin = 0;

if(!(isNil "fza_ah64_waypointfin") && "fza_ah64_waypointfin" isEqualTo 0) exitwith {_heli vehiclechat "Waypoint configuration already active.";};

fza_mapclickchk = _this select 0;

_heli vehiclechat "Waypoint configuration activated.";

onMapSingleClick "[fza_mapclickchk,_pos] execvm '\fza_ah64_controls\scripting\nav\wp_position.sqf'; true;";

waituntil{(fza_ah64_waypointfin isEqualTo 1 || !(alive _heli))};

onMapSingleClick "";
_heli vehiclechat "Waypoints saved.";
