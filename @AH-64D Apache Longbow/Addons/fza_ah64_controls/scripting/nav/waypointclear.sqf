_heli = _this select 0;

if(isNil "fza_ah64_waypointdata") exitwith {_heli vehiclechat "waypoints are not programmed.";};

_num = (count fza_ah64_waypointdata) + 1;

while {(_num > 0)} do
{
_num = _num - 1;
_markerstringc = format ["%1",_num];
_markerstring = "fza_ah64_markstring" + _markerstringc;
deleteMarkerLocal _markerstring;
sleep 0.1;
};

"fza_ah64_BaseMarker" setMarkerPosLocal [(getpos _heli select 0),(getpos _heli select 1)];
fza_ah64_wpmarkers = ["fza_ah64_BaseMarker"];

fza_ah64_waypointdata = [getpos _heli];

_heli vehiclechat "Waypoints cleared.";