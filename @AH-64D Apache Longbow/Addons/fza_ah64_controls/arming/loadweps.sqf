_heli = _this select 0;
_heliweight = 0; //tkoh weighting
//count current weaponry and add to pool
_mags = magazines _heli;
_m230qty = _heli ammo "fza_m230";
if(_heli hasweapon "fza_burstlimiter") then {_m230qty = _heli ammo "fza_burstlimiter";};
fza_ah64_30mmhedp_qty = fza_ah64_30mmhedp_qty + _m230qty;
_m151qty = 0;
_m229qty = 0;
_m261qty = 0;
_m255qty = 0;
_m257qty = 0;
_masafeqty = 0;

_114aqty = 0;
_114bqty = 0;
_114cqty = 0;
_114fqty = 0;
_114kqty = 0;
_114lqty = 0;
_114mqty = 0;
_114nqty = 0;
_114rqty = 0;

if(_heli hasweapon "fza_ma_safe") then
{
_masafeqty = _masafeqty + (_heli ammo "fza_ma_safe");
};

if(_heli hasweapon "fza_atas_2") then
{
fza_ah64_fim92_qty = fza_ah64_fim92_qty + (_heli ammo "fza_atas_2");
};

if(_heli hasweapon "fza_m261_23") then
{

if("fza_m261_m151_23_38" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_23");
};

if("fza_m261_m229_23_38" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_23");
};

if("fza_m261_m261_23_38" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_23");
};

if("fza_m261_m255_23_38" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_23");
};

if("fza_m261_m257_23_38" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_23");
};

};

if(_heli hasweapon "fza_m261_14") then
{

if("fza_m261_m151_14_38" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_14");
};

if("fza_m261_m229_14_38" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_14");
};

if("fza_m261_m261_14_38" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_14");
};

if("fza_m261_m255_14_38" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_14");
};

if("fza_m261_m257_14_38" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_14");
};

};

if(_heli hasweapon "fza_m261_1") then
{

if("fza_m261_m151_1_19" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_1");
};

if("fza_m261_m229_1_19" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_1");
};

if("fza_m261_m261_1_19" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_1");
};

if("fza_m261_m255_1_19" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_1");
};

if("fza_m261_m257_1_19" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_1");
};

};

if(_heli hasweapon "fza_m261_2") then
{

if("fza_m261_m151_2_19" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_2");
};

if("fza_m261_m229_2_19" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_2");
};

if("fza_m261_m261_2_19" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_2");
};

if("fza_m261_m255_2_19" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_2");
};

if("fza_m261_m257_2_19" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_2");
};

};

if(_heli hasweapon "fza_m261_3") then
{

if("fza_m261_m151_3_19" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_3");
};

if("fza_m261_m229_3_19" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_3");
};

if("fza_m261_m261_3_19" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_3");
};

if("fza_m261_m255_3_19" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_3");
};

if("fza_m261_m257_3_19" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_3");
};

};

if(_heli hasweapon "fza_m261_4") then
{

if("fza_m261_m151_4_19" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_4");
};

if("fza_m261_m229_4_19" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_4");
};

if("fza_m261_m261_4_19" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_4");
};

if("fza_m261_m255_4_19" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_4");
};

if("fza_m261_m257_4_19" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_4");
};

};

if(_heli hasweapon "fza_m261_1_zone1") then
{

if("fza_m261_m151_1_zone1_12" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_1_zone1");
};

if("fza_m261_m229_1_zone1_12" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_1_zone1");
};

if("fza_m261_m261_1_zone1_12" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_1_zone1");
};

if("fza_m261_m255_1_zone1_12" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_1_zone1");
};

if("fza_m261_m257_1_zone1_12" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_1_zone1");
};

};

if(_heli hasweapon "fza_m261_2_zone1") then
{

if("fza_m261_m151_2_zone1_12" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_2_zone1");
};

if("fza_m261_m229_2_zone1_12" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_2_zone1");
};

if("fza_m261_m261_2_zone1_12" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_2_zone1");
};

if("fza_m261_m255_2_zone1_12" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_2_zone1");
};

if("fza_m261_m255_2_zone1_12" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_2_zone1");
};

};

if(_heli hasweapon "fza_m261_3_zone1") then
{

if("fza_m261_m151_3_zone1_12" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_3_zone1");
};

if("fza_m261_m229_3_zone1_12" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_3_zone1");
};

if("fza_m261_m261_3_zone1_12" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_3_zone1");
};

if("fza_m261_m255_3_zone1_12" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_3_zone1");
};

if("fza_m261_m257_3_zone1_12" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_3_zone1");
};

};

if(_heli hasweapon "fza_m261_4_zone1") then
{

if("fza_m261_m151_4_zone1_12" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_4_zone1");
};

if("fza_m261_m229_4_zone1_12" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_4_zone1");
};

if("fza_m261_m261_4_zone1_12" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_4_zone1");
};

if("fza_m261_m255_4_zone1_12" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_4_zone1");
};

if("fza_m261_m257_4_zone1_12" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_4_zone1");
};

};

if(_heli hasweapon "fza_m261_1_zone2") then
{

if("fza_m261_m151_1_zone2_4" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_1_zone2");
};

if("fza_m261_m229_1_zone2_4" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_1_zone2");
};

if("fza_m261_m261_1_zone2_4" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_1_zone2");
};

if("fza_m261_m255_1_zone2_4" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_1_zone2");
};

if("fza_m261_m257_1_zone2_4" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_1_zone2");
};

};

if(_heli hasweapon "fza_m261_2_zone2") then
{

if("fza_m261_m151_2_zone2_4" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_2_zone2");
};

if("fza_m261_m229_2_zone2_4" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_2_zone2");
};

if("fza_m261_m261_2_zone2_4" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_2_zone2");
};

if("fza_m261_m255_2_zone2_4" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_2_zone2");
};

if("fza_m261_m257_2_zone2_4" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_2_zone2");
};

};

if(_heli hasweapon "fza_m261_3_zone2") then
{

if("fza_m261_m151_3_zone2_4" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_3_zone2");
};

if("fza_m261_m229_3_zone2_4" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_3_zone2");
};

if("fza_m261_m261_3_zone2_4" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_3_zone2");
};

if("fza_m261_m255_3_zone2_4" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_3_zone2");
};

if("fza_m261_m257_3_zone2_4" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_3_zone2");
};

};

if(_heli hasweapon "fza_m261_4_zone2") then
{

if("fza_m261_m151_4_zone2_4" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_4_zone2");
};

if("fza_m261_m229_4_zone2_4" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_4_zone2");
};

if("fza_m261_m261_4_zone2_4" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_4_zone2");
};

if("fza_m261_m255_4_zone2_4" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_4_zone2");
};

if("fza_m261_m257_4_zone2_4" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_4_zone2");
};

};

if(_heli hasweapon "fza_m261_1_zone3") then
{

if("fza_m261_m151_1_zone3_3" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_1_zone3");
};

if("fza_m261_m229_1_zone3_3" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_1_zone3");
};

if("fza_m261_m261_1_zone3_3" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_1_zone3");
};

if("fza_m261_m255_1_zone3_3" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_1_zone3");
};

if("fza_m261_m257_1_zone3_3" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_1_zone3");
};

};

if(_heli hasweapon "fza_m261_2_zone3") then
{

if("fza_m261_m151_2_zone3_3" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_2_zone3");
};

if("fza_m261_m229_2_zone3_3" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_2_zone3");
};

if("fza_m261_m261_2_zone3_3" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_2_zone3");
};

if("fza_m261_m255_2_zone3_3" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_2_zone3");
};

if("fza_m261_m257_2_zone3_3" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_2_zone3");
};

};

if(_heli hasweapon "fza_m261_3_zone3") then
{

if("fza_m261_m151_3_zone3_3" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_3_zone3");
};

if("fza_m261_m229_3_zone3_3" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_3_zone3");
};

if("fza_m261_m261_3_zone3_3" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_3_zone3");
};

if("fza_m261_m255_3_zone3_3" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_3_zone3");
};

if("fza_m261_m257_3_zone3_3" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_3_zone3");
};

};

if(_heli hasweapon "fza_m261_4_zone3") then
{

if("fza_m261_m151_4_zone3_3" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_4_zone3");
};

if("fza_m261_m229_4_zone3_3" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_4_zone3");
};

if("fza_m261_m261_4_zone3_3" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_4_zone3");
};

if("fza_m261_m255_4_zone3_3" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_4_zone3");
};

if("fza_m261_m257_4_zone3_3" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_4_zone3");
};

};

if(_heli hasweapon "fza_m261_23_zoneC") then
{

if("fza_m261_m151_23_zoneC" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_23_zoneC");
};

if("fza_m261_m229_23_zoneC" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_23_zoneC");
};

if("fza_m261_m261_23_zoneC" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_23_zoneC");
};

if("fza_m261_m255_23_zoneC" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_23_zoneC");
};

if("fza_m261_m257_23_zoneC" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_23_zoneC");
};

};

if(_heli hasweapon "fza_m261_23_zoneD") then
{

if("fza_m261_m151_23_zoneD" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_23_zoneD");
};

if("fza_m261_m229_23_zoneD" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_23_zoneD");
};

if("fza_m261_m261_23_zoneD" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_23_zoneD");
};

if("fza_m261_m255_23_zoneD" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_23_zoneD");
};

if("fza_m261_m257_23_zoneD" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_23_zoneD");
};

};

if(_heli hasweapon "fza_m261_23_zoneE") then
{

if("fza_m261_m151_23_zoneE" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_23_zoneE");
};

if("fza_m261_m229_23_zoneE" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_23_zoneE");
};

if("fza_m261_m261_23_zoneE" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_23_zoneE");
};

if("fza_m261_m255_23_zoneE" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_23_zoneE");
};

if("fza_m261_m257_23_zoneE" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_23_zoneE");
};

};

if(_heli hasweapon "fza_m261_14_zoneA") then
{

if("fza_m261_m151_14_zoneA" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_14_zoneA");
};

if("fza_m261_m229_14_zoneA" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_14_zoneA");
};

if("fza_m261_m261_14_zoneA" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_14_zoneA");
};

if("fza_m261_m255_14_zoneA" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_14_zoneA");
};

if("fza_m261_m257_14_zoneA" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_14_zoneA");
};

};

if(_heli hasweapon "fza_m261_14_zoneB") then
{

if("fza_m261_m151_14_zoneB" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_14_zoneB");
};

if("fza_m261_m229_14_zoneB" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_14_zoneB");
};

if("fza_m261_m261_14_zoneB" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_14_zoneB");
};

if("fza_m261_m255_14_zoneB" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_14_zoneB");
};

if("fza_m261_m257_14_zoneB" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_14_zoneB");
};

};

if(_heli hasweapon "fza_m261_14_zoneE") then
{

if("fza_m261_m151_14_zoneE" in _mags) then
{
_m151qty = _m151qty + (_heli ammo "fza_m261_14_zoneE");
};

if("fza_m261_m229_14_zoneE" in _mags) then
{
_m229qty = _m229qty + (_heli ammo "fza_m261_14_zoneE");
};

if("fza_m261_m261_14_zoneE" in _mags) then
{
_m261qty = _m261qty + (_heli ammo "fza_m261_14_zoneE");
};

if("fza_m261_m255_14_zoneE" in _mags) then
{
_m255qty = _m255qty + (_heli ammo "fza_m261_14_zoneE");
};

if("fza_m261_m257_14_zoneE" in _mags) then
{
_m257qty = _m257qty + (_heli ammo "fza_m261_14_zoneE");
};

};

if(_heli hasweapon "fza_agm114_23_8") then
{

if("fza_agm114l_23_8" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_23_8");
};

if("fza_agm114k_23_8" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_23_8");
};

if("fza_agm114a_23_8" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_23_8");
};

if("fza_agm114c_23_8" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_23_8");
};

if("fza_agm114m_23_8" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_23_8");
};

if("fza_agm114n_23_8" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_23_8");
};

};

if(_heli hasweapon "fza_agm114_14_8") then
{

if("fza_agm114l_14_8" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_14_8");
};

if("fza_agm114k_14_8" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_14_8");
};

if("fza_agm114a_14_8" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_14_8");
};

if("fza_agm114c_14_8" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_14_8");
};

if("fza_agm114m_14_8" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_14_8");
};

if("fza_agm114n_14_8" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_14_8");
};

};

