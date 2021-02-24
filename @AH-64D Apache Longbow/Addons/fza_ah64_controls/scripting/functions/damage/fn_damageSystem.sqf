/* ----------------------------------------------------------------------------
Function: fza_fnc_damageSystem

Description:
    Handles general damage to the aircraft. Determines whether a failure should be simulated and if so, sets it up.

Parameters:
    _heli - The helicopter to modify
    _system - The *HitPoint* that was damaged
    _damage - The damage amount of the *HitPoint* (0-1)

Returns:
	Nothing

Examples:
	--- Code
    [_heli] call fza_fnc_damageSystem
	---

Author:
	Unknown
---------------------------------------------------------------------------- */
params["_heli", "_system", "_damage"];

_mags = _heli magazinesTurret[-1];
_usesound = false;

if (player == driver _heli || player == gunner _heli) then {
    _usesound = true;
};

if (!(alive _heli)) exitwith {
    false
};
//set damage so event init dosent reset
_damheli= 0.001 + damage _heli;
_heli setDamage _damheli;

if (_system == "mala vrtule") then {
    if (_damage > 0.4 && _damage < 0.8 && !("fza_ah64_tailrotor_dam" in _mags)) then {
        _heli addmagazineturret["fza_ah64_tailrotor_dam", [-1]];
        if (_usesound) then {
            ["fza_ah64_tail_rotor_damaged_1", 3] spawn fza_fnc_playAudio;
        };
    };
    if (_damage >= 0.8 && !("fza_ah64_tailrotor_fail" in _mags)) then {
        _heli removemagazinesturret["fza_ah64_tailrotor_dam", [-1]];
        _heli addmagazineturret["fza_ah64_tailrotor_fail", [-1]];
        _heli sethit["mala vrtule", 1];
        if (_usesound) then {
            ["fza_ah64_tail_rotor_failure_1", 3] spawn fza_fnc_playAudio;
        };
    };
};

if (_system == "velka vrtule") then {
    if (_damage > 0.4 && _damage < 0.8 && !("fza_ah64_rotor_dam" in _mags)) then {
        _heli addmagazineturret["fza_ah64_rotor_dam", [-1]];
        if (_usesound) then {
            ["fza_ah64_main_rotor_damaged_1", 4] spawn fza_fnc_playAudio;
        };
    };
    if (_damage >= 0.8 && !("fza_ah64_rotor_fail" in _mags)) then {
        _heli removemagazinesturret["fza_ah64_rotor_dam", [-1]];
        _heli addmagazineturret["fza_ah64_rotor_fail", [-1]];
        if (_usesound) then {
            ["fza_ah64_main_rotor_failure_1", 4] spawn fza_fnc_playAudio;
        };
        _heli removemagazinesturret["fza_ah64_trans_dam", [-1]];
        _heli addmagazineturret["fza_ah64_trans_fail", [-1]];
        _heli setHit["trans", 1];
    };
};

if (_system == "tads_tur" || _system == "tads") then {
    if (_damage > 0.4 && _damage < 0.8 && !("fza_ah64_tads_dam" in _mags)) then {
        _heli addmagazineturret["fza_ah64_tads_dam", [-1]];
    };
    if (_damage >= 0.8 && !("fza_ah64_tads_fail" in _mags)) then {
        _heli removemagazinesturret["fza_ah64_tads_dam", [-1]];
        _heli addmagazineturret["fza_ah64_tads_fail", [-1]];
        _heli sethit["tads", 1];
        _heli sethit["tads_tur", 1];
        if (_usesound) then {
            ["fza_ah64_tads_failure_1", 5] spawn fza_fnc_playAudio;
        };
    };
};

if (_system == "pnvs") then {
    if (_damage >= 0.8 && !("fza_ah64_pnvs_fail" in _mags)) then {
        _heli addmagazineturret["fza_ah64_pnvs_fail", [-1]];
        if (_usesound) then {
            ["fza_ah64_pnvs_fail_1", 3] spawn fza_fnc_playAudio;
        };
    };
};

if (_system == "otochlaven") then {
    if (_damage >= 0.8 && !("fza_ah64_gun_jam" in _mags)) then {
        _heli addmagazineturret["fza_ah64_gun_jam", [-1]];
        _heli removemagazine "fza_m230_1200";
        _heli removemagazine "fza_m230_300";
        if (_usesound) then {
            ["fza_ah64_bt_gun", 0.5, "fza_ah64_bt_jammed", 1] spawn fza_fnc_playAudio;
        };
    };
};

if (_system == "otocvez") then {
    if (_damage >= 0.8 && !("fza_ah64_gun_fail" in _mags)) then {
        _heli addmagazineturret["fza_ah64_gun_fail", [-1]];
        if (_usesound) then {
            ["fza_ah64_bt_gun", 0.5, "fza_ah64_bt_actuator", 1, "fza_ah64_bt_failure", 1] spawn fza_fnc_playAudio;
        };
    };
};

if (_system == "trans") then {
    if (_damage >= 0.4 && _damage < 0.9 && !("fza_ah64_trans_dam" in _mags)) then {
        _heli addmagazineturret["fza_ah64_trans_dam", [-1]];
        if (!("fza_ah64_apu_fire" in _mags)) then {
            [_heli, "apu"] execvm "\fza_ah64_controls\scripting\damage\enginefire.sqf";
        };
    };
    if (_damage >= 0.9 && !("fza_ah64_trans_fail" in _mags)) then {
        _heli removemagazinesturret["fza_ah64_trans_dam", [-1]];
        _heli addmagazineturret["fza_ah64_trans_fail", [-1]];
    };
};

