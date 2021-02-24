#include "\fza_ah64_controls\headers\script_common.hpp"
#include "\fza_ah64_controls\headers\selections.h"
params ["_heli", "_system", "_control"];

private _hellfireweps = ["fza_agm114_23_8", "fza_agm114_14_8", "fza_agm114_1_4", "fza_agm114_2_4", "fza_agm114_3_4", "fza_agm114_4_4", "fza_agm114_1_ul", "fza_agm114_1_ur", "fza_agm114_1_ll", "fza_agm114_1_lr", "fza_agm114_2_ul", "fza_agm114_2_ur", "fza_agm114_2_ll", "fza_agm114_2_lr", "fza_agm114_3_ul", "fza_agm114_3_ur", "fza_agm114_3_ll", "fza_agm114_3_lr", "fza_agm114_4_ul", "fza_agm114_4_ur", "fza_agm114_4_ll", "fza_agm114_4_lr"];
private _rocketweps = ["fza_m261_1234_zoneE", "fza_m261_14", "fza_m261_14_zoneA", "fza_m261_14_zoneB", "fza_m261_14_zoneE", "fza_m261_23", "fza_m261_23_zoneC", "fza_m261_23_zoneD", "fza_m261_23_zoneE", "fza_m261_1", "fza_m261_1_zone1", "fza_m261_1_zone2", "fza_m261_1_zone3", "fza_m261_2", "fza_m261_2_zone1", "fza_m261_2_zone2", "fza_m261_2_zone3", "fza_m261_3", "fza_m261_3_zone1", "fza_m261_3_zone2", "fza_m261_3_zone3", "fza_m261_4", "fza_m261_4_zone1", "fza_m261_4_zone2", "fza_m261_4_zone3"];

if(currentWeapon _heli in ["fza_m230", "fza_burstlimiter"]) then {
	switch (_control) do {
		case "l1": {
			_heli setVariable ["fza_ah64_burst_limit", 10];
		};
		case "l2": {
			_heli setVariable ["fza_ah64_burst_limit", 20];
		};
		case "l3": {
			_heli setVariable ["fza_ah64_burst_limit", 50];
		};
		case "l4": {
			_heli setVariable ["fza_ah64_burst_limit", 100];
		};
	};
};
private _rocketweps = ["fza_m261_1234_zoneE", "fza_m261_14", "fza_m261_14_zoneA", "fza_m261_14_zoneB", "fza_m261_14_zoneE", "fza_m261_23", "fza_m261_23_zoneC", "fza_m261_23_zoneD", "fza_m261_23_zoneE", "fza_m261_1", "fza_m261_1_zone1", "fza_m261_1_zone2", "fza_m261_1_zone3", "fza_m261_2", "fza_m261_2_zone1", "fza_m261_2_zone2", "fza_m261_2_zone3", "fza_m261_3", "fza_m261_3_zone1", "fza_m261_3_zone2", "fza_m261_3_zone3", "fza_m261_4", "fza_m261_4_zone1", "fza_m261_4_zone2", "fza_m261_4_zone3"];
if(currentWeapon _heli in _rocketweps) then {
	switch (_control) do {
		case "r1": {
			[_heli] execVM "\fza_ah64_controls\scripting\rocket_salvo.sqf";
		};
	};
};
if(currentweapon _heli in _hellfireweps) then {
	switch (_control) do {
		case "l1": {
			//Switch missile lase
			[_heli] call fza_fnc_controlHandlelaserchange;
		};
		case "r3": {
			//Switch missile trajectory of current hellfire
			weaponState [_heli, [0]] params ["_weapon", "",  "_fireMode", "_magazine"];
			_nextFireMode = switch (_fireMode) do {
				case "Cruise": {"TopDown"};
				case "TopDown": {"LoalDistance"};
				case "LoalDistance": {"Cruise"};
				default {["Unknown missile fire mode: %1", _fireMode] call BIS_fnc_error};
			};
			[_heli, [0], _weapon, _nextFireMode, _magazine] call fza_fnc_weaponSelectFireMode;
			_heli setVariable ["fza_ah64_ltype", _nextFireMode, true];
		};
	};
};
switch (_control) do {
	case "r6": {
		[_heli] execvm "\fza_ah64_controls\scripting\guncontrol.sqf";
	};
	case "r5": {
		if (isNull laserTarget _heli) then {
			[_heli] spawn fza_fnc_laserArm;
		} else {
			[_heli] spawn fza_fnc_laserDisarm;
		};
	};
	case "b1": {
		//Select M230
		if (_heli hasweapon "fza_m230") then {
			_heli selectweapon "fza_m230";
		} else {
			_heli selectweapon "fza_burstlimiter";
		};
	};
	case "b2": {
		//Select Missile
		_missileWeps = (_heli weaponsTurret [0]) arrayIntersect _hellfireweps;
		_curIndex = _missileWeps find (currentWeapon _heli);
		_nextWep = _missileWeps select ((_curIndex + 1)% count _missileWeps);
		[_heli, [0], _nextWep, _heli getVariable "fza_ah64_ltype"] call fza_fnc_weaponSelectFireMode;
	};
	case "b3": {
		//Select ATAS
		if (_heli hasweapon "fza_atas_2") then {
			_heli selectweapon "fza_atas_2";
		};
	};
	case "b4": {
		_emptywep = "";
		_wpncounter = 0;
		_selectedweapon = 0; {
			if (_x in _rocketweps) then {
				_emptywep = _x;
			};
			if ((_x in _rocketweps) && _heli ammo _x > 0 && _selectedweapon == 0) then {
				_selectedweapon = 1;
				_heli selectweapon _x;
			};
			if (_selectedweapon == 1) exitwith {};
			_wpncounter = _wpncounter + 1;
			if (_wpncounter >= count(weapons _heli)) then {
				_selectedweapon = 1;
				_heli selectweapon _emptywep;
			};
		}
		foreach(weapons _heli);
	};
	case "wpn": {
		[_heli, 0, "wpn"] call fza_fnc_mpdSetDisplay;
	};
	case "m": {
		[_heli, 0, "dms"] call fza_fnc_mpdSetDisplay;
	};
};