if(_heli hasweapon "fza_agm114_1_4") then
{

if("fza_agm114l_1_4" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_1_4");
};

if("fza_agm114k_1_4" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_1_4");
};

if("fza_agm114a_1_4" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_1_4");
};

if("fza_agm114c_1_4" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_1_4");
};

if("fza_agm114m_1_4" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_1_4");
};

if("fza_agm114n_1_4" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_1_4");
};

};

if(_heli hasweapon "fza_agm114_2_4") then
{

if("fza_agm114l_2_4" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_2_4");
};

if("fza_agm114k_2_4" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_2_4");
};

if("fza_agm114a_2_4" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_2_4");
};

if("fza_agm114c_2_4" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_2_4");
};

if("fza_agm114m_2_4" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_2_4");
};

if("fza_agm114n_2_4" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_2_4");
};

};

if(_heli hasweapon "fza_agm114_3_4") then
{

if("fza_agm114l_3_4" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_3_4");
};

if("fza_agm114k_3_4" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_3_4");
};

if("fza_agm114a_3_4" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_3_4");
};

if("fza_agm114c_3_4" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_3_4");
};

if("fza_agm114m_3_4" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_3_4");
};

if("fza_agm114n_3_4" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_3_4");
};

};

if(_heli hasweapon "fza_agm114_4_4") then
{

if("fza_agm114l_4_4" in _mags) then
{
_114lqty = _114lqty + (_heli ammo "fza_agm114_4_4");
};

if("fza_agm114k_4_4" in _mags) then
{
_114kqty = _114kqty + (_heli ammo "fza_agm114_4_4");
};

if("fza_agm114a_4_4" in _mags) then
{
_114aqty = _114aqty + (_heli ammo "fza_agm114_4_4");
};

if("fza_agm114c_4_4" in _mags) then
{
_114cqty = _114cqty + (_heli ammo "fza_agm114_4_4");
};

if("fza_agm114m_4_4" in _mags) then
{
_114mqty = _114mqty + (_heli ammo "fza_agm114_4_4");
};

if("fza_agm114n_4_4" in _mags) then
{
_114nqty = _114nqty + (_heli ammo "fza_agm114_4_4");
};

};

