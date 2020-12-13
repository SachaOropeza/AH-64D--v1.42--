/* ----------------------------------------------------------------------------
Function: fza_fnc_weaponSubmunition

Description:
    Deploys submunitions

Parameters:
    _heli - The helicopter that fired it
    _unused - Unused
    _unused - Unused
    _unused - Unused
    _unused - Unused
    _missobj - The missile unit that fired it

Returns:
	Nothing

Examples:

Author:
	unknown
---------------------------------------------------------------------------- */
params ["_heli","","","","","","_missobj"];

_burstdist = 500;
_Tgpos = screentoworld[0.5, 0.5];

if !(typeOf _missobj == "fza_275_m255" || typeOf _missobj == "fza_275_m261") exitwith{};

waituntil{(_missobj distance _Tgpos < _burstdist && _missobj distance _heli > 400)};


if (typeOf _missobj == "fza_275_m255" || typeOf _missobj == "fza_275_m261") then {
    triggerAmmo _missobj;
};