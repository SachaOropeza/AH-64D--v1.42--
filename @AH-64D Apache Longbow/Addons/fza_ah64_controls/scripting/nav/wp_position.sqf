_heli = _this select 0;
_position = _this select 1;

_markerstringc = format ["%1",count fza_ah64_waypointdata];
_markerstring = "fza_ah64_markstring" + _markerstringc;
fza_ah64_wpmarkers = fza_ah64_wpmarkers + [_markerstring];

if(isNil "fza_ah64_waypointdata") then
{
	fza_ah64_waypointdata = [getpos _heli];
	_fza_ah64_wpbasemarker = createMarkerLocal ["fza_ah64_BaseMarker", [(getpos _heli select 0),(getpos _heli select 1)]];
	"fza_ah64_BaseMarker" setMarkerShapeLocal "ICON";
	"fza_ah64_BaseMarker" setMarkerTypeLocal "Empty";
	"fza_ah64_BaseMarker" setMarkerColorLocal "ColorGreen";
	fza_ah64_wpmarkers = ["fza_ah64_BaseMarker"];
};

if(count fza_ah64_waypointdata > 30) exitwith {_heli vehiclechat "Waypoint limits reached.";};

fza_ah64_waypointdata = fza_ah64_waypointdata + [[(_position select 0),(_position select 1),0]];

_marker = createMarkerLocal [_markerstring, [(_position select 0),(_position select 1)]];
_markerstring setMarkerShapeLocal "ICON";
_markerstring setMarkerTypeLocal "Empty";
_markerstring setMarkerColorLocal "ColorGreen";
_markerstring setMarkerPosLocal [(_position select 0),(_position select 1)];
_markerstring setMarkerTextLocal _markerstringc;