/* ----------------------------------------------------------------------------
Function: fza_fnc_damageM230

Description:
    Called upon M230 chaingun overheating. Decides whether it should jam.

Parameters:
    _heli - The helicopter to modify
    _system - the *HitPoint* that was damaged.

Returns:
	Nothing

Examples:
	--- Code
    [_heli] call fza_fnc_damageM230
	---

Author:
	Unknown
---------------------------------------------------------------------------- */
params ["_heli"];

_heatfactor = fza_ah64_gunheat * 0.1;
_heatchance = _heatfactor * 0.999;
if (_heatfactor > 60) then {
    _heatchance = _heatfactor * 0.99;
};
if (_heatfactor > 120) then {
    _heatchance = _heatfactor * 0.98;
};
if (_heatfactor > 180) then {
    _heatchance = _heatfactor * 0.96;
};
if (_heatfactor > 240) then {
    _heatchance = _heatfactor * 0.94;
};
if (_heatfactor > 300) then {
    _heatchance = _heatfactor * 0.91;
};
if (_heatfactor > 360) then {
    _heatchance = _heatfactor * 0.88;
};
if (_heatfactor > 420) then {
    _heatchance = _heatfactor * 0.85;
};
if (_heatfactor > 480) then {
    _heatchance = _heatfactor * 0.82;
};
if (_heatfactor > 540) then {
    _heatchance = _heatfactor * 0.79;
};
if (_heatfactor > 600) then {
    _heatchance = _heatfactor * 0.75;
};
if (_heatfactor > 660) then {
    _heatchance = _heatfactor * 0.71;
};
if (_heatfactor > 720) then {
    _heatchance = _heatfactor * 0.67;
};
if (_heatfactor > 780) then {
    _heatchance = _heatfactor * 0.62;
};
if (_heatfactor > 840) then {
    _heatchance = _heatfactor * 0.57;
};
if (_heatfactor > 900) then {
    _heatchance = _heatfactor * 0.51;
};
if (_heatfactor > 960) then {
    _heatchance = _heatfactor * 0.45;
};
if (_heatfactor > 1020) then {
    _heatchance = _heatfactor * 0.39;
};
if (_heatfactor > 1080) then {
    _heatchance = _heatfactor * 0.32;
};
if (_heatfactor > 1140) then {
    _heatchance = _heatfactor * 0.25;
};
if (_heatfactor > 1200) then {
    _heatchance = _heatfactor * 0.18;
};
_rand = random _heatfactor;

if (_rand > _heatchance) then {
    ["fza_ah64_bt_gun", 0.5, "fza_ah64_bt_jammed", 1] spawn fza_fnc_playAudio;
    _heli removemagazine "fza_m230_1200";
    _heli removemagazine "fza_m230_300";
    _heli addmagazine "fza_ah64_gun_jam";
};