if (_system == "fuselage") then {
    if (_damage >= 0.5) then {
        _rand = round(random 10);
        if (_rand == 1 && !("fza_ah64_irjamfail" in _mags)) then {
            _heli addmagazineturret["fza_ah64_irjamfail", [-1]];
        };
        if (_rand == 5 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand == 10 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
    if (_damage >= 0.8) then {
        _rand = round(random 10);
        if (_rand > 3 && !("fza_ah64_irjamfail" in _mags)) then {
            _heli addmagazineturret["fza_ah64_irjamfail", [-1]];
        };
        if (_rand > 6 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand > 8 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
    if (_damage >= 0.2 && !("fza_ah64_dam_fuse" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_fuse", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_fuse" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_fuse", [-1]];
    };
};

if (_system == "radar" && typeOf _heli == "fza_ah64d_b2e") then {
    if (_damage >= 0.8 && !("fza_ah64_fcr_fail" in _mags)) then {
        _heli addmagazineturret["fza_ah64_fcr_fail", [-1]];
    };
};

if (_system == "cockpit") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_nose" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_nose", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_nose" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_nose", [-1]];
    };
    if (_damage >= 0.5) then {
        _rand = round(random 10);
        if (_rand == 1 && !("fza_ah64_rfjamfail" in _mags)) then {
            _heli addmagazineturret["fza_ah64_rfjamfail", [-1]];
        };
    };
    if (_damage >= 0.8) then {
        _rand = round(random 10);
        if (_rand > 3 && !("fza_ah64_rfjamfail" in _mags)) then {
            _heli addmagazineturret["fza_ah64_rfjamfail", [-1]];
        };
    };
};

if (_system == "leng") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_leng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_leng", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_leng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_leng", [-1]];
        if (!("fza_ah64_e1_fire" in _mags)) then {
            [_heli, "left"] execvm "\fza_ah64_controls\scripting\damage\enginefire.sqf";
        };
        _rand = round(random 10);
        if (_rand == 10 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand == 10 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
    if (_damage >= 0.8 && !("fza_ah64_hdam_leng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_hdam_leng", [-1]];
        if (!("fza_ah64_e1_fire" in _mags)) then {
            [_heli, "left"] execvm "\fza_ah64_controls\scripting\damage\enginefire.sqf";
        };
        _rand = round(random 10);
        if (_rand < 5 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand > 5 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
};

if (_system == "reng") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_reng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_reng", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_reng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_reng", [-1]];
        if (!("fza_ah64_e2_fire" in _mags)) then {
            [_heli, "right"] execvm "\fza_ah64_controls\scripting\damage\enginefire.sqf";
        };
        _rand = round(random 10);
        if (_rand == 5 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand == 10 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
    if (_damage >= 0.8 && !("fza_ah64_hdam_reng" in _mags)) then {
        _heli addmagazineturret["fza_ah64_hdam_reng", [-1]];
        if (!("fza_ah64_e2_fire" in _mags)) then {
            [_heli, "right"] execvm "\fza_ah64_controls\scripting\damage\enginefire.sqf";
        };
        _rand = round(random 10);
        if (_rand < 5 && !("fza_ah64_fwd_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_fwd_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
        if (_rand > 5 && !("fza_ah64_aft_leak" in _mags)) then {
            _heli addmagazineturret["fza_ah64_aft_leak", [-1]];
            [_heli] execvm "\fza_ah64_controls\scripting\damage\fuel_leak.sqf";
        };
    };
};

if (_system == "lfab") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_lfab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_lfab", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_lfab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_lfab", [-1]];
        [_heli, _system] call fza_fnc_damageDisplayProcessor;
    };
};

if (_system == "rfab") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_rfab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_rfab", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_rfab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_rfab", [-1]];
        [_heli, _system] call fza_fnc_damageDisplayProcessor;
    };
};

if (_system == "lwing") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_lwing" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_lwing", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_lwing" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_lwing", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

if (_system == "rwing") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_rwing" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_rwing", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_rwing" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_rwing", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

if (_system == "tailboom") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_tailboom" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_tailboom", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_tailboom" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_tailboom", [-1]];
    };
    if (_damage >= 0.95 && !("fza_ah64_cdam_tailboom" in _mags)) then {
        _heli addmagazineturret["fza_ah64_cdam_tailboom", [-1]];
        _heli sethit["mala vrtule", 1];
        [_heli, _system] execvm "\fza_ah64_controls\scripting\damage\dam_debris.sqf";
    };
};

if (_system == "vtail") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_vtail" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_vtail", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_vtail" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_vtail", [-1]];
    };
};

if (_system == "hstab") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_hstab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_hstab", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_hstab" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_hstab", [-1]];
    };
};

if (_system == "pylon1") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_pylon1" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_pylon1", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_pylon1" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_pylon1", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

if (_system == "pylon2") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_pylon2" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_pylon2", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_pylon2" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_pylon2", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

if (_system == "pylon3") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_pylon3" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_pylon3", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_pylon3" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_pylon3", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

if (_system == "pylon4") then {
    if (_damage >= 0.2 && !("fza_ah64_dam_pylon4" in _mags)) then {
        _heli addmagazineturret["fza_ah64_dam_pylon4", [-1]];
    };
    if (_damage >= 0.4 && !("fza_ah64_mdam_pylon4" in _mags)) then {
        _heli addmagazineturret["fza_ah64_mdam_pylon4", [-1]];
        [_heli, _system] call fza_fnc_damageWeapon;
    };
};

false