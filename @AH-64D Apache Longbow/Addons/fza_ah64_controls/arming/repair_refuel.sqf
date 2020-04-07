_heli = _this select 0;

/*
script_handler = [] execVM "\fza_ah64_controls\arming\loadweps.sqf";
waitUntil { scriptDone script_handler };
*/

_heli vehiclechat "Refueling and repairs requested, this will take 4 minutes.";
uiSleep 1;
_heli vehiclechat "Refueling in progress (0%)...";
uiSleep 60;
_heli vehiclechat "Refueling in progress (25%)...";
uiSleep 60;
_heli vehiclechat "Refueling in progress (50%)...";
uiSleep 60;
_heli vehiclechat "Refueling in progress (75%)...";
uiSleep 60
;
_heli setdammage 0;
_heli setfuel 1;
fza_ah64_fuelsave = 1;

_heli removemagazine "fza_ah64_firepdisch";
_heli removemagazinesturret ["fza_ah64_firepdisch",[-1]];
_heli removemagazine "fza_ah64_firerdisch";
_heli removemagazinesturret ["fza_ah64_firerdisch",[-1]];
uiSleep 1;
_heli vehiclechat "Repaired and refueled.";