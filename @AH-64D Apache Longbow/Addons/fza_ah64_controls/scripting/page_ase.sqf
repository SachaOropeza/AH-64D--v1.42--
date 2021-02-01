#include "\fza_ah64_controls\headers\selections.h"
if (!(isNil "fza_ah64_noase")) exitwith {};
_heli = _this select 0;
while {
    (time > -1)
}
do {
    waituntil {
        (vehicle player) iskindof "fza_ah64base"
    };
    _heli = vehicle player;
    waitUntil {
        ((driver(vehicle player) == player || gunner(vehicle player) == player))
    };
    fza_ah64_asethreats = fza_ah64_targetlist; {
        _i = _x;
        fza_ah64_asethreats = fza_ah64_asethreats - [_i];
        fza_ah64_asethreats = fza_ah64_asethreats - allDead; {
            if (_i iskindof _x) then {
                fza_ah64_asethreats = fza_ah64_asethreats + [_i];
                if ((_heli == assignedTarget _i || _i AimedAtTarget[_heli] > 0.1) && (alive _i) && !(_i in fza_ah64_threattracking)) then {
                    fza_ah64_threattracking = fza_ah64_threattracking + [_i];
                    if (_i iskindof "ZSU_Base") then {
                        ["fza_ah64_bt_zsu23", 2.3, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
                    };
                    if (_i iskindof "2S6M_Tunguska") then {
                        ["fza_ah64_bt_sa19", 1.6, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
                    };
                    if !((_i iskindof "ZSU_Base") || (_i iskindof "2S6M_Tunguska")) then {
                        ["fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
                    };
                    if (_heli getVariable "fza_ah64_aseautopage" == 1) then {
                        [_heli, 1, "ase"] call fza_fnc_mpdSetDisplay;
                        if (_heli getVariable "fza_ah64_rfjstate" == 1 && _heli getVariable "fza_ah64_rfjon" == 0) then {
                            _rfjammerscript = [(vehicle player)] execvm "\fza_ah64_controls\scripting\rf_jammer.sqf";
                        };
                        if (_heli getVariable "fza_ah64_irjstate" == 1 && _heli getVariable "fza_ah64_irjon" == 0) then {
                            _irjammerscript = [(vehicle player)] execvm "\fza_ah64_controls\scripting\ir_jammer.sqf";
                        };
                    };
                };
            };
        }
        foreach fza_ah64_ada_units;
        if (side _i == side _heli) then {
            fza_ah64_asethreats = fza_ah64_asethreats - [_i];
        };
    }
    foreach fza_ah64_asethreats;
    sleep 0.03;
};