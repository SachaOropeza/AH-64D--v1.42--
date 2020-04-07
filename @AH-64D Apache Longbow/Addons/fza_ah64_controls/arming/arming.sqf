_heli = _this select 0;

if (isServer || isDedicated || isMultiplayer) then 
{
if (isNil "fza_ah64_armingunits") then {fza_ah64_armingunits = ["Land_Pier_Box_F","CargoNet_01_barrels_F","B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_Repair_F","rhsusf_M978A4_usarmy_wd","rhsusf_M978A4_BKIT_usarmy_wd","rhsusf_M978A4_BKIT_usarmy_d","rhsusf_M978A4_BKIT_usarmy_d","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_usarmy_d","rhsusf_M977A4_AMMO_BKIT_usarmy_wd","rhsusf_M977A4_AMMO_usarmy_d","rhsusf_M977A4_AMMO_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_usarmy_d","rhsusf_M977A4_REPAIR_BKIT_usarmy_wd","rhsusf_M977A4_REPAIR_usarmy_d","rhsusf_M977A4_REPAIR_usarmy_wd"];};
_actionadd = 1;
fza_ah64_armact = _heli addAction ["Arming", "\fza_ah64_controls\arming\armingdiag_2.sqf", "", -10, false, true, "", ""];

while {(alive _heli)} do
{
if (player == driver _heli || player == gunner _heli) then
{
_armlist = nearestObjects [_heli, fza_ah64_armingunits, 50];
if (count _armlist > 0 && player in _heli && _actionadd == 0) then {fza_ah64_armact = _heli addAction ["Arming", "\fza_ah64_controls\arming\armingdiag_2.sqf", "", -10, false, true, "", ""]; _actionadd = 1;};
if (count _armlist == 0 || speed _heli > 5 || speed _heli < -5 || (getpos _heli select 2) > 5) then {_heli removeaction fza_ah64_armact; _actionadd = 0;};
};
uiSleep 1;
};

_heli removeaction fza_ah64_armact;
};