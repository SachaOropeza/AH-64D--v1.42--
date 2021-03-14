#include "\fza_ah64_controls\headers\selections.h"
if (!(isNil "fza_ah64_noufd")) exitwith {};
_heli = _this select 0;
_advlist = [];
_caulist = [];
_wrnlist = [];
_rtrbrake = 0;
_canopy = 0;
_trdam = 0;
_bingo = 0;
_mrdam = 0;
_tadsdam = 0;
_gunjam = 0;
_gunfail = 0;
_pnvsfail = 0;
_transdam = 0;
_fcrfail = 0;
_e1fire = 0;
_e2fire = 0;
_apufire = 0;
_irjoheat = 0;
_rfjoheat = 0;
_irjfail = 0;
_rfjfail = 0;
_hovhold = 0;
_baton = 0;
_apuon = 0;
_mpdpwr = 0;
_bingoa = 0;
_pylon1dam = 0;
_pylon2dam = 0;
_pylon3dam = 0;
_pylon4dam = 0;
_pylon5dam = 0;
_gundam = 0;
_rwingdam = 0;
_lwingdam = 0;
_e1start = 0;
_e2start = 0;

if (isNil "fza_ah64_fuelsave") then {
    fza_ah64_fuelsave = 1;
};

_wcacall = {
    _heli = _this select 0;
    _start = _this select 1;
    _end = _this select 2;
    _list = _this select 3;
    _counter = count _list - 1;
    _selection = _start;
    while {
        (_counter >= 0 && _selection <= _end)
    }
    do {
        _heli setobjecttexture[_selection, (_list select _counter)];
        _selection = _selection + 1;
        _counter = _counter - 1;
        sleep 0.03;
    };
    if (count _list < 5) then {
        _selection = _end;
        while {
            (_selection >= (count _list + _start))
        }
        do {
            _heli setobjecttexture[_selection, ""];
            _selection = _selection - 1;
            sleep 0.03;
        };
    };
};

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

    ///////NAV///////
    if (!(isnil "fza_ah64_waypointdata")) then {
        if (_heli getVariable "fza_ah64_curwpnum" > (count (_heli getVariable "fza_ah64_waypointdata") - 1)) then {
            _heli setVariable ["fza_ah64_curwpnum", 0, true];
        };
        _waypoint = (_heli getVariable "fza_ah64_waypointdata") select (_heli getVariable "fza_ah64_curwpnum");
        if ([(getposasl _heli select 0), (getposasl _heli select 1), 0] distance _waypoint < 50) then {
            [_heli] call fza_fnc_controlHandleNextWaypoint;
        };
    };
    /////////////////

    _hour = round(floor daytime);
    _min = round(floor((daytime - floor(daytime)) * 60));
    _sec = floor((((daytime - floor daytime) * 60) - floor((daytime - floor daytime) * 60)) * 60);
    
    ///WCA///
    _mags = _heli magazinesturret[-1];
    _magsg = magazines _heli;

    ////GUNNER WEAPON DAMAGE////
    if (player == gunner _heli && !(local _heli)) then {
        if ("fza_ah64_mdam_pylon1" in _mags && _pylon1dam == 0) then {
            _pylon1dam = 1;
            [_heli, "pylon1"] call fza_fnc_damageWeapon;
        } else {
            _pylon1dam = 0;
        };

        if ("fza_ah64_mdam_pylon2" in _mags && _pylon2dam == 0) then {
            _pylon2dam = 1;
            [_heli, "pylon2"] call fza_fnc_damageWeapon;
        } else {
            _pylon2dam = 0;
        };

        if ("fza_ah64_mdam_pylon3" in _mags && _pylon3dam == 0) then {
            _pylon3dam = 1;
            [_heli, "pylon3"] call fza_fnc_damageWeapon;
        } else {
            _pylon3dam = 0;
        };

        if ("fza_ah64_mdam_pylon4" in _mags && _pylon4dam == 0) then {
            _pylon4dam = 1;
            [_heli, "pylon4"] call fza_fnc_damageWeapon;
        } else {
            _pylon4dam = 0;
        };

        if ("fza_ah64_mdam_lwing" in _mags && _lwingdam == 0) then {
            _lwingdam = 1;
            [_heli, "lwing"] call fza_fnc_damageWeapon;
        } else {
            _lwingdam = 0;
        };

        if ("fza_ah64_mdam_rwing" in _mags && _rwingdam == 0) then {
            _rwingdam = 1;
            [_heli, "rwing"] call fza_fnc_damageWeapon;
        } else {
            _rwingdam = 0;
        };

        if ("fza_ah64_gun_jam" in _mags && _gundam == 0) then {
            _gundam = 1;
            _heli removemagazine "fza_m230_1200";
            _heli removemagazine "fza_m230_300";
        } else {
            _gundam = 1;
        };
    };
    ///end gunner weapon damage//
    if (_heli animationphase "plt_apu" > 0.5) then {
        _heli setobjecttexture [SEL_IN_LT_APU, "\fza_ah64_us\tex\in\pushbut.paa"];
    } else {
        _heli setobjecttexture [SEL_IN_LT_APU, ""];
    };
    if (_heli animationphase "plt_batt" < 0.5 && _mpdpwr == 1) then {
        [_heli, 1, "off"] call fza_fnc_mpdSetDisplay;
        [_heli, 0, "off"] call fza_fnc_mpdSetDisplay;
        _mpdpwr = 0;
    };
    if ((_heli animationphase "plt_batt" > 0.5) && _mpdpwr == 0) then {
        [_heli, 0, "fuel"] call fza_fnc_mpdSetDisplay;
        [_heli, 1, "eng"] call fza_fnc_mpdSetDisplay;
        _mpdpwr = 1;
    };
    if ("fza_ah64_rdp_fail" in _mags && !("fza_ah64_ldp_fail" in _mags) && [_heli, 0] call fza_fnc_mpdGetCurrentDisplay != "fail") then {
        [_heli, 1, "fail"] call fza_fnc_mpdSetDisplay;
    };
    if ("fza_ah64_ldp_fail" in _mags && !("fza_ah64_rdp_fail" in _mags) && [_heli, 1] call fza_fnc_mpdGetCurrentDisplay != "fail") then {
        [_heli, 0, "fail"] call fza_fnc_mpdSetDisplay;
    };
    if (_heli animationphase "plt_apu" > 0.5 && _apuon == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\APUON_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\APUON_A_co.paa"];
        _apuon = 1;
    };
    if (_heli animationphase "plt_apu" < 0.5) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\APUON_A_co.paa"];
        _apuon = 0;
    };
    if (isAutoHoverOn _heli && _hovhold == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\ATTHLD_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\ATTHLD_A_co.paa"];
        _hovhold = 1;
    };
    if (!(isAutoHoverOn _heli)) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\ATTHLD_A_co.paa"];
        _hovhold = 0;
    };
    if (_rtrbrake == 0 && (_heli animationphase "plt_rtrbrake" == 1)) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\RTRBRKON_C_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\RTRBRKON_C_co.paa"];
        _rtrbrake = 1;
    };
    if (isengineon _heli || (_heli animationphase "plt_rtrbrake" == 0)) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\RTRBRKON_C_co.paa"];
        _rtrbrake = 0;
    };
    if (_canopy == 0 && (_heli animationphase "gdoor" > 0 || _heli animationphase "pdoor" > 0)) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\CANOPYOPEN_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\CANOPYOPEN_A_co.paa"];
        _canopy = 1;
    };
    if (_heli animationphase "gdoor" == 0 && _heli animationphase "pdoor" == 0) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\CANOPYOPEN_A_co.paa"];
        _canopy = 0;
    };
    if (fza_ah64_fuelsave <= 0.1 && _bingo == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\FWDFUELLOW_C_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\FWDFUELLOW_C_co.paa"];
        _bingo = 1;
    };
    if (fza_ah64_fuelsave > 0.1 && _bingo == 1) then {
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\FWDFUELLOW_C_co.paa"];
        _bingo = 0;
    };
    if (fza_ah64_fuelsave <= 0.05 && _bingoa == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\AFTFUELLO_C_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\AFTFUELLO_C_co.paa"];
        _bingoa = 1;
    };
    if (fza_ah64_fuelsave > 0.05 && _bingoa == 1) then {
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\AFTFUELLO_C_co.paa"];
        _bingoa = 0;
    };
    if ("fza_ah64_tailrotor_dam" in _mags && _trdam == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _trdam = 1;
    };
    if ("fza_ah64_tailrotor_fail" in _mags && _trdam < 2) then {
        _wrnlist = _wrnlist + ["\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _wrnlist set[(count _wrnlist - 1), "\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _trdam = 2;
    };
    if (_trdam > 0 && !("fza_ah64_tailrotor_fail" in _mags || "fza_ah64_tailrotor_dam" in _mags)) then {
        _wrnlist = _wrnlist - ["\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\TAILRTRHYD_W_co.paa"];
        _trdam = 0;
    };
    if ("fza_ah64_trans_dam" in _mags && _transdam == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _transdam = 1;
    };
    if ("fza_ah64_trans_fail" in _mags && _transdam < 2) then {
        _wrnlist = _wrnlist + ["\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _wrnlist set[(count _wrnlist - 1), "\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _transdam = 2;
    };
    if (_transdam > 0 && !("fza_ah64_trans_dam" in _mags || "fza_ah64_trans_fail" in _mags)) then {
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _wrnlist = _wrnlist - ["\fza_ah64_us\tex\UFD\MAINXMSN_C_co.paa"];
        _transdam = 0;
    };
    if ("fza_ah64_e1_fire" in _mags) then {
        _heli setobjecttexture [SEL_IN_LT_FIRE1, "\fza_ah64_us\tex\in\pushbut.paa"];
    } else {
        _heli setobjecttexture [SEL_IN_LT_FIRE1, ""];
        _e1fire = 0;
    };
    if ("fza_ah64_e2_fire" in _mags) then {
        _heli setobjecttexture [SEL_IN_LT_FIRE2, "\fza_ah64_us\tex\in\pushbut.paa"];
    } else {
        _heli setobjecttexture [SEL_IN_LT_FIRE2, ""];
        _e2fire = 0;
    };
    if ("fza_ah64_apu_fire" in _mags) then {
        _heli setobjecttexture [SEL_IN_LT_FIREAPU, "\fza_ah64_us\tex\in\pushbut.paa"];
    } else {
        _heli setobjecttexture [SEL_IN_LT_FIREAPU, ""];
        _apufire = 0;
    };
    if ("fza_ah64_firepdisch" in _mags || "fza_ah64_firepdisch" in _magsg) then {
        _heli setobjecttexture [SEL_IN_LT_FIREPDIS, "\fza_ah64_us\tex\in\pushbut.paa"];
    };
    if ("fza_ah64_firerdisch" in _mags || "fza_ah64_firerdisch" in _magsg) then {
        _heli setobjecttexture [SEL_IN_LT_FIRERDIS, "\fza_ah64_us\tex\in\pushbut.paa"];
    };
    ///engine starts///

    if (_heli animationphase "plt_eng1_start" > 0 && _heli animationphase "plt_eng1_throttle" < 0.25 && _e1start == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\ENG1START_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\ENG1START_A_co.paa"];
        _e1start = 1;
    };
    if (_heli animationphase "plt_eng1_start" < 1 || _heli animationphase "plt_eng1_throttle" > 0.25) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\ENG1START_A_co.paa"];
        _e1start = 0;
    };

    if (_heli animationphase "plt_eng2_start" > 0 && _heli animationphase "plt_eng2_throttle" < 0.25 && _e2start == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\ENG2START_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\ENG2START_A_co.paa"];
        _e2start = 1;
    };
    if (_heli animationphase "plt_eng2_start" < 1 || _heli animationphase "plt_eng2_throttle" > 0.25) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\ENG2START_A_co.paa"];
        _e2start = 0;
    };

    ///jammer oheats///
    if (fza_ah64_irjammer > 55 && _irjoheat == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\IRJAMOHEAT_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\IRJAMOHEAT_A_co.paa"];
        _irjoheat = 1;
    };
    if (fza_ah64_irjammer < 5 && _irjoheat == 1) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\IRJAMOHEAT_A_co.paa"];
        _irjoheat = 0;
    };
    if (fza_ah64_rfjammer > 55 && _rfjoheat == 0) then {
        _advlist = _advlist + ["\fza_ah64_us\tex\UFD\RFJOHEAT_A_co.paa"];
        _advlist set[(count _advlist - 1), "\fza_ah64_us\tex\UFD\RFJOHEAT_A_co.paa"];
        _rfjoheat = 1;
    };
    if (fza_ah64_rfjammer < 5 && _rfjoheat == 1) then {
        _advlist = _advlist - ["\fza_ah64_us\tex\UFD\RFJOHEAT_A_co.paa"];
        _rfjoheat = 0;
    };
    //jammer fails
    if ("fza_ah64_irjamfail" in _mags && _irjfail == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\IRJAMFAIL_C_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\IRJAMFAIL_C_co.paa"];
        _irjfail = 1;
    };
    if (!("fza_ah64_irjamfail" in _mags) && _irjfail == 1) then {
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\IRJAMFAIL_C_co.paa"];
        _irjfail = 0;
    };
    if ("fza_ah64_rfjamfail" in _mags && _rfjfail == 0) then {
        _caulist = _caulist + ["\fza_ah64_us\tex\UFD\RFJFAIL_C_co.paa"];
        _caulist set[(count _caulist - 1), "\fza_ah64_us\tex\UFD\RFJFAIL_C_co.paa"];
        _rfjfail = 1;
    };
    if (!("fza_ah64_rfjamfail" in _mags) && _rfjfail == 1) then {
        _caulist = _caulist - ["\fza_ah64_us\tex\UFD\RFJFAIL_C_co.paa"];
        _rfjfail = 0;
    };
    ///EWCA//
    //pilot
    if (_heli animationphase "plt_batt" > 0.5 || isengineon _heli) then {
        _heli setobjecttexture [SEL_UFD_BACK, "\fza_ah64_us\tex\in\ufdon.paa"];
        [_heli, fuel _heli * 2538, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_G_UFD_FL] call fza_fnc_drawNumberSelections;
        [_heli, fuel _heli * 2538, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_P_UFD_FL] call fza_fnc_drawNumberSelections;
        [_heli, _hour, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_G_UFD_HR] call fza_fnc_drawNumberSelections;
        [_heli, _min, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_G_UFD_MIN] call fza_fnc_drawNumberSelections;
        [_heli, _sec, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_G_UFD_MIN] call fza_fnc_drawNumberSelections;
        [_heli, _hour, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_P_UFD_HR] call fza_fnc_drawNumberSelections;
        [_heli, _min, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_P_UFD_MIN] call fza_fnc_drawNumberSelections;
        [_heli, _sec, "\fza_ah64_us\tex\CHAR\G", SEL_DIGITS_P_UFD_MIN] call fza_fnc_drawNumberSelections;
        //advisories//
        _a = [_heli, 1028, 1032, _advlist] call _wcacall;
        //cautions//
        _c = [_heli, 1033, 1037, _caulist] call _wcacall;
        //warnings//
        _w = [_heli, 1038, 1042, _wrnlist] call _wcacall;
        //advisories//
        _a = [_heli, 1053, 1057, _advlist] call _wcacall;
        //cautions//
        _c = [_heli, 1058, 1062, _caulist] call _wcacall;
        //warnings//
        _w = [_heli, 1063, 1067, _wrnlist] call _wcacall;
    } else {
        _heli setobjecttexture [SEL_UFD_BACK, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK1, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK2, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK3, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK4, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK5, ""];
        _heli setobjecttexture [SEL_P_UFD_CLK6, ""];
        _heli setobjecttexture [SEL_P_UFD_FL1, ""];
        _heli setobjecttexture [SEL_P_UFD_FL2, ""];
        _heli setobjecttexture [SEL_P_UFD_FL3, ""];
        _heli setobjecttexture [SEL_P_UFD_FL4, ""];
        //advisories//
        _a = [_heli, 1028, 1032, []] call _wcacall;
        //cautions//
        _c = [_heli, 1033, 1037, []] call _wcacall;
        //warnings//
        _w = [_heli, 1038, 1042, []] call _wcacall;
        //gunner
        _heli setobjecttexture [SEL_G_UFD_CLK1, ""];
        _heli setobjecttexture [SEL_G_UFD_CLK2, ""];
        _heli setobjecttexture [SEL_G_UFD_CLK3, ""];
        _heli setobjecttexture [SEL_G_UFD_CLK4, ""];
        _heli setobjecttexture [SEL_G_UFD_CLK5, ""];
        _heli setobjecttexture [SEL_G_UFD_CLK6, ""];
        _heli setobjecttexture [SEL_G_UFD_FL1, ""];
        _heli setobjecttexture [SEL_G_UFD_FL2, ""];
        _heli setobjecttexture [SEL_G_UFD_FL3, ""];
        _heli setobjecttexture [SEL_G_UFD_FL4, ""];
        //advisories//
        _a = [_heli, 1053, 1057, []] call _wcacall;
        //cautions//
        _c = [_heli, 1058, 1062, []] call _wcacall;
        //warnings//
        _w = [_heli, 1063, 1067, []] call _wcacall;
    };
    sleep 0.1;
};