if("fza_agm114l_1_ur" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_1_ul" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_1_ll" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_1_lr" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114k_1_ur" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_1_ul" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_1_ll" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_1_lr" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114a_1_ur" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_1_ul" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_1_ll" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_1_lr" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114c_1_ur" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_1_ul" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_1_ll" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_1_lr" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114m_1_ur" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_1_ul" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_1_ll" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_1_lr" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114n_1_ur" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_1_ul" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_1_ll" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_1_lr" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114l_2_ur" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_2_ul" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_2_ll" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_2_lr" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114k_2_ur" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_2_ul" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_2_ll" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_2_lr" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114a_2_ur" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_2_ul" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_2_ll" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_2_lr" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114c_2_ur" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_2_ul" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_2_ll" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_2_lr" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114m_2_ur" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_2_ul" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_2_ll" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_2_lr" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114n_2_ur" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_2_ul" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_2_ll" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_2_lr" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114l_3_ur" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_3_ul" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_3_ll" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_3_lr" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114k_3_ur" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_3_ul" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_3_ll" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_3_lr" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114a_3_ur" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_3_ul" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_3_ll" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_3_lr" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114c_3_ur" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_3_ul" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_3_ll" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_3_lr" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114m_3_ur" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_3_ul" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_3_ll" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_3_lr" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114n_3_ur" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_3_ul" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_3_ll" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_3_lr" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114l_4_ur" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_4_ul" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_4_ll" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114l_4_lr" in _mags) then
{
_114lqty = _114lqty + 1;
};

if("fza_agm114k_4_ur" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_4_ul" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_4_ll" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114k_4_lr" in _mags) then
{
_114kqty = _114kqty + 1;
};

if("fza_agm114a_4_ur" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_4_ul" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_4_ll" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114a_4_lr" in _mags) then
{
_114aqty = _114aqty + 1;
};

if("fza_agm114c_4_ur" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_4_ul" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_4_ll" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114c_4_lr" in _mags) then
{
_114cqty = _114cqty + 1;
};

if("fza_agm114m_4_ur" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_4_ul" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_4_ll" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114m_4_lr" in _mags) then
{
_114mqty = _114mqty + 1;
};

if("fza_agm114n_4_ur" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_4_ul" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_4_ll" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_agm114n_4_lr" in _mags) then
{
_114nqty = _114nqty + 1;
};

if("fza_auxtank_230_1" in _mags) then
{
fza_ah64_auxtank_qty = fza_ah64_auxtank_qty + 1;
};

if("fza_auxtank_230_2" in _mags) then
{
fza_ah64_auxtank_qty = fza_ah64_auxtank_qty + 1;
};

if("fza_auxtank_230_3" in _mags) then
{
fza_ah64_auxtank_qty = fza_ah64_auxtank_qty + 1;
};

if("fza_auxtank_230_4" in _mags) then
{
fza_ah64_auxtank_qty = fza_ah64_auxtank_qty + 1;
};

fza_ah64_m151_qty = fza_ah64_m151_qty + _m151qty;
fza_ah64_m229_qty = fza_ah64_m229_qty + _m229qty;
fza_ah64_m261_qty = fza_ah64_m261_qty + _m261qty;
fza_ah64_m255_qty = fza_ah64_m255_qty + _m255qty;

fza_ah64_agm114a_qty = fza_ah64_agm114a_qty + _114aqty;
fza_ah64_agm114c_qty = fza_ah64_agm114c_qty + _114cqty;
fza_ah64_agm114k_qty = fza_ah64_agm114k_qty + _114kqty;
fza_ah64_agm114l_qty = fza_ah64_agm114l_qty + _114lqty;
fza_ah64_agm114m_qty = fza_ah64_agm114m_qty + _114mqty;
fza_ah64_agm114n_qty = fza_ah64_agm114n_qty + _114nqty;
_m261podqty = 0;
_m299rackqty = 0;
_station1rack = 0;
_station2rack = 0;
_station3rack = 0;
_station4rack = 0;

{
if(_x in fza_ah64_rocketweps14) then {_m261podqty = _m261podqty + 2;};
if(_x in fza_ah64_rocketweps23) then {_m261podqty = _m261podqty + 2;};
if(_x in fza_ah64_rocketweps1 && _station1rack == 0) then {_m261podqty = _m261podqty + 1; _station1rack = 1;};
if(_x in fza_ah64_rocketweps2 && _station2rack == 0) then {_m261podqty = _m261podqty + 1; _station2rack = 1;};
if(_x in fza_ah64_rocketweps3 && _station3rack == 0) then {_m261podqty = _m261podqty + 1; _station3rack = 1;};
if(_x in fza_ah64_rocketweps4 && _station4rack == 0) then {_m261podqty = _m261podqty + 1; _station4rack = 1;};
if(_x == "fza_agm114_14_8" || _x == "fza_agm114_23_8") then {_m299rackqty = _m299rackqty + 2;};
if(_x in fza_ah64_hellfireweps1 && _station1rack == 0) then {_m299rackqty = _m299rackqty + 1; _station1rack = 1;};
if(_x in fza_ah64_hellfireweps2 && _station2rack == 0) then {_m299rackqty = _m299rackqty + 1; _station2rack = 1;};
if(_x in fza_ah64_hellfireweps3 && _station3rack == 0) then {_m299rackqty = _m299rackqty + 1; _station3rack = 1;};
if(_x in fza_ah64_hellfireweps4 && _station4rack == 0) then {_m299rackqty = _m299rackqty + 1; _station4rack = 1;};
} foreach weapons _heli;

fza_ah64_m261pod_qty = fza_ah64_m261pod_qty + _m261podqty;
fza_ah64_m299rack_qty = fza_ah64_m299rack_qty + _m299rackqty;

_heli vehiclechat "Rearming requested, this will take 5 minutes. Cannot refuel or repair at the same time.";
uiSleep 2;

//remove weaponry
{_heli removeweapon _x;} foreach (weapons _heli - ["fza_ma_safe","fza_m230"]);
_heli removeweapon "fza_agm114_23_8";
_heli removeweapon "fza_agm114_14_8";
_heli removeweapon "fza_agm114_1_4";
_heli removeweapon "fza_agm114_1_ul";
_heli removeweapon "fza_agm114_1_ur";
_heli removeweapon "fza_agm114_1_ll";
_heli removeweapon "fza_agm114_1_lr";
_heli removeweapon "fza_agm114_2_4";
_heli removeweapon "fza_agm114_2_ul";
_heli removeweapon "fza_agm114_2_ur";
_heli removeweapon "fza_agm114_2_ll";
_heli removeweapon "fza_agm114_2_lr";
_heli removeweapon "fza_agm114_3_4";
_heli removeweapon "fza_agm114_3_ul";
_heli removeweapon "fza_agm114_3_ur";
_heli removeweapon "fza_agm114_3_ll";
_heli removeweapon "fza_agm114_3_lr";
_heli removeweapon "fza_agm114_4_4";
_heli removeweapon "fza_agm114_4_ul";
_heli removeweapon "fza_agm114_4_ur";
_heli removeweapon "fza_agm114_4_ll";
_heli removeweapon "fza_agm114_4_lr";
_heli removeweapon "fza_m261_23";
_heli removeweapon "fza_m261_23_zoneC";
_heli removeweapon "fza_m261_23_zoneD";
_heli removeweapon "fza_m261_23_zoneE";
_heli removeweapon "fza_m261_23_zone1";
_heli removeweapon "fza_m261_23_zone2";
_heli removeweapon "fza_m261_23_zone3";
_heli removeweapon "fza_m261_14";
_heli removeweapon "fza_m261_14_zoneA";
_heli removeweapon "fza_m261_14_zoneB";
_heli removeweapon "fza_m261_14_zoneE";
_heli removeweapon "fza_m261_14_zone1";
_heli removeweapon "fza_m261_14_zone2";
_heli removeweapon "fza_m261_14_zone3";
_heli removeweapon "fza_m261_1";
_heli removeweapon "fza_m261_1_zone1";
_heli removeweapon "fza_m261_1_zone2";
_heli removeweapon "fza_m261_1_zone3";
_heli removeweapon "fza_m261_2";
_heli removeweapon "fza_m261_2_zone1";
_heli removeweapon "fza_m261_2_zone2";
_heli removeweapon "fza_m261_2_zone3";
_heli removeweapon "fza_m261_3";
_heli removeweapon "fza_m261_3_zone1";
_heli removeweapon "fza_m261_3_zone2";
_heli removeweapon "fza_m261_3_zone3";
_heli removeweapon "fza_m261_4";
_heli removeweapon "fza_m261_4_zone1";
_heli removeweapon "fza_m261_4_zone2";
_heli removeweapon "fza_m261_4_zone3";
_heli removeweapon "fza_m261_1234_zoneE";
_heli removeweapon "fza_atas_2";
//remove mags
_heli removemagazines "500Rnd_TwinVickers";
//{_heli removemagazines _x;} foreach (magazines _heli);
//missiles
_heli removemagazines "fza_agm114l_23_8";
_heli removemagazines "fza_agm114l_14_8";
_heli removemagazines "fza_agm114l_1_4";
_heli removemagazines "fza_agm114l_1_ul";
_heli removemagazines "fza_agm114l_1_ur";
_heli removemagazines "fza_agm114l_1_ll";
_heli removemagazines "fza_agm114l_1_lr";
_heli removemagazines "fza_agm114l_2_4";
_heli removemagazines "fza_agm114l_2_ul";
_heli removemagazines "fza_agm114l_2_ur";
_heli removemagazines "fza_agm114l_2_ll";
_heli removemagazines "fza_agm114l_2_lr";
_heli removemagazines "fza_agm114l_3_4";
_heli removemagazines "fza_agm114l_3_ul";
_heli removemagazines "fza_agm114l_3_ur";
_heli removemagazines "fza_agm114l_3_ll";
_heli removemagazines "fza_agm114l_3_lr";
_heli removemagazines "fza_agm114l_4_4";
_heli removemagazines "fza_agm114l_4_ul";
_heli removemagazines "fza_agm114l_4_ur";
_heli removemagazines "fza_agm114l_4_ll";
_heli removemagazines "fza_agm114l_4_lr";
//114k
_heli removemagazines "fza_agm114k_23_8";
_heli removemagazines "fza_agm114k_14_8";
_heli removemagazines "fza_agm114k_1_4";
_heli removemagazines "fza_agm114k_1_ul";
_heli removemagazines "fza_agm114k_1_ur";
_heli removemagazines "fza_agm114k_1_ll";
_heli removemagazines "fza_agm114k_1_lr";
_heli removemagazines "fza_agm114k_2_4";
_heli removemagazines "fza_agm114k_2_ul";
_heli removemagazines "fza_agm114k_2_ur";
_heli removemagazines "fza_agm114k_2_ll";
_heli removemagazines "fza_agm114k_2_lr";
_heli removemagazines "fza_agm114k_3_4";
_heli removemagazines "fza_agm114k_3_ul";
_heli removemagazines "fza_agm114k_3_ur";
_heli removemagazines "fza_agm114k_3_ll";
_heli removemagazines "fza_agm114k_3_lr";
_heli removemagazines "fza_agm114k_4_4";
_heli removemagazines "fza_agm114k_4_ul";
_heli removemagazines "fza_agm114k_4_ur";
_heli removemagazines "fza_agm114k_4_ll";
_heli removemagazines "fza_agm114k_4_lr";
//114c
_heli removemagazines "fza_agm114c_23_8";
_heli removemagazines "fza_agm114c_14_8";
_heli removemagazines "fza_agm114c_1_4";
_heli removemagazines "fza_agm114c_1_ul";
_heli removemagazines "fza_agm114c_1_ur";
_heli removemagazines "fza_agm114c_1_ll";
_heli removemagazines "fza_agm114c_1_lr";
_heli removemagazines "fza_agm114c_2_4";
_heli removemagazines "fza_agm114c_2_ul";
_heli removemagazines "fza_agm114c_2_ur";
_heli removemagazines "fza_agm114c_2_ll";
_heli removemagazines "fza_agm114c_2_lr";
_heli removemagazines "fza_agm114c_3_4";
_heli removemagazines "fza_agm114c_3_ul";
_heli removemagazines "fza_agm114c_3_ur";
_heli removemagazines "fza_agm114c_3_ll";
_heli removemagazines "fza_agm114c_3_lr";
_heli removemagazines "fza_agm114c_4_4";
_heli removemagazines "fza_agm114c_4_ul";
_heli removemagazines "fza_agm114c_4_ur";
_heli removemagazines "fza_agm114c_4_ll";
_heli removemagazines "fza_agm114c_4_lr";
//114a
_heli removemagazines "fza_agm114a_23_8";
_heli removemagazines "fza_agm114a_14_8";
_heli removemagazines "fza_agm114a_1_4";
_heli removemagazines "fza_agm114a_1_ul";
_heli removemagazines "fza_agm114a_1_ur";
_heli removemagazines "fza_agm114a_1_ll";
_heli removemagazines "fza_agm114a_1_lr";
_heli removemagazines "fza_agm114a_2_4";
_heli removemagazines "fza_agm114a_2_ul";
_heli removemagazines "fza_agm114a_2_ur";
_heli removemagazines "fza_agm114a_2_ll";
_heli removemagazines "fza_agm114a_2_lr";
_heli removemagazines "fza_agm114a_3_4";
_heli removemagazines "fza_agm114a_3_ul";
_heli removemagazines "fza_agm114a_3_ur";
_heli removemagazines "fza_agm114a_3_ll";
_heli removemagazines "fza_agm114a_3_lr";
_heli removemagazines "fza_agm114a_4_4";
_heli removemagazines "fza_agm114a_4_ul";
_heli removemagazines "fza_agm114a_4_ur";
_heli removemagazines "fza_agm114a_4_ll";
_heli removemagazines "fza_agm114a_4_lr";
//114m
_heli removemagazines "fza_agm114m_23_8";
_heli removemagazines "fza_agm114m_14_8";
_heli removemagazines "fza_agm114m_1_4";
_heli removemagazines "fza_agm114m_1_ul";
_heli removemagazines "fza_agm114m_1_ur";
_heli removemagazines "fza_agm114m_1_ll";
_heli removemagazines "fza_agm114m_1_lr";
_heli removemagazines "fza_agm114m_2_4";
_heli removemagazines "fza_agm114m_2_ul";
_heli removemagazines "fza_agm114m_2_ur";
_heli removemagazines "fza_agm114m_2_ll";
_heli removemagazines "fza_agm114m_2_lr";
_heli removemagazines "fza_agm114m_3_4";
_heli removemagazines "fza_agm114m_3_ul";
_heli removemagazines "fza_agm114m_3_ur";
_heli removemagazines "fza_agm114m_3_ll";
_heli removemagazines "fza_agm114m_3_lr";
_heli removemagazines "fza_agm114m_4_4";
_heli removemagazines "fza_agm114m_4_ul";
_heli removemagazines "fza_agm114m_4_ur";
_heli removemagazines "fza_agm114m_4_ll";
_heli removemagazines "fza_agm114m_4_lr";
//114n
_heli removemagazines "fza_agm114n_23_8";
_heli removemagazines "fza_agm114n_14_8";
_heli removemagazines "fza_agm114n_1_4";
_heli removemagazines "fza_agm114n_1_ul";
_heli removemagazines "fza_agm114n_1_ur";
_heli removemagazines "fza_agm114n_1_ll";
_heli removemagazines "fza_agm114n_1_lr";
_heli removemagazines "fza_agm114n_2_4";
_heli removemagazines "fza_agm114n_2_ul";
_heli removemagazines "fza_agm114n_2_ur";
_heli removemagazines "fza_agm114n_2_ll";
_heli removemagazines "fza_agm114n_2_lr";
_heli removemagazines "fza_agm114n_3_4";
_heli removemagazines "fza_agm114n_3_ul";
_heli removemagazines "fza_agm114n_3_ur";
_heli removemagazines "fza_agm114n_3_ll";
_heli removemagazines "fza_agm114n_3_lr";
_heli removemagazines "fza_agm114n_4_4";
_heli removemagazines "fza_agm114n_4_ul";
_heli removemagazines "fza_agm114n_4_ur";
_heli removemagazines "fza_agm114n_4_ll";
_heli removemagazines "fza_agm114n_4_lr";
///m151
_heli removemagazines "fza_m261_m151_23_38";
_heli removemagazines "fza_m261_m151_23_zoneC";
_heli removemagazines "fza_m261_m151_23_zoneD";
_heli removemagazines "fza_m261_m151_23_zoneE";
_heli removemagazines "fza_m261_m151_23_zone1_12";
_heli removemagazines "fza_m261_m151_23_zone2_4";
_heli removemagazines "fza_m261_m151_23_zone3_3";
_heli removemagazines "fza_m261_m151_14_38";
_heli removemagazines "fza_m261_m151_14_zoneA";
_heli removemagazines "fza_m261_m151_14_zoneB";
_heli removemagazines "fza_m261_m151_14_zoneE";
_heli removemagazines "fza_m261_m151_14_zone1_12";
_heli removemagazines "fza_m261_m151_14_zone2_4";
_heli removemagazines "fza_m261_m151_14_zone3_3";
_heli removemagazines "fza_m261_m151_1_19";
_heli removemagazines "fza_m261_m151_1_zone1_12";
_heli removemagazines "fza_m261_m151_1_zone2_4";
_heli removemagazines "fza_m261_m151_1_zone3_3";
_heli removemagazines "fza_m261_m151_2_19";
_heli removemagazines "fza_m261_m151_2_zone1_12";
_heli removemagazines "fza_m261_m151_2_zone2_4";
_heli removemagazines "fza_m261_m151_2_zone3_3";
_heli removemagazines "fza_m261_m151_3_19";
_heli removemagazines "fza_m261_m151_3_zone1_12";
_heli removemagazines "fza_m261_m151_3_zone2_4";
_heli removemagazines "fza_m261_m151_3_zone3_3";
_heli removemagazines "fza_m261_m151_4_19";
_heli removemagazines "fza_m261_m151_4_zone1_12";
_heli removemagazines "fza_m261_m151_4_zone2_4";
_heli removemagazines "fza_m261_m151_4_zone3_3";
_heli removemagazines "fza_m261_m151_1234_zoneE";
//m229
_heli removemagazines "fza_m261_m229_23_38";
_heli removemagazines "fza_m261_m229_23_zoneC";
_heli removemagazines "fza_m261_m229_23_zoneD";
_heli removemagazines "fza_m261_m229_23_zoneE";
_heli removemagazines "fza_m261_m229_23_zone1_12";
_heli removemagazines "fza_m261_m229_23_zone2_4";
_heli removemagazines "fza_m261_m229_23_zone3_3";
_heli removemagazines "fza_m261_m229_14_38";
_heli removemagazines "fza_m261_m229_14_zoneA";
_heli removemagazines "fza_m261_m229_14_zoneB";
_heli removemagazines "fza_m261_m229_14_zoneE";
_heli removemagazines "fza_m261_m229_14_zone1_12";
_heli removemagazines "fza_m261_m229_14_zone2_4";
_heli removemagazines "fza_m261_m229_14_zone3_3";
_heli removemagazines "fza_m261_m229_1_19";
_heli removemagazines "fza_m261_m229_1_zone1_12";
_heli removemagazines "fza_m261_m229_1_zone2_4";
_heli removemagazines "fza_m261_m229_1_zone3_3";
_heli removemagazines "fza_m261_m229_2_19";
_heli removemagazines "fza_m261_m229_2_zone1_12";
_heli removemagazines "fza_m261_m229_2_zone2_4";
_heli removemagazines "fza_m261_m229_2_zone3_3";
_heli removemagazines "fza_m261_m229_3_19";
_heli removemagazines "fza_m261_m229_3_zone1_12";
_heli removemagazines "fza_m261_m229_3_zone2_4";
_heli removemagazines "fza_m261_m229_3_zone3_3";
_heli removemagazines "fza_m261_m229_4_19";
_heli removemagazines "fza_m261_m229_4_zone1_12";
_heli removemagazines "fza_m261_m229_4_zone2_4";
_heli removemagazines "fza_m261_m229_4_zone3_3";
_heli removemagazines "fza_m261_m229_1234_zoneE";
//m255
_heli removemagazines "fza_m261_m255_23_38";
_heli removemagazines "fza_m261_m255_23_zoneC";
_heli removemagazines "fza_m261_m255_23_zoneD";
_heli removemagazines "fza_m261_m255_23_zoneE";
_heli removemagazines "fza_m261_m255_23_zone1_12";
_heli removemagazines "fza_m261_m255_23_zone2_4";
_heli removemagazines "fza_m261_m255_23_zone3_3";
_heli removemagazines "fza_m261_m255_14_38";
_heli removemagazines "fza_m261_m255_14_zoneA";
_heli removemagazines "fza_m261_m255_14_zoneB";
_heli removemagazines "fza_m261_m255_14_zoneE";
_heli removemagazines "fza_m261_m255_14_zone1_12";
_heli removemagazines "fza_m261_m255_14_zone2_4";
_heli removemagazines "fza_m261_m255_14_zone3_3";
_heli removemagazines "fza_m261_m255_1_19";
_heli removemagazines "fza_m261_m255_1_zone1_12";
_heli removemagazines "fza_m261_m255_1_zone2_4";
_heli removemagazines "fza_m261_m255_1_zone3_3";
_heli removemagazines "fza_m261_m255_2_19";
_heli removemagazines "fza_m261_m255_2_zone1_12";
_heli removemagazines "fza_m261_m255_2_zone2_4";
_heli removemagazines "fza_m261_m255_2_zone3_3";
_heli removemagazines "fza_m261_m255_3_19";
_heli removemagazines "fza_m261_m255_3_zone1_12";
_heli removemagazines "fza_m261_m255_3_zone2_4";
_heli removemagazines "fza_m261_m255_3_zone3_3";
_heli removemagazines "fza_m261_m255_4_19";
_heli removemagazines "fza_m261_m255_4_zone1_12";
_heli removemagazines "fza_m261_m255_4_zone2_4";
_heli removemagazines "fza_m261_m255_4_zone3_3";
_heli removemagazines "fza_m261_m255_1234_zoneE";
//m261
_heli removemagazines "fza_m261_m261_23_38";
_heli removemagazines "fza_m261_m261_23_zoneC";
_heli removemagazines "fza_m261_m261_23_zoneD";
_heli removemagazines "fza_m261_m261_23_zoneE";
_heli removemagazines "fza_m261_m261_23_zone1_12";
_heli removemagazines "fza_m261_m261_23_zone2_4";
_heli removemagazines "fza_m261_m261_23_zone3_3";
_heli removemagazines "fza_m261_m261_14_38";
_heli removemagazines "fza_m261_m261_14_zoneA";
_heli removemagazines "fza_m261_m261_14_zoneB";
_heli removemagazines "fza_m261_m261_14_zoneE";
_heli removemagazines "fza_m261_m261_14_zone1_12";
_heli removemagazines "fza_m261_m261_14_zone2_4";
_heli removemagazines "fza_m261_m261_14_zone3_3";
_heli removemagazines "fza_m261_m261_1_19";
_heli removemagazines "fza_m261_m261_1_zone1_12";
_heli removemagazines "fza_m261_m261_1_zone2_4";
_heli removemagazines "fza_m261_m261_1_zone3_3";
_heli removemagazines "fza_m261_m261_2_19";
_heli removemagazines "fza_m261_m261_2_zone1_12";
_heli removemagazines "fza_m261_m261_2_zone2_4";
_heli removemagazines "fza_m261_m261_2_zone3_3";
_heli removemagazines "fza_m261_m261_3_19";
_heli removemagazines "fza_m261_m261_3_zone1_12";
_heli removemagazines "fza_m261_m261_3_zone2_4";
_heli removemagazines "fza_m261_m261_3_zone3_3";
_heli removemagazines "fza_m261_m261_4_19";
_heli removemagazines "fza_m261_m261_4_zone1_12";
_heli removemagazines "fza_m261_m261_4_zone2_4";
_heli removemagazines "fza_m261_m261_4_zone3_3";
_heli removemagazines "fza_m261_m261_1234_zoneE";
///m257
_heli removemagazines "fza_m261_m257_23_38";
_heli removemagazines "fza_m261_m257_23_zoneC";
_heli removemagazines "fza_m261_m257_23_zoneD";
_heli removemagazines "fza_m261_m257_23_zoneE";
_heli removemagazines "fza_m261_m257_23_zone1_12";
_heli removemagazines "fza_m261_m257_23_zone2_4";
_heli removemagazines "fza_m261_m257_23_zone3_3";
_heli removemagazines "fza_m261_m257_14_38";
_heli removemagazines "fza_m261_m257_14_zoneA";
_heli removemagazines "fza_m261_m257_14_zoneB";
_heli removemagazines "fza_m261_m257_14_zoneE";
_heli removemagazines "fza_m261_m257_14_zone1_12";
_heli removemagazines "fza_m261_m257_14_zone2_4";
_heli removemagazines "fza_m261_m257_14_zone3_3";
_heli removemagazines "fza_m261_m257_1_19";
_heli removemagazines "fza_m261_m257_1_zone1_12";
_heli removemagazines "fza_m261_m257_1_zone2_4";
_heli removemagazines "fza_m261_m257_1_zone3_3";
_heli removemagazines "fza_m261_m257_2_19";
_heli removemagazines "fza_m261_m257_2_zone1_12";
_heli removemagazines "fza_m261_m257_2_zone2_4";
_heli removemagazines "fza_m261_m257_2_zone3_3";
_heli removemagazines "fza_m261_m257_3_19";
_heli removemagazines "fza_m261_m257_3_zone1_12";
_heli removemagazines "fza_m261_m257_3_zone2_4";
_heli removemagazines "fza_m261_m257_3_zone3_3";
_heli removemagazines "fza_m261_m257_4_19";
_heli removemagazines "fza_m261_m257_4_zone1_12";
_heli removemagazines "fza_m261_m257_4_zone2_4";
_heli removemagazines "fza_m261_m257_4_zone3_3";
_heli removemagazines "fza_m261_m257_1234_zoneE";
//atas
_heli removemagazines "fza_atas_2";
//gun
_heli removemagazines "fza_m230_1200";
_heli removemagazines "fza_m230_350";
_heli removemagazines "fza_iafs_100";
_heli removemagazines "fza_iafs_130";
_heli removemagazines "fza_ah64_gun_jam";
_heli removemagazines "fza_auxtank_230_1";
_heli removemagazines "fza_auxtank_230_2";
_heli removemagazines "fza_auxtank_230_3";
_heli removemagazines "fza_auxtank_230_4";
//CM
_heli removeMagazineTurret ["60Rnd_CMFlareMagazine",[-1]];
//wait a beat for scripts to finish
_heli vehiclechat "Rearming in progress (0%)...";
uiSleep 75;
//now add weaponry
//what rockets are we using
_pod1mag = "fza_m261_m151_1_19";
_pod1magA = "fza_m261_m151_1_zone1_12";
_pod1magB = "fza_m261_m151_1_zone2_4";
_pod1magE = "fza_m261_m151_1_zone3_3";
_pod2mag = "fza_m261_m151_2_19";
_pod2magC = "fza_m261_m151_2_zone1_12";
_pod2magD = "fza_m261_m151_2_zone2_4";
_pod2magE = "fza_m261_m151_2_zone3_3";
_pod3mag = "fza_m261_m151_3_19";
_pod3magC = "fza_m261_m151_3_zone1_12";
_pod3magD = "fza_m261_m151_3_zone2_4";
_pod3magE = "fza_m261_m151_3_zone3_3";
_pod4mag = "fza_m261_m151_4_19";
_pod4magA = "fza_m261_m151_4_zone1_12";
_pod4magB = "fza_m261_m151_4_zone2_4";
_pod4magE = "fza_m261_m151_4_zone3_3";

_pod14mag = "fza_m261_m151_14_38";
_pod14magA = "fza_m261_m151_14_zoneA";
_pod14magB = "fza_m261_m151_14_zoneB";
_pod14magE = "fza_m261_m151_14_zoneE";
_pod23mag = "fza_m261_m151_23_38";
_pod23magC = "fza_m261_m151_23_zoneC";
_pod23magD = "fza_m261_m151_23_zoneD";
_pod23magE = "fza_m261_m151_23_zoneE";

_pod1234magE = "fza_m261_m151_1234_zoneE";

_hf14_8_mag = "fza_agm114l_14_8";
_hf23_8_mag = "fza_agm114l_23_8";
_hf1_4_mag = "fza_agm114l_1_4";
_hf2_4_mag = "fza_agm114l_2_4";
_hf3_4_mag = "fza_agm114l_3_4";
_hf4_4_mag = "fza_agm114l_4_4";
_hf1_ul_mag = "fza_agm114l_1_ul";
_hf1_ur_mag = "fza_agm114l_1_ur";
_hf1_ll_mag = "fza_agm114l_1_ll";
_hf1_lr_mag = "fza_agm114l_1_lr";
_hf2_ul_mag = "fza_agm114l_2_ul";
_hf2_ur_mag = "fza_agm114l_2_ur";
_hf2_ll_mag = "fza_agm114l_2_ll";
_hf2_lr_mag = "fza_agm114l_2_lr";
_hf3_ul_mag = "fza_agm114l_3_ul";
_hf3_ur_mag = "fza_agm114l_3_ur";
_hf3_ll_mag = "fza_agm114l_3_ll";
_hf3_lr_mag = "fza_agm114l_3_lr";
_hf4_ul_mag = "fza_agm114l_4_ul";
_hf4_ur_mag = "fza_agm114l_4_ur";
_hf4_ll_mag = "fza_agm114l_4_ll";
_hf4_lr_mag = "fza_agm114l_4_lr";
_hp1differential = 0;
_hp1differential1 = 0;
_hp1differential2 = 0;
_hp1differential3 = 0;
_hp1differentialA = 0;
_hp1differentialM = 0;
_hp1differentialN = 0;
{if(_x == "L") then {_hp1differential = _hp1differential + 1; _hp1differential1 = _hp1differential1 + 1; _heliweight = _heliweight + 50;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
{if(_x == "K") then {_hp1differential2 = _hp1differential2 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
{if(_x == "C") then {_hp1differential3 = _hp1differential3 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
{if(_x == "A") then {_hp1differentialA = _hp1differentialA + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
{if(_x == "M") then {_hp1differentialM = _hp1differentialM + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
{if(_x == "N") then {_hp1differentialN = _hp1differentialN + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint3_ord4];
if(_hp1differential2 == 4 || _hp1differential3 == 4 || _hp1differentialA == 4 || _hp1differentialM == 4 || _hp1differentialN == 4) then {_hp1differential = 4;};
_hp2differential = 0;
_hp2differential1 = 0;
_hp2differential2 = 0;
_hp2differential3 = 0;
_hp2differentialA = 0;
_hp2differentialM = 0;
_hp2differentialN = 0;
{if(_x == "L") then {_hp2differential = _hp2differential + 1; _hp2differential1 = _hp2differential1 + 1; _heliweight = _heliweight + 50;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
{if(_x == "K") then {_hp2differential2 = _hp2differential2 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
{if(_x == "C") then {_hp2differential3 = _hp2differential3 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
{if(_x == "A") then {_hp2differentialA = _hp2differentialA + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
{if(_x == "M") then {_hp2differentialM = _hp2differentialM + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
{if(_x == "N") then {_hp2differentialN = _hp2differentialN + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint2_ord4];
if(_hp2differential2 == 4 || _hp2differential3 == 4 || _hp2differentialA == 4 || _hp2differentialM == 4 || _hp2differentialN == 4) then {_hp2differential = 4;};
_hp3differential = 0;
_hp3differential1 = 0;
_hp3differential2 = 0;
_hp3differential3 = 0;
_hp3differentialA = 0;
_hp3differentialM = 0;
_hp3differentialN = 0;
{if(_x == "L") then {_hp3differential = _hp3differential + 1; _hp3differential1 = _hp3differential1 + 1; _heliweight = _heliweight + 50;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
{if(_x == "K") then {_hp3differential2 = _hp3differential2 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
{if(_x == "C") then {_hp3differential3 = _hp3differential3 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
{if(_x == "A") then {_hp3differentialA = _hp3differentialA + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
{if(_x == "M") then {_hp3differentialM = _hp3differentialM + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
{if(_x == "N") then {_hp3differentialN = _hp3differentialN + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint4_ord4];
if(_hp3differential2 == 4 || _hp3differential3 == 4 || _hp3differentialA == 4 || _hp3differentialM == 4 || _hp3differentialN == 4) then {_hp3differential = 4;};
_hp4differential = 0;
_hp4differential1 = 0;
_hp4differential2 = 0;
_hp4differential3 = 0;
_hp4differentialA = 0;
_hp4differentialM = 0;
_hp4differentialN = 0;
{if(_x == "L") then {_hp4differential = _hp4differential + 1; _hp4differential1 = _hp4differential1 + 1; _heliweight = _heliweight + 50;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
{if(_x == "K") then {_hp4differential2 = _hp4differential2 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
{if(_x == "C") then {_hp4differential3 = _hp4differential3 + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
{if(_x == "A") then {_hp4differentialA = _hp4differentialA + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
{if(_x == "M") then {_hp4differentialM = _hp4differentialM + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
{if(_x == "N") then {_hp4differentialN = _hp4differentialN + 1; _heliweight = _heliweight + 45;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint5_ord4];
if(_hp4differential2 == 4 || _hp4differential3 == 4 || _hp4differentialA == 4 || _hp4differentialM == 4 || _hp4differentialN == 4) then {_hp4differential = 4;};

_m151qty = 0;
_m229qty = 0;
_m261qty = 0;
_m255qty = 0;
_m257qty = 0;

{if(_x == "151") then {_m151qty = _m151qty + 12; _heliweight = _heliweight + 121.2;}; if(_x == "229") then {_m229qty = _m229qty + 12; _heliweight = _heliweight + 166.8;}; if(_x == "261") then {_m261qty = _m261qty + 12; _heliweight = _heliweight + 147.6;}; if(_x == "255") then {_m255qty = _m255qty + 12; _heliweight = _heliweight + 151.2;}; if(_x == "257") then {_m257qty = _m257qty + 12; _heliweight = _heliweight + 147.6;};} foreach [fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint3_ord1];
{if(_x == "151") then {_m151qty = _m151qty + 4; _heliweight = _heliweight + 40.4;}; if(_x == "229") then {_m229qty = _m229qty + 4; _heliweight = _heliweight + 55.6;}; if(_x == "261") then {_m261qty = _m261qty + 4; _heliweight = _heliweight + 49.2;}; if(_x == "255") then {_m255qty = _m255qty + 4; _heliweight = _heliweight + 50.4;}; if(_x == "257") then {_m257qty = _m257qty + 4; _heliweight = _heliweight + 49.2;};} foreach [fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint3_ord2];
{if(_x == "151") then {_m151qty = _m151qty + 3; _heliweight = _heliweight + 30.3;}; if(_x == "229") then {_m229qty = _m229qty + 3; _heliweight = _heliweight + 41.7;}; if(_x == "261") then {_m261qty = _m261qty + 3; _heliweight = _heliweight + 36.9;}; if(_x == "255") then {_m255qty = _m255qty + 3; _heliweight = _heliweight + 37.8;}; if(_x == "257") then {_m257qty = _m257qty + 3; _heliweight = _heliweight + 36.9;};} foreach [fza_ah64_hardpoint5_ord3,fza_ah64_hardpoint4_ord3,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint3_ord3];
{if(_x == "151") then {_m151qty = _m151qty + 3; _heliweight = _heliweight + 30.3;}; if(_x == "229") then {_m229qty = _m229qty + 3; _heliweight = _heliweight + 41.7;}; if(_x == "261") then {_m261qty = _m261qty + 3; _heliweight = _heliweight + 36.9;}; if(_x == "255") then {_m255qty = _m255qty + 3; _heliweight = _heliweight + 37.8;}; if(_x == "257") then {_m257qty = _m257qty + 3; _heliweight = _heliweight + 36.9;};} foreach [fza_ah64_hardpoint5_ord4,fza_ah64_hardpoint4_ord4,fza_ah64_hardpoint2_ord4,fza_ah64_hardpoint3_ord4];

if(_m151qty > fza_ah64_m151_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: M151";};
if(_m229qty > fza_ah64_m229_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: M229";};
if(_m261qty > fza_ah64_m261_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: M261";};
if(_m255qty > fza_ah64_m255_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: M255";};
if(_m257qty > fza_ah64_m257_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: M257";};

if((_m151qty + _m229qty + _m261qty + _m255qty + _m257qty) >= 19 && fza_ah64_m261pod_qty < 1) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Pod: M261";};
if((_m151qty + _m229qty + _m261qty + _m255qty + _m257qty) >= 20 && fza_ah64_m261pod_qty < 2) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Pod: M261";};
if((_m151qty + _m229qty + _m261qty + _m255qty + _m257qty) >= 39 && fza_ah64_m261pod_qty < 3) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Pod: M261";};
if((_m151qty + _m229qty + _m261qty + _m255qty + _m257qty) >= 58 && fza_ah64_m261pod_qty < 4) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Pod: M261";};

if((_hp1differential1 + _hp2differential1 + _hp3differential1 + _hp4differential1) > fza_ah64_agm114l_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114L";};
if((_hp1differential2 + _hp2differential2 + _hp3differential2 + _hp4differential2) > fza_ah64_agm114k_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114K";};
if((_hp1differential3 + _hp2differential3 + _hp3differential3 + _hp4differential3) > fza_ah64_agm114c_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114C";};
if((_hp1differentialA + _hp2differentialA + _hp3differentialA + _hp4differentialA) > fza_ah64_agm114a_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114A";};
if((_hp1differentialM + _hp2differentialM + _hp3differentialM + _hp4differentialM) > fza_ah64_agm114m_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114M";};
if((_hp1differentialN + _hp2differentialN + _hp3differentialN + _hp4differentialN) > fza_ah64_agm114n_qty) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Weapon: AGM-114N";};

_totalhellfire = _hp1differential1 + _hp2differential1 + _hp3differential1 + _hp4differential1 + _hp1differential2 + _hp2differential2 + _hp3differential2 + _hp4differential2 + _hp1differential3 + _hp2differential3 + _hp3differential3 + _hp4differential3 + _hp1differentialA + _hp2differentialA + _hp3differentialA + _hp4differentialA + _hp1differentialM + _hp2differentialM + _hp3differentialM + _hp4differentialM + _hp1differentialN + _hp2differentialN + _hp3differentialN + _hp4differentialN;

if(_totalhellfire >= 1 && fza_ah64_m299rack_qty < 1) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Rack: M299";};
if(_totalhellfire >= 5 && fza_ah64_m299rack_qty < 2) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Rack: M299";};
if(_totalhellfire >= 9 && fza_ah64_m299rack_qty < 3) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Rack: M299";};
if(_totalhellfire >= 13 && fza_ah64_m299rack_qty < 4) exitwith {_heli vehiclechat "Error: Insufficient quantities to load desired configuration. Rack: M299";};

if(_totalhellfire >= 1) then {fza_ah64_m299rack_qty = fza_ah64_m299rack_qty - 1;};
if(_totalhellfire >= 5) then {fza_ah64_m299rack_qty = fza_ah64_m299rack_qty - 1;};
if(_totalhellfire >= 9) then {fza_ah64_m299rack_qty = fza_ah64_m299rack_qty - 1;};
if(_totalhellfire >= 13) then {fza_ah64_m299rack_qty = fza_ah64_m299rack_qty - 1;};

if((_m151qty + _m229qty + _m261qty + _m255qty) >= 1) then {fza_ah64_m261pod_qty = fza_ah64_m261pod_qty - 1;};
if((_m151qty + _m229qty + _m261qty + _m255qty) >= 20) then {fza_ah64_m261pod_qty = fza_ah64_m261pod_qty - 1;};
if((_m151qty + _m229qty + _m261qty + _m255qty) >= 39) then {fza_ah64_m261pod_qty = fza_ah64_m261pod_qty - 1;};
if((_m151qty + _m229qty + _m261qty + _m255qty) >= 58) then {fza_ah64_m261pod_qty = fza_ah64_m261pod_qty - 1;};

fza_ah64_agm114l_qty = fza_ah64_agm114l_qty - (_hp1differential1 + _hp2differential1 + _hp3differential1 + _hp4differential1);
fza_ah64_agm114k_qty = fza_ah64_agm114k_qty - (_hp1differential2 + _hp2differential2 + _hp3differential2 + _hp4differential2);
fza_ah64_agm114c_qty = fza_ah64_agm114c_qty - (_hp1differential3 + _hp2differential3 + _hp3differential3 + _hp4differential3);
fza_ah64_agm114a_qty = fza_ah64_agm114a_qty - (_hp1differentialA + _hp2differentialA + _hp3differentialA + _hp4differentialA);
fza_ah64_agm114m_qty = fza_ah64_agm114m_qty - (_hp1differentialM + _hp2differentialM + _hp3differentialM + _hp4differentialM);
fza_ah64_agm114n_qty = fza_ah64_agm114n_qty - (_hp1differentialN + _hp2differentialN + _hp3differentialN + _hp4differentialN);

fza_ah64_m151_qty = fza_ah64_m151_qty - _m151qty;
fza_ah64_m229_qty = fza_ah64_m229_qty - _m229qty;
fza_ah64_m261_qty = fza_ah64_m261_qty - _m261qty;
fza_ah64_m255_qty = fza_ah64_m255_qty - _m255qty;
fza_ah64_m257_qty = fza_ah64_m257_qty - _m257qty;

//114K
if (fza_ah64_hardpoint3_ord1 == "K" && fza_ah64_hardpoint3_ord2 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord3 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord4 == fza_ah64_hardpoint3_ord1) then {_hf1_4_mag = "fza_agm114k_1_4";};
if (fza_ah64_hardpoint2_ord1 == "K" && fza_ah64_hardpoint2_ord2 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord3 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord4 == fza_ah64_hardpoint2_ord1) then {_hf2_4_mag = "fza_agm114k_2_4";};
if (fza_ah64_hardpoint4_ord1 == "K" && fza_ah64_hardpoint4_ord2 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord3 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord4 == fza_ah64_hardpoint4_ord1) then {_hf3_4_mag = "fza_agm114k_3_4";};
if (fza_ah64_hardpoint5_ord1 == "K" && fza_ah64_hardpoint5_ord2 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord3 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord4 == fza_ah64_hardpoint5_ord1) then {_hf4_4_mag = "fza_agm114k_4_4";};

//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "K") then {_hf1_ur_mag = "fza_agm114k_1_ur";};
if (fza_ah64_hardpoint3_ord2 == "K") then {_hf1_ul_mag = "fza_agm114k_1_ul";};
if (fza_ah64_hardpoint3_ord3 == "K") then {_hf1_lr_mag = "fza_agm114k_1_lr";};
if (fza_ah64_hardpoint3_ord4 == "K") then {_hf1_ll_mag = "fza_agm114k_1_ll";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "K") then {_hf2_ur_mag = "fza_agm114k_2_ur";};
if (fza_ah64_hardpoint2_ord2 == "K") then {_hf2_ul_mag = "fza_agm114k_2_ul";};
if (fza_ah64_hardpoint2_ord3 == "K") then {_hf2_lr_mag = "fza_agm114k_2_lr";};
if (fza_ah64_hardpoint2_ord4 == "K") then {_hf2_ll_mag = "fza_agm114k_2_ll";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "K") then {_hf3_ur_mag = "fza_agm114k_3_ur";};
if (fza_ah64_hardpoint4_ord2 == "K") then {_hf3_ul_mag = "fza_agm114k_3_ul";};
if (fza_ah64_hardpoint4_ord3 == "K") then {_hf3_lr_mag = "fza_agm114k_3_lr";};
if (fza_ah64_hardpoint4_ord4 == "K") then {_hf3_ll_mag = "fza_agm114k_3_ll";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "K") then {_hf4_ur_mag = "fza_agm114k_4_ur";};
if (fza_ah64_hardpoint5_ord2 == "K") then {_hf4_ul_mag = "fza_agm114k_4_ul";};
if (fza_ah64_hardpoint5_ord3 == "K") then {_hf4_lr_mag = "fza_agm114k_4_lr";};
if (fza_ah64_hardpoint5_ord4 == "K") then {_hf4_ll_mag = "fza_agm114k_4_ll";};

//114C
if (fza_ah64_hardpoint3_ord1 == "C" && fza_ah64_hardpoint3_ord2 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord3 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord4 == fza_ah64_hardpoint3_ord1) then {_hf1_4_mag = "fza_agm114c_1_4";};
if (fza_ah64_hardpoint2_ord1 == "C" && fza_ah64_hardpoint2_ord2 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord3 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord4 == fza_ah64_hardpoint2_ord1) then {_hf2_4_mag = "fza_agm114c_2_4";};
if (fza_ah64_hardpoint4_ord1 == "C" && fza_ah64_hardpoint4_ord2 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord3 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord4 == fza_ah64_hardpoint4_ord1) then {_hf3_4_mag = "fza_agm114c_3_4";};
if (fza_ah64_hardpoint5_ord1 == "C" && fza_ah64_hardpoint5_ord2 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord3 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord4 == fza_ah64_hardpoint5_ord1) then {_hf4_4_mag = "fza_agm114c_4_4";};

//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "C") then {_hf1_ur_mag = "fza_agm114c_1_ur";};
if (fza_ah64_hardpoint3_ord2 == "C") then {_hf1_ul_mag = "fza_agm114c_1_ul";};
if (fza_ah64_hardpoint3_ord3 == "C") then {_hf1_lr_mag = "fza_agm114c_1_lr";};
if (fza_ah64_hardpoint3_ord4 == "C") then {_hf1_ll_mag = "fza_agm114c_1_ll";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "C") then {_hf2_ur_mag = "fza_agm114c_2_ur";};
if (fza_ah64_hardpoint2_ord2 == "C") then {_hf2_ul_mag = "fza_agm114c_2_ul";};
if (fza_ah64_hardpoint2_ord3 == "C") then {_hf2_lr_mag = "fza_agm114c_2_lr";};
if (fza_ah64_hardpoint2_ord4 == "C") then {_hf2_ll_mag = "fza_agm114c_2_ll";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "C") then {_hf3_ur_mag = "fza_agm114c_3_ur";};
if (fza_ah64_hardpoint4_ord2 == "C") then {_hf3_ul_mag = "fza_agm114c_3_ul";};
if (fza_ah64_hardpoint4_ord3 == "C") then {_hf3_lr_mag = "fza_agm114c_3_lr";};
if (fza_ah64_hardpoint4_ord4 == "C") then {_hf3_ll_mag = "fza_agm114c_3_ll";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "C") then {_hf4_ur_mag = "fza_agm114c_4_ur";};
if (fza_ah64_hardpoint5_ord2 == "C") then {_hf4_ul_mag = "fza_agm114c_4_ul";};
if (fza_ah64_hardpoint5_ord3 == "C") then {_hf4_lr_mag = "fza_agm114c_4_lr";};
if (fza_ah64_hardpoint5_ord4 == "C") then {_hf4_ll_mag = "fza_agm114c_4_ll";};

//114A
if (fza_ah64_hardpoint3_ord1 == "A" && fza_ah64_hardpoint3_ord2 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord3 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord4 == fza_ah64_hardpoint3_ord1) then {_hf1_4_mag = "fza_agm114a_1_4";};
if (fza_ah64_hardpoint2_ord1 == "A" && fza_ah64_hardpoint2_ord2 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord3 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord4 == fza_ah64_hardpoint2_ord1) then {_hf2_4_mag = "fza_agm114a_2_4";};
if (fza_ah64_hardpoint4_ord1 == "A" && fza_ah64_hardpoint4_ord2 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord3 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord4 == fza_ah64_hardpoint4_ord1) then {_hf3_4_mag = "fza_agm114a_3_4";};
if (fza_ah64_hardpoint5_ord1 == "A" && fza_ah64_hardpoint5_ord2 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord3 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord4 == fza_ah64_hardpoint5_ord1) then {_hf4_4_mag = "fza_agm114a_4_4";};

//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "A") then {_hf1_ur_mag = "fza_agm114a_1_ur";};
if (fza_ah64_hardpoint3_ord2 == "A") then {_hf1_ul_mag = "fza_agm114a_1_ul";};
if (fza_ah64_hardpoint3_ord3 == "A") then {_hf1_lr_mag = "fza_agm114a_1_lr";};
if (fza_ah64_hardpoint3_ord4 == "A") then {_hf1_ll_mag = "fza_agm114a_1_ll";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "A") then {_hf2_ur_mag = "fza_agm114a_2_ur";};
if (fza_ah64_hardpoint2_ord2 == "A") then {_hf2_ul_mag = "fza_agm114a_2_ul";};
if (fza_ah64_hardpoint2_ord3 == "A") then {_hf2_lr_mag = "fza_agm114a_2_lr";};
if (fza_ah64_hardpoint2_ord4 == "A") then {_hf2_ll_mag = "fza_agm114a_2_ll";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "A") then {_hf3_ur_mag = "fza_agm114a_3_ur";};
if (fza_ah64_hardpoint4_ord2 == "A") then {_hf3_ul_mag = "fza_agm114a_3_ul";};
if (fza_ah64_hardpoint4_ord3 == "A") then {_hf3_lr_mag = "fza_agm114a_3_lr";};
if (fza_ah64_hardpoint4_ord4 == "A") then {_hf3_ll_mag = "fza_agm114a_3_ll";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "A") then {_hf4_ur_mag = "fza_agm114a_4_ur";};
if (fza_ah64_hardpoint5_ord2 == "A") then {_hf4_ul_mag = "fza_agm114a_4_ul";};
if (fza_ah64_hardpoint5_ord3 == "A") then {_hf4_lr_mag = "fza_agm114a_4_lr";};
if (fza_ah64_hardpoint5_ord4 == "A") then {_hf4_ll_mag = "fza_agm114a_4_ll";};

//114M
if (fza_ah64_hardpoint3_ord1 == "M" && fza_ah64_hardpoint3_ord2 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord3 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord4 == fza_ah64_hardpoint3_ord1) then {_hf1_4_mag = "fza_agm114m_1_4";};
if (fza_ah64_hardpoint2_ord1 == "M" && fza_ah64_hardpoint2_ord2 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord3 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord4 == fza_ah64_hardpoint2_ord1) then {_hf2_4_mag = "fza_agm114m_2_4";};
if (fza_ah64_hardpoint4_ord1 == "M" && fza_ah64_hardpoint4_ord2 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord3 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord4 == fza_ah64_hardpoint4_ord1) then {_hf3_4_mag = "fza_agm114m_3_4";};
if (fza_ah64_hardpoint5_ord1 == "M" && fza_ah64_hardpoint5_ord2 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord3 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord4 == fza_ah64_hardpoint5_ord1) then {_hf4_4_mag = "fza_agm114m_4_4";};

//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "M") then {_hf1_ur_mag = "fza_agm114m_1_ur";};
if (fza_ah64_hardpoint3_ord2 == "M") then {_hf1_ul_mag = "fza_agm114m_1_ul";};
if (fza_ah64_hardpoint3_ord3 == "M") then {_hf1_lr_mag = "fza_agm114m_1_lr";};
if (fza_ah64_hardpoint3_ord4 == "M") then {_hf1_ll_mag = "fza_agm114m_1_ll";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "M") then {_hf2_ur_mag = "fza_agm114m_2_ur";};
if (fza_ah64_hardpoint2_ord2 == "M") then {_hf2_ul_mag = "fza_agm114m_2_ul";};
if (fza_ah64_hardpoint2_ord3 == "M") then {_hf2_lr_mag = "fza_agm114m_2_lr";};
if (fza_ah64_hardpoint2_ord4 == "M") then {_hf2_ll_mag = "fza_agm114m_2_ll";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "M") then {_hf3_ur_mag = "fza_agm114m_3_ur";};
if (fza_ah64_hardpoint4_ord2 == "M") then {_hf3_ul_mag = "fza_agm114m_3_ul";};
if (fza_ah64_hardpoint4_ord3 == "M") then {_hf3_lr_mag = "fza_agm114m_3_lr";};
if (fza_ah64_hardpoint4_ord4 == "M") then {_hf3_ll_mag = "fza_agm114m_3_ll";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "M") then {_hf4_ur_mag = "fza_agm114m_4_ur";};
if (fza_ah64_hardpoint5_ord2 == "M") then {_hf4_ul_mag = "fza_agm114m_4_ul";};
if (fza_ah64_hardpoint5_ord3 == "M") then {_hf4_lr_mag = "fza_agm114m_4_lr";};
if (fza_ah64_hardpoint5_ord4 == "M") then {_hf4_ll_mag = "fza_agm114m_4_ll";};

//114N
if (fza_ah64_hardpoint3_ord1 == "N" && fza_ah64_hardpoint3_ord2 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord3 == fza_ah64_hardpoint3_ord1 && fza_ah64_hardpoint3_ord4 == fza_ah64_hardpoint3_ord1) then {_hf1_4_mag = "fza_agm114n_1_4";};
if (fza_ah64_hardpoint2_ord1 == "N" && fza_ah64_hardpoint2_ord2 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord3 == fza_ah64_hardpoint2_ord1 && fza_ah64_hardpoint2_ord4 == fza_ah64_hardpoint2_ord1) then {_hf2_4_mag = "fza_agm114n_2_4";};
if (fza_ah64_hardpoint4_ord1 == "N" && fza_ah64_hardpoint4_ord2 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord3 == fza_ah64_hardpoint4_ord1 && fza_ah64_hardpoint4_ord4 == fza_ah64_hardpoint4_ord1) then {_hf3_4_mag = "fza_agm114n_3_4";};
if (fza_ah64_hardpoint5_ord1 == "N" && fza_ah64_hardpoint5_ord2 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord3 == fza_ah64_hardpoint5_ord1 && fza_ah64_hardpoint5_ord4 == fza_ah64_hardpoint5_ord1) then {_hf4_4_mag = "fza_agm114n_4_4";};

//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "N") then {_hf1_ur_mag = "fza_agm114n_1_ur";};
if (fza_ah64_hardpoint3_ord2 == "N") then {_hf1_ul_mag = "fza_agm114n_1_ul";};
if (fza_ah64_hardpoint3_ord3 == "N") then {_hf1_lr_mag = "fza_agm114n_1_lr";};
if (fza_ah64_hardpoint3_ord4 == "N") then {_hf1_ll_mag = "fza_agm114n_1_ll";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "N") then {_hf2_ur_mag = "fza_agm114n_2_ur";};
if (fza_ah64_hardpoint2_ord2 == "N") then {_hf2_ul_mag = "fza_agm114n_2_ul";};
if (fza_ah64_hardpoint2_ord3 == "N") then {_hf2_lr_mag = "fza_agm114n_2_lr";};
if (fza_ah64_hardpoint2_ord4 == "N") then {_hf2_ll_mag = "fza_agm114n_2_ll";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "N") then {_hf3_ur_mag = "fza_agm114n_3_ur";};
if (fza_ah64_hardpoint4_ord2 == "N") then {_hf3_ul_mag = "fza_agm114n_3_ul";};
if (fza_ah64_hardpoint4_ord3 == "N") then {_hf3_lr_mag = "fza_agm114n_3_lr";};
if (fza_ah64_hardpoint4_ord4 == "N") then {_hf3_ll_mag = "fza_agm114n_3_ll";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "N") then {_hf4_ur_mag = "fza_agm114n_4_ur";};
if (fza_ah64_hardpoint5_ord2 == "N") then {_hf4_ul_mag = "fza_agm114n_4_ul";};
if (fza_ah64_hardpoint5_ord3 == "N") then {_hf4_lr_mag = "fza_agm114n_4_lr";};
if (fza_ah64_hardpoint5_ord4 == "N") then {_hf4_ll_mag = "fza_agm114n_4_ll";};

//299 empty rails
//hp1 indi rails
if (fza_ah64_hardpoint3_ord1 == "NONE" || fza_ah64_hardpoint3_ord1 == "-" || fza_ah64_hardpoint3_ord1 == "ERR") then {_hf1_ur_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint3_ord2 == "NONE" || fza_ah64_hardpoint3_ord2 == "-" || fza_ah64_hardpoint3_ord2 == "ERR") then {_hf1_ul_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint3_ord3 == "NONE" || fza_ah64_hardpoint3_ord3 == "-" || fza_ah64_hardpoint3_ord3 == "ERR") then {_hf1_lr_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint3_ord4 == "NONE" || fza_ah64_hardpoint3_ord4 == "-" || fza_ah64_hardpoint3_ord4 == "ERR") then {_hf1_ll_mag = "500Rnd_TwinVickers";};
//hp2 indi rails
if (fza_ah64_hardpoint2_ord1 == "NONE" || fza_ah64_hardpoint2_ord1 == "-" || fza_ah64_hardpoint2_ord1 == "ERR") then {_hf2_ur_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint2_ord2 == "NONE" || fza_ah64_hardpoint2_ord2 == "-" || fza_ah64_hardpoint2_ord2 == "ERR") then {_hf2_ul_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint2_ord3 == "NONE" || fza_ah64_hardpoint2_ord3 == "-" || fza_ah64_hardpoint2_ord3 == "ERR") then {_hf2_lr_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint2_ord4 == "NONE" || fza_ah64_hardpoint2_ord4 == "-" || fza_ah64_hardpoint2_ord4 == "ERR") then {_hf2_ll_mag = "500Rnd_TwinVickers";};
//hp3 indi rails
if (fza_ah64_hardpoint4_ord1 == "NONE" || fza_ah64_hardpoint4_ord1 == "-" || fza_ah64_hardpoint4_ord1 == "ERR") then {_hf3_ur_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint4_ord2 == "NONE" || fza_ah64_hardpoint4_ord2 == "-" || fza_ah64_hardpoint4_ord2 == "ERR") then {_hf3_ul_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint4_ord3 == "NONE" || fza_ah64_hardpoint4_ord3 == "-" || fza_ah64_hardpoint4_ord3 == "ERR") then {_hf3_lr_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint4_ord4 == "NONE" || fza_ah64_hardpoint4_ord4 == "-" || fza_ah64_hardpoint4_ord4 == "ERR") then {_hf3_ll_mag = "500Rnd_TwinVickers";};
//hp4 indi rails
if (fza_ah64_hardpoint5_ord1 == "NONE" || fza_ah64_hardpoint5_ord1 == "-" || fza_ah64_hardpoint5_ord1 == "ERR") then {_hf4_ur_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint5_ord2 == "NONE" || fza_ah64_hardpoint5_ord2 == "-" || fza_ah64_hardpoint5_ord2 == "ERR") then {_hf4_ul_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint5_ord3 == "NONE" || fza_ah64_hardpoint5_ord3 == "-" || fza_ah64_hardpoint5_ord3 == "ERR") then {_hf4_lr_mag = "500Rnd_TwinVickers";};
if (fza_ah64_hardpoint5_ord4 == "NONE" || fza_ah64_hardpoint5_ord4 == "-" || fza_ah64_hardpoint5_ord4 == "ERR") then {_hf4_ll_mag = "500Rnd_TwinVickers";};

//twinracks
if (fza_ah64_hardpoint3_ord1 == "K" && fza_ah64_hardpoint5_ord1 == "K") then {_hf14_8_mag = "fza_agm114k_14_8";};
if (fza_ah64_hardpoint2_ord1 == "K" && fza_ah64_hardpoint4_ord1 == "K") then {_hf23_8_mag = "fza_agm114k_23_8";};

if (fza_ah64_hardpoint3_ord1 == "C" && fza_ah64_hardpoint5_ord1 == "C") then {_hf14_8_mag = "fza_agm114c_14_8";};
if (fza_ah64_hardpoint2_ord1 == "C" && fza_ah64_hardpoint4_ord1 == "C") then {_hf23_8_mag = "fza_agm114c_23_8";};

if (fza_ah64_hardpoint3_ord1 == "A" && fza_ah64_hardpoint5_ord1 == "A") then {_hf14_8_mag = "fza_agm114a_14_8";};
if (fza_ah64_hardpoint2_ord1 == "A" && fza_ah64_hardpoint4_ord1 == "A") then {_hf23_8_mag = "fza_agm114a_23_8";};

if (fza_ah64_hardpoint3_ord1 == "M" && fza_ah64_hardpoint5_ord1 == "M") then {_hf14_8_mag = "fza_agm114m_14_8";};
if (fza_ah64_hardpoint2_ord1 == "M" && fza_ah64_hardpoint4_ord1 == "M") then {_hf23_8_mag = "fza_agm114m_23_8";};

if (fza_ah64_hardpoint3_ord1 == "N" && fza_ah64_hardpoint5_ord1 == "N") then {_hf14_8_mag = "fza_agm114n_14_8";};
if (fza_ah64_hardpoint2_ord1 == "N" && fza_ah64_hardpoint4_ord1 == "N") then {_hf23_8_mag = "fza_agm114n_23_8";};

//singlepods
if (fza_ah64_hardpoint3_ord1 == "229") then {_pod1mag = "fza_m261_m229_1_19"; _pod1magA = "fza_m261_m229_1_zone1_12"; _pod14mag = "fza_m261_m229_14_38"; _pod14magA = "fza_m261_m229_14_zoneA";};
if (fza_ah64_hardpoint2_ord1 == "229") then {_pod2mag = "fza_m261_m229_2_19"; _pod2magC = "fza_m261_m229_2_zone1_12"; _pod23mag = "fza_m261_m229_23_38"; _pod23magC = "fza_m261_m229_23_zoneC";};
if (fza_ah64_hardpoint4_ord1 == "229") then {_pod3mag = "fza_m261_m229_3_19"; _pod3magC = "fza_m261_m229_3_zone1_12"; _pod23mag = "fza_m261_m229_23_38";};
if (fza_ah64_hardpoint5_ord1 == "229") then {_pod4mag = "fza_m261_m229_4_19"; _pod4magA = "fza_m261_m229_4_zone1_12"; _pod14mag = "fza_m261_m229_14_38";};

if (fza_ah64_hardpoint3_ord2 == "229") then {_pod1magB = "fza_m261_m229_1_zone2_4"; _pod14magB = "fza_m261_m229_14_zoneB";};
if (fza_ah64_hardpoint2_ord2 == "229") then {_pod2magD = "fza_m261_m229_2_zone2_4"; _pod23magD = "fza_m261_m229_23_zoneD";};
if (fza_ah64_hardpoint4_ord2 == "229") then {_pod3magD = "fza_m261_m229_3_zone2_4";};
if (fza_ah64_hardpoint5_ord2 == "229") then {_pod4magB = "fza_m261_m229_4_zone2_4";};

if (fza_ah64_hardpoint3_ord3 == "229") then {_pod1magE = "fza_m261_m229_1_zone3_3"; _pod14magE = "fza_m261_m229_14_zoneE"; _pod23magE = "fza_m261_m229_23_zoneE";};
if (fza_ah64_hardpoint2_ord3 == "229") then {_pod2magE = "fza_m261_m229_2_zone3_3";};
if (fza_ah64_hardpoint4_ord3 == "229") then {_pod3magE = "fza_m261_m229_3_zone3_3";};
if (fza_ah64_hardpoint5_ord3 == "229") then {_pod4magE = "fza_m261_m229_4_zone3_3";};

if (fza_ah64_hardpoint3_ord1 == "261") then {_pod1mag = "fza_m261_m261_1_19"; _pod1magA = "fza_m261_m261_1_zone1_12"; _pod14mag = "fza_m261_m261_14_38"; _pod14magA = "fza_m261_m261_14_zoneA";};
if (fza_ah64_hardpoint2_ord1 == "261") then {_pod2mag = "fza_m261_m261_2_19"; _pod2magC = "fza_m261_m261_2_zone1_12"; _pod23mag = "fza_m261_m261_23_38"; _pod23magC = "fza_m261_m261_23_zoneC";};
if (fza_ah64_hardpoint4_ord1 == "261") then {_pod3mag = "fza_m261_m261_3_19"; _pod3magC = "fza_m261_m261_3_zone1_12"; _pod23mag = "fza_m261_m261_23_38";};
if (fza_ah64_hardpoint5_ord1 == "261") then {_pod4mag = "fza_m261_m261_4_19"; _pod4magA = "fza_m261_m261_4_zone1_12"; _pod14mag = "fza_m261_m261_14_38";};

if (fza_ah64_hardpoint3_ord2 == "261") then {_pod1magB = "fza_m261_m261_1_zone2_4"; _pod14magB = "fza_m261_m261_14_zoneB";};
if (fza_ah64_hardpoint2_ord2 == "261") then {_pod2magD = "fza_m261_m261_2_zone2_4"; _pod23magD = "fza_m261_m261_23_zoneD";};
if (fza_ah64_hardpoint4_ord2 == "261") then {_pod3magD = "fza_m261_m261_3_zone2_4";};
if (fza_ah64_hardpoint5_ord2 == "261") then {_pod4magB = "fza_m261_m261_4_zone2_4";};

if (fza_ah64_hardpoint3_ord3 == "261") then {_pod1magE = "fza_m261_m261_1_zone3_3"; _pod14magE = "fza_m261_m261_14_zoneE"; _pod23magE = "fza_m261_m261_23_zoneE";};
if (fza_ah64_hardpoint2_ord3 == "261") then {_pod2magE = "fza_m261_m261_2_zone3_3";};
if (fza_ah64_hardpoint4_ord3 == "261") then {_pod3magE = "fza_m261_m261_3_zone3_3";};
if (fza_ah64_hardpoint5_ord3 == "261") then {_pod4magE = "fza_m261_m261_4_zone3_3";};

if (fza_ah64_hardpoint3_ord1 == "255") then {_pod1mag = "fza_m261_m255_1_19"; _pod1magA = "fza_m261_m255_1_zone1_12"; _pod14mag = "fza_m261_m255_14_38"; _pod14magA = "fza_m261_m255_14_zoneA";};
if (fza_ah64_hardpoint2_ord1 == "255") then {_pod2mag = "fza_m261_m255_2_19"; _pod2magC = "fza_m261_m255_2_zone1_12"; _pod23mag = "fza_m261_m255_23_38"; _pod23magC = "fza_m261_m255_23_zoneC";};
if (fza_ah64_hardpoint4_ord1 == "255") then {_pod3mag = "fza_m261_m255_3_19"; _pod3magC = "fza_m261_m255_3_zone1_12"; _pod23mag = "fza_m261_m255_23_38";};
if (fza_ah64_hardpoint5_ord1 == "255") then {_pod4mag = "fza_m261_m255_4_19"; _pod4magA = "fza_m261_m255_4_zone1_12"; _pod14mag = "fza_m261_m255_14_38";};

if (fza_ah64_hardpoint3_ord2 == "255") then {_pod1magB = "fza_m261_m255_1_zone2_4"; _pod14magB = "fza_m261_m255_14_zoneB";};
if (fza_ah64_hardpoint2_ord2 == "255") then {_pod2magD = "fza_m261_m255_2_zone2_4"; _pod23magD = "fza_m261_m255_23_zoneD";};
if (fza_ah64_hardpoint4_ord2 == "255") then {_pod3magD = "fza_m261_m255_3_zone2_4";};
if (fza_ah64_hardpoint5_ord2 == "255") then {_pod4magB = "fza_m261_m255_4_zone2_4";};

if (fza_ah64_hardpoint3_ord3 == "255") then {_pod1magE = "fza_m261_m255_1_zone3_3"; _pod14magE = "fza_m261_m255_14_zoneE"; _pod23magE = "fza_m261_m255_23_zoneE";};
if (fza_ah64_hardpoint2_ord3 == "255") then {_pod2magE = "fza_m261_m255_2_zone3_3";};
if (fza_ah64_hardpoint4_ord3 == "255") then {_pod3magE = "fza_m261_m255_3_zone3_3";};
if (fza_ah64_hardpoint5_ord3 == "255") then {_pod4magE = "fza_m261_m255_4_zone3_3";};

if (fza_ah64_hardpoint3_ord1 == "257") then {_pod1mag = "fza_m261_m257_1_19"; _pod1magA = "fza_m261_m257_1_zone1_12"; _pod14mag = "fza_m261_m257_14_38"; _pod14magA = "fza_m261_m257_14_zoneA";};
if (fza_ah64_hardpoint2_ord1 == "257") then {_pod2mag = "fza_m261_m257_2_19"; _pod2magC = "fza_m261_m257_2_zone1_12"; _pod23mag = "fza_m261_m257_23_38"; _pod23magC = "fza_m261_m257_23_zoneC";};
if (fza_ah64_hardpoint4_ord1 == "257") then {_pod3mag = "fza_m261_m257_3_19"; _pod3magC = "fza_m261_m257_3_zone1_12"; _pod23mag = "fza_m261_m257_23_38";};
if (fza_ah64_hardpoint5_ord1 == "257") then {_pod4mag = "fza_m261_m257_4_19"; _pod4magA = "fza_m261_m257_4_zone1_12"; _pod14mag = "fza_m261_m257_14_38";};

if (fza_ah64_hardpoint3_ord2 == "257") then {_pod1magB = "fza_m261_m257_1_zone2_4"; _pod14magB = "fza_m261_m257_14_zoneB";};
if (fza_ah64_hardpoint2_ord2 == "257") then {_pod2magD = "fza_m261_m257_2_zone2_4"; _pod23magD = "fza_m261_m257_23_zoneD";};
if (fza_ah64_hardpoint4_ord2 == "257") then {_pod3magD = "fza_m261_m257_3_zone2_4";};
if (fza_ah64_hardpoint5_ord2 == "257") then {_pod4magB = "fza_m261_m257_4_zone2_4";};

if (fza_ah64_hardpoint3_ord3 == "257") then {_pod1magE = "fza_m261_m257_1_zone3_3"; _pod14magE = "fza_m261_m257_14_zoneE"; _pod23magE = "fza_m261_m257_23_zoneE";};
if (fza_ah64_hardpoint2_ord3 == "257") then {_pod2magE = "fza_m261_m257_2_zone3_3";};
if (fza_ah64_hardpoint4_ord3 == "257") then {_pod3magE = "fza_m261_m257_3_zone3_3";};
if (fza_ah64_hardpoint5_ord3 == "257") then {_pod4magE = "fza_m261_m257_4_zone3_3";};

//rocket zone handling
_usecombined14 = 0;
_zonecount14 = 0;
{if(_x == "151") then {_zonecount14 = _zonecount14 + 1;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3];
if(_zonecount14 == 6) then {_usecombined14 = 1;};
_zonecount14 = 0;
{if(_x == "229") then {_zonecount14 = _zonecount14 + 1;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3];
if(_zonecount14 == 6) then {_usecombined14 = 1;};
_zonecount14 = 0;
{if(_x == "255") then {_zonecount14 = _zonecount14 + 1;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3];
if(_zonecount14 == 6) then {_usecombined14 = 1;};
_zonecount14 = 0;
{if(_x == "261") then {_zonecount14 = _zonecount14 + 1;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3];
if(_zonecount14 == 6) then {_usecombined14 = 1;};
_zonecount14 = 0;
{if(_x == "257") then {_zonecount14 = _zonecount14 + 1;};} foreach [fza_ah64_hardpoint3_ord1,fza_ah64_hardpoint3_ord2,fza_ah64_hardpoint3_ord3,fza_ah64_hardpoint5_ord1,fza_ah64_hardpoint5_ord2,fza_ah64_hardpoint5_ord3];
if(_zonecount14 == 6) then {_usecombined14 = 1;};

_usecombined23 = 0;
_zonecount23 = 0;
{if(_x == "151") then {_zonecount23 = _zonecount23 + 1;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3];
if(_zonecount23 == 6) then {_usecombined23 = 1;};
_zonecount23 = 0;
{if(_x == "229") then {_zonecount23 = _zonecount23 + 1;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3];
if(_zonecount23 == 6) then {_usecombined23 = 1;};
_zonecount23 = 0;
{if(_x == "255") then {_zonecount23 = _zonecount23 + 1;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3];
if(_zonecount23 == 6) then {_usecombined23 = 1;};
_zonecount23 = 0;
{if(_x == "261") then {_zonecount23 = _zonecount23 + 1;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3];
if(_zonecount23 == 6) then {_usecombined23 = 1;};
_zonecount23 = 0;
{if(_x == "257") then {_zonecount23 = _zonecount23 + 1;};} foreach [fza_ah64_hardpoint2_ord1,fza_ah64_hardpoint2_ord2,fza_ah64_hardpoint2_ord3,fza_ah64_hardpoint4_ord1,fza_ah64_hardpoint4_ord2,fza_ah64_hardpoint4_ord3];
if(_zonecount23 == 6) then {_usecombined23 = 1;};

//weapons
//atas
_heli vehiclechat "Rearming in progress (25%)...";
uiSleep 75;
if (fza_ah64_hardpoint1 > 0 && fza_ah64_fim92_qty > 3) then {_heli addmagazine "fza_atas_2"; _heli addweapon "fza_atas_2"; fza_ah64_fim92_qty = fza_ah64_fim92_qty - 4; _heliweight = _heliweight + 62.8;};
//pairs
if (fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 == 0 && _hp1differential == 4 && _hp4differential == 4 && fza_ah64_hardpoint3_ord1 == fza_ah64_hardpoint5_ord1) then {_heli addmagazine _hf14_8_mag; _heli addweapon "fza_agm114_14_8"; _heliweight = _heliweight + 130;};
if (fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 == 0 && _hp2differential == 4 && _hp3differential == 4 && fza_ah64_hardpoint2_ord1 == fza_ah64_hardpoint4_ord1) then {_heli addmagazine _hf23_8_mag; _heli addweapon "fza_agm114_23_8"; _heliweight = _heliweight + 130;};
//total pods
if (fza_ah64_hardpoint3 == 1 && fza_ah64_hardpoint5 == 1 && _usecombined14 == 1) then {_heli addmagazine _pod14mag; _heli addweapon "fza_m261_14"; _heliweight = _heliweight + 78;};
if (fza_ah64_hardpoint2 == 1 && fza_ah64_hardpoint4 == 1 && _usecombined23 == 1) then {_heli addmagazine _pod23mag; _heli addweapon "fza_m261_23"; _heliweight = _heliweight + 78;};
//combined zones
if (fza_ah64_hardpoint3 == 1 && fza_ah64_hardpoint5 == 1 && _usecombined14 == 0) then {_heli addmagazine _pod14magA; _heli addmagazine _pod14magB; _heli addmagazine _pod14magE; _heli addweapon "fza_m261_14_zoneA"; _heli addweapon "fza_m261_14_zoneB"; _heli addweapon "fza_m261_14_zoneE"; _heliweight = _heliweight + 78;};
if (fza_ah64_hardpoint2 == 1 && fza_ah64_hardpoint4 == 1 && _usecombined23 == 0) then {_heli addmagazine _pod23magC; _heli addmagazine _pod23magD; _heli addmagazine _pod23magE; _heli addweapon "fza_m261_23_zoneC"; _heli addweapon "fza_m261_23_zoneD"; _heli addweapon "fza_m261_23_zoneE"; _heliweight = _heliweight + 78;};

//singles
_heli vehiclechat "Rearming in progress (50%)...";
uiSleep 75;
if (fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 != 0 && _hp1differential == 4 || fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 == 0 && _hp1differential != _hp4differential && _hp1differential == 4 || fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 == 0 && _hp1differential == _hp4differential && fza_ah64_hardpoint3_ord1 != fza_ah64_hardpoint5_ord1 && _hp1differential == 4) then {_heli addmagazine _hf1_4_mag; _heli addweapon "fza_agm114_1_4"; _heliweight = _heliweight + 65;};
if (fza_ah64_hardpoint3 != 0 && fza_ah64_hardpoint5 == 0 && _hp4differential == 4 || fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 == 0 && _hp4differential != _hp1differential && _hp4differential == 4 || fza_ah64_hardpoint3 == 0 && fza_ah64_hardpoint5 == 0 && _hp1differential == _hp4differential && fza_ah64_hardpoint3_ord1 != fza_ah64_hardpoint5_ord1 && _hp4differential == 4) then {_heli addmagazine _hf4_4_mag; _heli addweapon "fza_agm114_4_4"; _heliweight = _heliweight + 65;};
if (fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 != 0 && _hp2differential == 4 || fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 == 0 && _hp2differential != _hp3differential && _hp2differential == 4 || fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 == 0 && _hp2differential == _hp3differential && fza_ah64_hardpoint2_ord1 != fza_ah64_hardpoint4_ord1 && _hp2differential == 4) then {_heli addmagazine _hf2_4_mag; _heli addweapon "fza_agm114_2_4"; _heliweight = _heliweight + 65;};
if (fza_ah64_hardpoint2 != 0 && fza_ah64_hardpoint4 == 0 && _hp3differential == 4 || fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 == 0 && _hp2differential != _hp3differential && _hp3differential == 4 || fza_ah64_hardpoint2 == 0 && fza_ah64_hardpoint4 == 0 && _hp2differential == _hp3differential && fza_ah64_hardpoint2_ord1 != fza_ah64_hardpoint4_ord1 && _hp3differential == 4) then {_heli addmagazine _hf3_4_mag; _heli addweapon "fza_agm114_3_4"; _heliweight = _heliweight + 65;};
//single rails HP1//
if (fza_ah64_hardpoint3 == 0 && _hp1differential < 4) then {_heli addmagazine _hf1_ur_mag; _heli addweapon "fza_agm114_1_ur"; _heli addmagazine _hf1_ul_mag; _heli addweapon "fza_agm114_1_ul"; _heli addmagazine _hf1_lr_mag; _heli addweapon "fza_agm114_1_lr"; _heli addmagazine _hf1_ll_mag; _heli addweapon "fza_agm114_1_ll"; _heliweight = _heliweight + 65;};
//single rails HP2//
if (fza_ah64_hardpoint2 == 0 && _hp2differential < 4) then {_heli addmagazine _hf2_ur_mag; _heli addweapon "fza_agm114_2_ur"; _heli addmagazine _hf2_ul_mag; _heli addweapon "fza_agm114_2_ul"; _heli addmagazine _hf2_lr_mag; _heli addweapon "fza_agm114_2_lr"; _heli addmagazine _hf2_ll_mag; _heli addweapon "fza_agm114_2_ll"; _heliweight = _heliweight + 65;};
//single rails HP3//
if (fza_ah64_hardpoint4 == 0 && _hp3differential < 4) then {_heli addmagazine _hf3_ur_mag; _heli addweapon "fza_agm114_3_ur"; _heli addmagazine _hf3_ul_mag; _heli addweapon "fza_agm114_3_ul"; _heli addmagazine _hf3_lr_mag; _heli addweapon "fza_agm114_3_lr"; _heli addmagazine _hf3_ll_mag; _heli addweapon "fza_agm114_3_ll"; _heliweight = _heliweight + 65;};
//single rails HP4//
if (fza_ah64_hardpoint5 == 0 && _hp4differential < 4) then {_heli addmagazine _hf4_ur_mag; _heli addweapon "fza_agm114_4_ur"; _heli addmagazine _hf4_ul_mag; _heli addweapon "fza_agm114_4_ul"; _heli addmagazine _hf4_lr_mag; _heli addweapon "fza_agm114_4_lr"; _heli addmagazine _hf4_ll_mag; _heli addweapon "fza_agm114_4_ll"; _heliweight = _heliweight + 65;};
//rockets
_heli vehiclechat "Rearming in progress (75%)...";
uiSleep 75;
if (fza_ah64_hardpoint3 != -1 && fza_ah64_hardpoint3 == 1 && fza_ah64_hardpoint5 != 1) then {_heli addmagazine _pod1magA; _heli addmagazine _pod1magB; _heli addmagazine _pod1magE; _heli addweapon "fza_m261_1_zone1"; _heli addweapon "fza_m261_1_zone2"; _heli addweapon "fza_m261_1_zone3"; _heliweight = _heliweight + 39;};
if (fza_ah64_hardpoint5 != -1 && fza_ah64_hardpoint5 == 1 && fza_ah64_hardpoint3 != 1) then {_heli addmagazine _pod4magA; _heli addmagazine _pod4magB; _heli addmagazine _pod4magE; _heli addweapon "fza_m261_4_zone1"; _heli addweapon "fza_m261_4_zone2"; _heli addweapon "fza_m261_4_zone3"; _heliweight = _heliweight + 39;};
if (fza_ah64_hardpoint2 != -1 && fza_ah64_hardpoint2 == 1 && fza_ah64_hardpoint4 != 1) then {_heli addmagazine _pod2magC; _heli addmagazine _pod2magD; _heli addmagazine _pod2magE; _heli addweapon "fza_m261_2_zone1"; _heli addweapon "fza_m261_2_zone2"; _heli addweapon "fza_m261_2_zone3"; _heliweight = _heliweight + 39;};
if (fza_ah64_hardpoint4 != -1 && fza_ah64_hardpoint4 == 1 && fza_ah64_hardpoint2 != 1) then {_heli addmagazine _pod3magC; _heli addmagazine _pod3magD; _heli addmagazine _pod3magE; _heli addweapon "fza_m261_3_zone1"; _heli addweapon "fza_m261_3_zone2"; _heli addweapon "fza_m261_3_zone3"; _heliweight = _heliweight + 39;};
//gun
if (fza_ah64_canmag  == 0) then {_heli addmagazine "fza_iafs_130"; _heliweight = _heliweight + 362;};
if (fza_ah64_canmag  == 1 && fza_ah64_30mmhedp_qty > 1199) then {_heli addmagazine "fza_m230_1200"; fza_ah64_30mmhedp_qty = fza_ah64_30mmhedp_qty - 1200; _heliweight = _heliweight + 420;};
if (fza_ah64_canmag  == 2 && fza_ah64_30mmhedp_qty > 299) then {_heli addmagazine "fza_m230_350"; _heli addmagazine "fza_iafs_100"; fza_ah64_30mmhedp_qty = fza_ah64_30mmhedp_qty - 300; _heliweight = _heliweight + 411;};
//aux tanks
if (fza_ah64_hardpoint3 == 14 && fza_ah64_auxtank_qty > 0) then {_heli addmagazine "fza_auxtank_230_1"; fza_ah64_auxtank_qty = fza_ah64_auxtank_qty - 1; _heliweight = _heliweight + 420;};
if (fza_ah64_hardpoint2 == 14 && fza_ah64_auxtank_qty > 0) then {_heli addmagazine "fza_auxtank_230_2"; fza_ah64_auxtank_qty = fza_ah64_auxtank_qty - 1; _heliweight = _heliweight + 420;};
if (fza_ah64_hardpoint4 == 14 && fza_ah64_auxtank_qty > 0) then {_heli addmagazine "fza_auxtank_230_3"; fza_ah64_auxtank_qty = fza_ah64_auxtank_qty - 1; _heliweight = _heliweight + 420;};
if (fza_ah64_hardpoint5 == 14 && fza_ah64_auxtank_qty > 0) then {_heli addmagazine "fza_auxtank_230_4"; fza_ah64_auxtank_qty = fza_ah64_auxtank_qty - 1; _heliweight = _heliweight + 420;};

//CM Mags
//_heli addMagazineTurret ["60Rnd_CMFlareMagazine",[-1]];
//fza_ah64_flarecount = 30;
if ("fza_CMFlareLauncher" in (_heli weaponsTurret [-1])) then {_heli addMagazineTurret ["60Rnd_CMFlareMagazine",[-1]]; fza_ah64_flarecount = 30;_heliweight = _heliweight + 10;};
_heliweight = _heliweight + 5; //chaff countermeasure
fza_ah64_burst = 0;
fza_ah64_gunheat = 0;

//TKOH WEIGHTING//
if(typeof _heli == "fza_ah64d_b2e") then {_heliweight = _heliweight + 150;};
_fuelweight = 1152 * (fza_ah64_fuelsave);
fza_ah64_grossweight = _heliweight + _fuelweight;

uiSleep 0.5;

//fix the damned rocket salvo bug because weapon indexing broken//
_heli removeweapon "fza_m230";
_heli removeweapon "fza_ma_safe";
_heli addweapon "fza_burstlimiter";
uiSleep 0.1;
_heli removeweapon "fza_burstlimiter";
uiSleep 0.1;
_heli addweapon "fza_m230";
_heli addweapon "fza_ma_safe";
_heli selectweapon "fza_ma_safe";

_heli vehiclechat format ["Rearming completed. Gross Weight (GW): %1kg",((weightRTD _heli select 0) + (weightRTD _heli select 3) + _fuelweight)];
