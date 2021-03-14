_heli = _this select 0;
_eng = _this select 1;

_rand = random 10;

if (_rand > 5) exitwith {};

_usesound = false;

if (player == driver _heli || player == gunner _heli) then {
    _usesound = true;
};

_helidamage = 0;
_firepstate = !("fza_ah64_firepdisch" in (_heli magazinesturret[-1])) || !("fza_ah64_firepdisch" in magazines _heli);
_firerstate = !("fza_ah64_firerdisch" in (_heli magazinesturret[-1])) || !("fza_ah64_firerdisch" in magazines _heli);

_side = [1.2, -0.8, -1.25];
_sidef = [1.2, -0.6, -1.25];
_mag = "fza_ah64_e2_fire";
_audio1 = "fza_ah64_bt_engine2";

if (_eng == "left") then {
    _side = [-1, -0.8, -1.25];
    _sidef = [-1, -0.6, -1.25];
    _mag = "fza_ah64_e1_fire";
    _audio1 = "fza_ah64_bt_engine1";
};
if (_eng == "apu") then {
    _side = [0, -0.8, -1.25];
    _sidef = [0, 0.2, -1.25];
    _mag = "fza_ah64_apu_fire";
    _audio1 = "fza_ah64_bt_apu";
};

_heli addmagazineturret[_mag, [-1]];

_smokefx = "#particlesource"
createVehicle getpos _heli;
_smokefx attachto[_heli, [0, 0, 0]];

_firefx = "#particlesource"
createVehicle getpos _heli;
_firefx attachto[_heli, [0, 0, 0]];

_smokefx setParticleCircle[0, [0, 0, 0]];
_smokefx setParticleRandom[0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_smokefx setParticleParams[["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 9, 1], "", "Billboard", 1, 3, _side, [0, 0, 1], 0, 10, 7.9, 0.066, [2, 3, 4], [
    [0.1, 0.1, 0.1, 1],
    [0.2, 0.2, 0.2, 0.5],
    [0.3, 0.3, 0.3, 0]
], [0.125], 1, 0, "", "", _heli];
_smokefx setDropInterval 0.03;

_firefx setParticleCircle[0, [0, 0, 0]];
_firefx setParticleRandom[0.5, [0.25, 0.25, 0.1], [0, 0, 1], 0, 0.5, [0, 0, 0, 0], 0, 0];
_firefx setDropInterval 0.01;
_firefx setParticleParams[["\A3\data_f\ParticleEffects\Universal\Universal", 16, 10, 32, 1], "", "Billboard", 1, 0.2, _sidef, [0, 0, 0.5], 5, 1, 0.9, 0.3, [1], [
    [1, 1, 1, 1],
    [1, 1, 1, 0.75],
    [1, 1, 1, 0]
], [0.5, 0.5, 0], 0.5, 0.5, "", "", _heli];

if (_usesound) then {
    [_audio1, 1.25, "fza_ah64_bt_fire", 0.65] spawn fza_fnc_playAudio;
};

while {
    (alive _heli)
}
do {
    _rand = random 10;
    _firepon = "fza_ah64_firepdisch" in (_heli magazinesturret[-1]) || "fza_ah64_firepdisch" in magazines _heli;
    _fireron = "fza_ah64_firerdisch" in (_heli magazinesturret[-1]) || "fza_ah64_firerdisch" in magazines _heli;
    if ((_firepon && _eng == "left" && fza_ah64_fire1arm == 1 && _firepstate) || (_fireron && _eng == "left" && fza_ah64_fire1arm == 1 && _firerstate)) exitwith {};
    if ((_firepon && _eng == "right" && fza_ah64_fire2arm == 1 && _firepstate) || (_fireron && _eng == "right" && fza_ah64_fire2arm == 1 && _firerstate)) exitwith {};
    if ((_firepon && _eng == "apu" && fza_ah64_fireapuarm == 1 && _firepstate) || (_fireron && _eng == "apu" && fza_ah64_fireapuarm == 1 && _firerstate)) exitwith {};
    if (_rand > 9.9 && !(isengineon _heli)) exitwith {};
    _helidamage = _helidamage + 0.0005;
    if (_helidamage > 0.5) then {
        _heli setHit["trans", 1];
    };
    if (_helidamage > 1) then {
        _heli setdamage 1;
    };
    sleep 0.1;
};

detach _smokefx;
detach _firefx;

deletevehicle _smokefx;
deletevehicle _firefx;

_heli removemagazine _mag;
_heli removemagazinesturret[_mag, [-1]];