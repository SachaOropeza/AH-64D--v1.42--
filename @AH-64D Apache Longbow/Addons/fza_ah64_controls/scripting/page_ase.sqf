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
    fza_ah64_asethreats = vehicles - allDead; {
        _i = _x;
        fza_ah64_asethreats = fza_ah64_asethreats - [_i]; {
            if (_i iskindof _x) then {
                fza_ah64_asethreats = fza_ah64_asethreats + [_i];
                if ((_heli == assignedTarget _i || _i AimedAtTarget[_heli] > 0.1) && (alive _i) && !(_i in fza_ah64_threattracking)) then {
                    fza_ah64_targetlist = fza_ah64_targetlist + [_i];
                    fza_ah64_threattracking = fza_ah64_threattracking + [_i];
                    if (_i iskindof "rhs_zsutank_base") then {
                        ["fza_ah64_zsu23_track", 2.3] spawn fza_fnc_playAudio;
                    };
                    if (_i iskindof "O_APC_Tracked_02_AA_F") then {
                        ["fza_ah64_bt_sa19", 1.6, "fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
                    };
                    if !((_i iskindof "rhs_zsutank_base") || (_i iskindof "O_APC_Tracked_02_AA_F") || (true == isVehicleRadarOn vehicle _i)) then {
                        ["fza_ah64_bt_tracking", 0.65] spawn fza_fnc_playAudio;
                    };
                    if !((_i iskindof "rhs_zsutank_base") || (_i iskindof "O_APC_Tracked_02_AA_F") || !(true == isVehicleRadarOn vehicle _i)) then {
                        ["fza_ah64_rdr_track", 0.1] spawn fza_fnc_playAudio;
                    };
                    if (_heli getVariable "fza_ah64_aseautopage" == 1) then {
                        [_heli, 1, "ase"] call fza_fnc_mpdSetDisplay;
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
    sleep 0.3;
};