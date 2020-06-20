#include "\fza_ah64_controls\headers\script_common.hpp"
params ["_heli", "_system", "_control"];

if(_control == "brt") then {
	if (isnil "fza_ah64_mpdbrightness") then {
        fza_ah64_mpdbrightness = 1;
    };
    if (fza_ah64_mpdbrightness == 0.2) exitwith {
        fza_ah64_mpdbrightness = 1;
        _heli setobjecttexture[1189, ""];
    };
    if (fza_ah64_mpdbrightness == 0.4) exitwith {
        fza_ah64_mpdbrightness = 0.2;
        _heli setobjecttexture[1189, "\fza_ah64_US\tex\MPD\Brt1.paa"];
    };
    if (fza_ah64_mpdbrightness == 0.6) exitwith {
        fza_ah64_mpdbrightness = 0.4;
        _heli setobjecttexture[1189, "\fza_ah64_US\tex\MPD\Brt2.paa"];
    };
    if (fza_ah64_mpdbrightness == 1) exitwith {
        fza_ah64_mpdbrightness = 0.6;
        _heli setobjecttexture[1189, "\fza_ah64_US\tex\MPD\Brt3.paa"];
    };
};

if(_system == "lmpd") then {
	switch(fza_ah64_pl_mpd) do {
		case "dms": {
			[_heli, _system, _control] call fza_fnc_mpdLDMSHandleControl;
		};
		case "fuel": {
			[_heli, _system, _control] call fza_fnc_mpdLFUELHandleControl;
		};
		case "wca": {
			[_heli, _system, _control] call fza_fnc_mpdLWCAHandleControl;
		};
		case "wpn": {
			[_heli, _system, _control] call fza_fnc_mpdLWPNHandleControl;
		};
	};
};
if(_system == "rmpd") then {
	switch(fza_ah64_pr_mpd) do {
		case "ase": {
			[_heli, _system, _control] call fza_fnc_mpdRASEHandleControl;
		};
		case "dms": {
			[_heli, _system, _control] call fza_fnc_mpdRDMSHandleControl;
		};
		case "eng": {
			[_heli, _system, _control] call fza_fnc_mpdRENGHandleControl;
		};
		case "fcr": {
			[_heli, _system, _control] call fza_fnc_mpdRFCRHandleControl;
		};
		case "tsd": {
			[_heli, _system, _control] call fza_fnc_mpdRTSDHandleControl;
		};
	};
};