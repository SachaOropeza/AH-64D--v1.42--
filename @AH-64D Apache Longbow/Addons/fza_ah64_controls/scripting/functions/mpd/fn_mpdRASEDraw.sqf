#include "\fza_ah64_controls\headers\selections.h"
params ["_heli"];



/*TODO: When chaff re-added, add here
_heli setobjecttexture [SEL_MPD_PR_ASE_CSEL, "\fza_ah64_us\tex\mpd\chaff.paa"];
[_heli, 0, "\fza_ah64_us\tex\char\g", SEL_DIGITS_MPD_PR_ASE_CC] call fza_fnc_drawNumberSelections;
if (fza_ah64_cmsel == 1) then {
	_heli setobjecttexture [SEL_MPD_PR_ASE_SALVO, "\fza_ah64_us\tex\char\g4_ca.paa"];
} else {
	_heli setobjecttexture [SEL_MPD_PR_ASE_SALVO, "\fza_ah64_us\tex\char\g1_ca.paa"];
};
*/

_heli setobjecttexture [SEL_MPD_PR_ASE_CSEL, "\fza_ah64_us\tex\mpd\chaff.paa"];

_flareCount = 0;
{
	_x params ["_className", "_turretPath", "_ammoCount"];
	if (_className == "60Rnd_CMFlareMagazine" && _turretPath isEqualTo [-1]) then {
		_flareCount = _flareCount + _ammoCount;
	};
} forEach magazinesAllTurrets _heli;

[_heli, _flareCount/2, "\fza_ah64_us\tex\char\g", SEL_DIGITS_MPD_PR_ASE_CC] call fza_fnc_drawNumberSelections;

_heli setobjecttexture [SEL_MPD_PR_ASE_CSEL, ""];

if (weaponState [_heli, [-1], "fza_CMFlareLauncher"] # 2 != "Single") then {
	_heli setobjecttexture [SEL_MPD_PR_ASE_SALVO, "\fza_ah64_us\tex\char\g4_ca.paa"];
} else {
	_heli setobjecttexture [SEL_MPD_PR_ASE_SALVO, "\fza_ah64_us\tex\char\g1_ca.paa"];
};

[_heli, round getDir _heli, SEL_DIGITS_MPD_PR_TSD_HDG] call fza_fnc_drawNumberSelections;

private _aserange = (abs(1 / (_heli getVariable "fza_ah64_rangesetting"))) * 0.001;
[_heli, _aserange, "\fza_ah64_us\tex\char\g", SEL_DIGITS_MPD_PR_ASE_DIST] call fza_fnc_drawNumberSelections;

_heli setObjectTexture [SEL_MPD_PR_ASE_AUTPG,
	switch (_heli getVariable "fza_ah64_aseautopage") do {
		case 0 : { "\fza_ah64_us\tex\mpd\ase_off.paa" };
		case 1 : { "\fza_ah64_us\tex\mpd\ase_track.paa" };
		case 2 : { "\fza_ah64_us\tex\mpd\ase_launch.paa" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_RJOFF, 
	switch (_heli getVariable "fza_ah64_rfjon") do {
		case 0 : { "\fza_ah64_us\tex\mpd\OFF.paa" };
		case 1 : { "" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_IJOFF, 
	switch (_heli getVariable "fza_ah64_irjon") do {
		case 0 : { "\fza_ah64_us\tex\mpd\OFF.paa" };
		case 1 : { "" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_RJAUT, 
	switch (_heli getVariable "fza_ah64_rfjstate") do {
		case 0 : { "" };
		case 1 : { "\fza_ah64_us\tex\mpd\STBY.paa" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_IJAUT, 
	switch (_heli getVariable "fza_ah64_irjstate") do {
		case 0 : { "" };
		case 1 : { "\fza_ah64_us\tex\mpd\STBY.paa" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_RJON, 
	switch (_heli getVariable "fza_ah64_rfjon") do {
		case 0 : { "" };
		case 1 : { "\fza_ah64_us\tex\mpd\OPER.paa" };
	}
];

_heli setObjectTexture [SEL_MPD_PR_ASE_IJON, 
	switch (_heli getVariable "fza_ah64_irjon") do {
		case 0 : { "" };
		case 1 : { "\fza_ah64_us\tex\mpd\OPER.paa" };
	}
];

private _firstSelection = if (driver _heli == player) then {SEL_MPD_PL_OBJ1} else {SEL_MPD_GR_OBJ1};
private _lastSelection = if (driver _heli == player) then {SEL_MPD_PL_OBJ32} else {SEL_MPD_GR_OBJ32};

private ["_sel", "_iconPrefix", "_iconSuffix", "_heading", "_distance", "_x", "_y"];
private _seat = if (driver _heli == player) then {"pl"} else {"gr"};

fza_ah64_asethreatsdraw = fza_ah64_targetlist; {
	_i = _x;
	fza_ah64_asethreatsdraw = fza_ah64_asethreatsdraw - [_i];
	fza_ah64_asethreatsdraw = fza_ah64_asethreatsdraw - allDead; {
		if (_i iskindof _x) then {
			fza_ah64_asethreatsdraw = fza_ah64_asethreatsdraw + [_i];
		};
	}
	foreach fza_ah64_ada_units;
	if (side _i == side _heli) then {
		fza_ah64_asethreatsdraw = fza_ah64_asethreatsdraw - [_i];
	};
}
foreach fza_ah64_asethreatsdraw;

private _objects = fza_ah64_asethreatsdraw apply {
	private _iconformat = "\fza_ah64_US\tex\ICONS\U";
	private _iconsuffix = "D.paa";
	private _priority = 0;

	if (_x iskindof "rhs_zsutank_base") then {
		_iconformat = "\fza_ah64_US\tex\ICONS\23";
	};
	if (_x iskindof "O_APC_Tracked_02_AA_F") then {
		_iconformat = "\fza_ah64_US\tex\ICONS\19";
	};

	if (_heli == assignedTarget _x || _x AimedAtTarget[_heli] > 0.1) then {
		_iconsuffix = "T.paa";
	};
	if (_x in fza_ah64_threatfiring) then {
		_iconsuffix = "L.paa";
		_priority = 1;
	};

	[_x, _iconformat + _iconsuffix, _priority];
};

[_heli, _objects, true, (_heli getVariable "fza_ah64_rangesetting") * 0.4, [0.5,0.5]] call fza_fnc_mpdUpdatePoints;