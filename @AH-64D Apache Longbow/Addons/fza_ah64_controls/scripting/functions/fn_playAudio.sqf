/* ----------------------------------------------------------------------------
Function: fza_fnc_playAudio

Description:
    Play an audio message comprising of multiple parts

    The delay needed to compensate for the playing of each clip is not taken into account automatically. This also needs to be done with the delays.

    There must be an equal number of sounds and delays.

Parameters:
    _system - *CfgSounds* class to play
    _delay1 - The delay between this and the next part of the message in seconds
    _subsystem - *CfgSounds* class to play
    _delay2 - The delay between this and the next part of the message in seconds
    _state - *CfgSounds* class to play
    _delay3 - The delay between this and the next part of the message in seconds

Returns:
    Nothing

Examples:
    This is a valid 2 part message:
    --- Code
    ["fza_ah64_bt_rotorrpm", 1.7, "fza_ah64_bt_high", 1] spawn fza_fnc_playAudio;
    ---

    This is a valid 1 part message:
    --- Code
    ["fza_ah64_tads_failure_1", 5] spawn fza_fnc_playAudio;
    ---

    This is bad usage, you could end up with overlapping sounds if you do this.
    --- Code
    ["fza_ah64_bt_rotorrpm"] spawn fza_fnc_playAudio;
    ---

Author:
	Unknown, AngusLogan02
---------------------------------------------------------------------------- */
if (!(alive player) || !(vehicle player isKindOf "fza_ah64base")) exitwith {};
_array = _this;
if (count _array < 3) then {
    _array = _array + ["", 0, "", 0];
};
if (count _array < 5) then {
    _array = _array + ["", 0];
};
_system = _array select 0;
_delay1 = _array select 1;
_subsystem = _array select 2;
_delay2 = _array select 3;
_state = _array select 4;
_delay3 = _array select 5;

if (isNil "fza_ah64_bt_soundplay") then {
    fza_ah64_bt_soundplay = 0;
};
waituntil {
    fza_ah64_bt_soundplay == 0;
};
fza_ah64_bt_soundplay = 1;
if (!(_system == "")) then {
    playSound _system;
    sleep _delay1;
};
if (!(_subsystem == "")) then {
    playSound _subsystem;
    sleep _delay2;
};
if (!(_state == "")) then {
    playSound _state;
    sleep _delay3;
};

fza_ah64_bt_soundplay = 0;