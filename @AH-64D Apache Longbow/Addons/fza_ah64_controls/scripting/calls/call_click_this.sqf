_heli = _this select 0;

if(!(player in _heli)) exitwith {};

_clicksound = ["none"];
_warntest = ["none"];


_clickactive = 0;
_hellfireweps = ["fza_agm114_23_8","fza_agm114_14_8","fza_agm114_1_4","fza_agm114_2_4","fza_agm114_3_4","fza_agm114_4_4","fza_agm114_1_ul","fza_agm114_1_ur","fza_agm114_1_ll","fza_agm114_1_lr","fza_agm114_2_ul","fza_agm114_2_ur","fza_agm114_2_ll","fza_agm114_2_lr","fza_agm114_3_ul","fza_agm114_3_ur","fza_agm114_3_ll","fza_agm114_3_lr","fza_agm114_4_ul","fza_agm114_4_ur","fza_agm114_4_ll","fza_agm114_4_lr"];
_rocketweps = ["fza_m261_1234_zoneE","fza_m261_14","fza_m261_14_zoneA","fza_m261_14_zoneB","fza_m261_14_zoneE","fza_m261_23","fza_m261_23_zoneC","fza_m261_23_zoneD","fza_m261_23_zoneE","fza_m261_1","fza_m261_1_zone1","fza_m261_1_zone2","fza_m261_1_zone3","fza_m261_2","fza_m261_2_zone1","fza_m261_2_zone2","fza_m261_2_zone3","fza_m261_3","fza_m261_3_zone1","fza_m261_3_zone2","fza_m261_3_zone3","fza_m261_4","fza_m261_4_zone1","fza_m261_4_zone2","fza_m261_4_zone3"];

if(isnil "fza_ah64_pwron") then
{
fza_ah64_pwron = 0;
};

//btnt1 [0.125,4.1,-0.568]
_btnt1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_t1");
if(player == gunner _heli) then {_btnt1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_t1");};
_btnt1 = worldtoscreen _btnt1;
if(count _btnt1 < 2) then {_btnt1 = [0,0];};

//btnl1 [0.065,4.1,-0.625]
_btnl1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l1");
if(player == gunner _heli) then {_btnl1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l1");};
_btnl1 = worldtoscreen _btnl1;
if(count _btnl1 < 2) then {_btnl1 = [0,0];};

//btnl2 [0.065,4.1,-0.65]
_btnl2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l2");
if(player == gunner _heli) then {_btnl2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l2");};
_btnl2 = worldtoscreen _btnl2;
if(count _btnl2 < 2) then {_btnl2 = [0,0];};

//btnl3 [0.065,4.1,-0.675]
_btnl3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l3");
if(player == gunner _heli) then {_btnl3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l3");};
_btnl3 = worldtoscreen _btnl3;
if(count _btnl3 < 2) then {_btnl3 = [0,0];};

//btnl4 [0.065,4.1,-0.69]
_btnl4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l4");
if(player == gunner _heli) then {_btnl4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l4");};
_btnl4 = worldtoscreen _btnl4;
if(count _btnl4 < 2) then {_btnl4 = [0,0];};

//btnl5 [0.065,4.1,-0.715]
_btnl5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l5");
if(player == gunner _heli) then {_btnl5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l5");};
_btnl5 = worldtoscreen _btnl5;
if(count _btnl5 < 2) then {_btnl5 = [0,0];};

//btnl6 [0.065,4.1,-0.74]
_btnl6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_l6");
if(player == gunner _heli) then {_btnl6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_l6");};
_btnl6 = worldtoscreen _btnl6;
if(count _btnl6 < 2) then {_btnl6 = [0,0];};

//btnb1 [0.15,4.1,-0.815]
_btnb1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_b1");
if(player == gunner _heli) then {_btnb1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_b1");};
_btnb1 = worldtoscreen _btnb1;
if(count _btnb1 < 2) then {_btnb1 = [0,0];};

//btnb3 [0.2,4.1,-0.815]
_btnb3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_b3");
if(player == gunner _heli) then {_btnb3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_b3");};
_btnb3 = worldtoscreen _btnb3;
if(count _btnb3 < 2) then {_btnb3 = [0,0];};

//btnb4 [0.22,4.1,-0.82]
_btnb4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_b4");
if(player == gunner _heli) then {_btnb4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_b4");};
_btnb4 = worldtoscreen _btnb4;
if(count _btnb4 < 2) then {_btnb4 = [0,0];};

//btnr1 [0.295,4.1,-0.63]
_btnr1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r1");
if(player == gunner _heli) then {_btnr1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r1");};
_btnr1 = worldtoscreen _btnr1;
if(count _btnr1 < 2) then {_btnr1 = [0,0];};

//btnr2 [0.295,4.1,-0.655]
_btnr2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r2");
if(player == gunner _heli) then {_btnr2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r2");};
_btnr2 = worldtoscreen _btnr2;
if(count _btnr2 < 2) then {_btnr2 = [0,0];};

//btnr3 [0.298,4.1,-0.68]
_btnr3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r3");
if(player == gunner _heli) then {_btnr3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r3");};
_btnr3 = worldtoscreen _btnr3;
if(count _btnr3 < 2) then {_btnr3 = [0,0];};

//btnr4 [0.299,4.1,-0.705]
_btnr4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r4");
if(player == gunner _heli) then {_btnr4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r4");};
_btnr4 = worldtoscreen _btnr4;
if(count _btnr4 < 2) then {_btnr4 = [0,0];};

//btnr5 [0.3,4.1,-0.725]
_btnr5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r5");
if(player == gunner _heli) then {_btnr5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r5");};
_btnr5 = worldtoscreen _btnr5;
if(count _btnr5 < 2) then {_btnr5 = [0,0];};

//btnr6 [0.301,4.1,-0.75]
_btnr6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_r6");
if(player == gunner _heli) then {_btnr6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_r6");};
_btnr6 = worldtoscreen _btnr6;
if(count _btnr6 < 2) then {_btnr6 = [0,0];};

//btnfcr [0.065,4.1,-0.765]
_btnfcr = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_fcr");
if(player == gunner _heli) then {_btnfcr = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_fcr");};
_btnfcr = worldtoscreen _btnfcr;
if(count _btnfcr < 2) then {_btnfcr = [0,0];};

//btnwpn [0.065,4.1,-0.79]
_btnwpn = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_wpn");
if(player == gunner _heli) then {_btnwpn = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_wpn");};
_btnwpn = worldtoscreen _btnwpn;
if(count _btnwpn < 2) then {_btnwpn = [0,0];};

//btntsd [0.1,4.1,-0.815]
_btntsd = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_tsd");
if(player == gunner _heli) then {_btntsd = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_tsd");};
_btntsd = worldtoscreen _btntsd;
if(count _btntsd < 2) then {_btntsd = [0,0];};

//btnm [0.128,4.1,-0.815]
_btnm = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_m");
if(player == gunner _heli) then {_btnm = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_m");};
_btnm = worldtoscreen _btnm;
if(count _btnm < 2) then {_btnm = [0,0];};

//ownship [0.18,4.1,-0.735]
_ownship = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_ownship");
if(player == gunner _heli) then {_ownship = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_ownship");};
_ownship = worldtoscreen _ownship;
if(count _ownship < 2) then {_ownship = [0,0];};

//rmpdllcorner [0.09,4.1,-0.78]
_rmpdllc = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_llc");
if(player == gunner _heli) then {_rmpdllc = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_rmpd_llc");};
_rmpdllc = worldtoscreen _rmpdllc;
if(count _rmpdllc < 2) then {_rmpdllc = [0,0];};

//rmpdurcorner [0.265,4.1,-0.59]
_rmpdurc = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_urc");
if(player == gunner _heli) then {_rmpdurc = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_urc");};
_rmpdurc = worldtoscreen _rmpdurc;
if(count _rmpdurc < 2) then {_rmpdurc = [0,0];};

//ihadssbrt [-0.35,4.1,-0.81]
_ihadssbrt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_ihadss_brt");
if(player == gunner _heli) then {_ihadssbrt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_ihadss_brt");};
_ihadssbrt = worldtoscreen _ihadssbrt;
if(count _ihadssbrt < 2) then {_ihadssbrt = [0,0];};

//lbtnl1 [-0.225,4.1,-0.625]
_lbtnl1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l1");
if(player == gunner _heli) then {_lbtnl1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l1");};
_lbtnl1 = worldtoscreen _lbtnl1;
if(count _lbtnl1 < 2) then {_lbtnl1 = [0,0];};

//lbtnl2 [-0.23,4.1,-0.65]
_lbtnl2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l2");
if(player == gunner _heli) then {_lbtnl2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l2");};
_lbtnl2 = worldtoscreen _lbtnl2;
if(count _lbtnl2 < 2) then {_lbtnl2 = [0,0];};

//lbtnl3 [-0.23,4.1,-0.675]
_lbtnl3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l3");
if(player == gunner _heli) then {_lbtnl3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l3");};
_lbtnl3 = worldtoscreen _lbtnl3;
if(count _lbtnl3 < 2) then {_lbtnl3 = [0,0];};

//lbtnl4 [-0.23,4.1,-0.7]
_lbtnl4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l4");
if(player == gunner _heli) then {_lbtnl4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l4");};
_lbtnl4 = worldtoscreen _lbtnl4;
if(count _lbtnl4 < 2) then {_lbtnl4 = [0,0];};

//lbtnl5 [-0.23,4.1,-0.72]
_lbtnl5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l5");
if(player == gunner _heli) then {_lbtnl5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l5");};
_lbtnl5 = worldtoscreen _lbtnl5;
if(count _lbtnl5 < 2) then {_lbtnl5 = [0,0];};

//lbtnl6 [-0.23,4.1,-0.745]
_lbtnl6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_l6");
if(player == gunner _heli) then {_lbtnl6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_l6");};
_lbtnl6 = worldtoscreen _lbtnl6;
if(count _lbtnl6 < 2) then {_lbtnl6 = [0,0];};

//lbtnr1 [0.005,4.1,-0.62]
_lbtnr1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r1");
if(player == gunner _heli) then {_lbtnr1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r1");};
_lbtnr1 = worldtoscreen _lbtnr1;
if(count _lbtnr1 < 2) then {_lbtnr1 = [0,0];};

//lbtnr2 [0.005,4.1,-0.645]
_lbtnr2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r2");
if(player == gunner _heli) then {_lbtnr2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r2");};
_lbtnr2 = worldtoscreen _lbtnr2;
if(count _lbtnr2 < 2) then {_lbtnr2 = [0,0];};

//lbtnr3 [0.005,4.1,-0.67]
_lbtnr3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r3");
if(player == gunner _heli) then {_lbtnr3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r3");};
_lbtnr3 = worldtoscreen _lbtnr3;
if(count _lbtnr3 < 2) then {_lbtnr3 = [0,0];};

//lbtnr4 [0.005,4.1,-0.692]
_lbtnr4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r4");
if(player == gunner _heli) then {_lbtnr4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r4");};
_lbtnr4 = worldtoscreen _lbtnr4;
if(count _lbtnr4 < 2) then {_lbtnr4 = [0,0];};

//lbtnr5 [0.005,4.1,-0.715]
_lbtnr5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r5");
if(player == gunner _heli) then {_lbtnr5 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r5");};
_lbtnr5 = worldtoscreen _lbtnr5;
if(count _lbtnr5 < 2) then {_lbtnr5 = [0,0];};

//lbtnr6 [0.005,4.1,-0.74]
_lbtnr6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_r6");
if(player == gunner _heli) then {_lbtnr6 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_r6");};
_lbtnr6 = worldtoscreen _lbtnr6;
if(count _lbtnr6 < 2) then {_lbtnr6 = [0,0];};

//lbtnb1 [-0.15,4.1,-0.82]
_lbtnb1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_b1");
if(player == gunner _heli) then {_lbtnb1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_b1");};
_lbtnb1 = worldtoscreen _lbtnb1;
if(count _lbtnb1 < 2) then {_lbtnb1 = [0,0];};

//lbtnb2 [-0.126,4.1,-0.82]
_lbtnb2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_b2");
if(player == gunner _heli) then {_lbtnb2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_b2");};
_lbtnb2 = worldtoscreen _lbtnb2;
if(count _lbtnb2 < 2) then {_lbtnb2 = [0,0];};

//lbtnb3 [-0.105,4.1,-0.82]
_lbtnb3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_b3");
if(player == gunner _heli) then {_lbtnb3 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_b3");};
_lbtnb3 = worldtoscreen _lbtnb3;
if(count _lbtnb3 < 2) then {_lbtnb3 = [0,0];};

//lbtnb4 [-0.08,4.1,-0.82]
_lbtnb4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_b4");
if(player == gunner _heli) then {_lbtnb4 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_b4");};
_lbtnb4 = worldtoscreen _lbtnb4;
if(count _lbtnb4 < 2) then {_lbtnb4 = [0,0];};

//lbtnwpn [-0.23,4.1,-0.795]
_lbtnwpn = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_wpn");
if(player == gunner _heli) then {_lbtnwpn = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_wpn");};
_lbtnwpn = worldtoscreen _lbtnwpn;
if(count _lbtnwpn < 2) then {_lbtnwpn = [0,0];};

//lbtnm [-0.175,4.1,-0.82]
_lbtnm = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_m");
if(player == gunner _heli) then {_lbtnm = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_lmpd_m");};
_lbtnm = worldtoscreen _lbtnm;
if(count _lbtnm < 2) then {_lbtnm = [0,0];};

//lbtnbrt [-0.23,4.1,-0.6]
_lbtnbrt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_lmpd_brt");
_lbtnbrt = worldtoscreen _lbtnbrt;
if(count _lbtnbrt < 2) then {_lbtnbrt = [0,0];};

//rbtnbrt [0.065,4.1,-0.6]
_rbtnbrt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_rmpd_brt");
_rbtnbrt = worldtoscreen _rbtnbrt;
if(count _rbtnbrt < 2) then {_rbtnbrt = [0,0];};

//btnbacklght [-0.4,3.4,-0.9]
_btnbacklght = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_backlights");
if(player == gunner _heli) then {_btnbacklght = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_backlights");};
_btnbacklght = worldtoscreen _btnbacklght;
if(count _btnbacklght < 2) then {_btnbacklght = [0,0];};

//swfiretest [-0.145,4.1,-0.52]
_swfiretest = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_swfiretst");
if(player == gunner _heli) then {_swfiretest = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_swfiretst");};
_swfiretest = worldtoscreen _swfiretest;
if(count _swfiretest < 2) then {_swfiretest = [0,0];};

//btnfire1 [-0.188,4.1,-0.48]
_btnfire1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_fe1");
if(player == gunner _heli) then {_btnfire1 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_fe1");};
_btnfire1 = worldtoscreen _btnfire1;
if(count _btnfire1 < 2) then {_btnfire1 = [0,0];};

//btnfireapu [-0.14,4.1,-0.48]
_btnfireapu = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_fapu");
if(player == gunner _heli) then {_btnfireapu = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_fapu");};
_btnfireapu = worldtoscreen _btnfireapu;
if(count _btnfireapu < 2) then {_btnfireapu = [0,0];};

//btnfire2 [-0.09,4.1,-0.48]
_btnfire2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_fe2");
if(player == gunner _heli) then {_btnfire2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_fe2");};
_btnfire2 = worldtoscreen _btnfire2;
if(count _btnfire2 < 2) then {_btnfire2 = [0,0];};

//btnfbp [-0.18,4.1,-0.52]
_btnfbp = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_fbp");
if(player == gunner _heli) then {_btnfbp = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_fbp");};
_btnfbp = worldtoscreen _btnfbp;
if(count _btnfbp < 2) then {_btnfbp = [0,0];};

//btnfbr [-0.1,4.1,-0.52]
_btnfbr = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_fbr");
if(player == gunner _heli) then {_btnfbr = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_fbr");};
_btnfbr = worldtoscreen _btnfbr;
if(count _btnfbr < 2) then {_btnfbr = [0,0];};

//pdoorhandle [0.5,3.8,-0.8]
_pdoorhandle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_doorhandle");
if(player == gunner _heli) then {_pdoorhandle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_doorhandle");};
_pdoorhandle = worldtoscreen _pdoorhandle;
if(count _pdoorhandle < 2) then {_pdoorhandle = [0,0];};

//pdoorhandle2 [1,3.75,0.1]
_pdoorhandle2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_doorhandle");
if(player == gunner _heli) then {_pdoorhandle2 = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_doorhandle");};
_pdoorhandle2 = worldtoscreen _pdoorhandle2;
if(count _pdoorhandle2 < 2) then {_pdoorhandle2 = [0,0];};

//IHADSS on/off
_stowihadss = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_ihadss");
if(player == gunner _heli) then {_stowihadss = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_ihadss");};
_stowihadss = worldtoscreen _stowihadss;
if(count _stowihadss < 2) then {_stowihadss = [0,0];};

//MONOCLE on/off
_stowmonocle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_monocle");
if(player == gunner _heli) then {_stowmonocle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_monocle");};
_stowmonocle = worldtoscreen _stowmonocle;
if(count _stowmonocle < 2) then {_stowmonocle = [0,0];};

//btnapu [-0.419,3.569,-0.9]
_btnapu = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_apu");
_btnapu = worldtoscreen _btnapu;
if(count _btnapu < 2) then {_btnapu = [0,0];};

//btnpwr [-0.42,3.61,-0.9]
_btnpwr = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_mstrign");
_btnpwr = worldtoscreen _btnpwr;
if(count _btnpwr < 2) then {_btnpwr = [0,0];};

//swrbrk [-0.43,3.65,-0.9]
_swrbrk = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_rtrbrake");
_swrbrk = worldtoscreen _swrbrk;
if(count _swrbrk < 2) then {_swrbrk = [0,0];};

//e1start [-0.42,3.535,-0.9]
_e1start = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e1start");
_e1start = worldtoscreen _e1start;
if(count _e1start < 2) then {_e1start = [0,0];};

//e2start [-0.39,3.535,-0.9]
_e2start = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e2start");
_e2start = worldtoscreen _e2start;
if(count _e2start < 2) then {_e2start = [0,0];};

//e1off [-0.373,3.535,-0.9]
_e1off = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e1off");
_e1off = worldtoscreen _e1off;
if(count _e1off < 2) then {_e1off = [0,0];};

//e2off [-0.34,3.535,-0.9]
_e2off = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e2off");
_e2off = worldtoscreen _e2off;
if(count _e2off < 2) then {_e2off = [0,0];};

//e1idle [-0.373,3.56,-0.9]
_e1idle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e1idle");
_e1idle = worldtoscreen _e1idle;
if(count _e1idle < 2) then {_e1idle = [0,0];};

//e2idle [-0.34,3.56,-0.9]
_e2idle = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e2idle");
_e2idle = worldtoscreen _e2idle;
if(count _e2idle < 2) then {_e2idle = [0,0];};

//e1fly [-0.39,3.64,-0.9]
_e1fly = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e1fly");
_e1fly = worldtoscreen _e1fly;
if(count _e1fly < 2) then {_e1fly = [0,0];};

//e2fly [-0.36,3.64,-0.9]
_e2fly = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_e2fly");
_e2fly = worldtoscreen _e2fly;
if(count _e2fly < 2) then {_e2fly = [0,0];};

//PNVS D/N TOGGLE
_pnvsdnt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_p_pnvs_dn");
if(player == gunner _heli) then {_pnvsdnt = _heli modelToWorldVisual (_heli selectionposition "ctrlref_g_pnvs_dn");};
_pnvsdnt = worldtoscreen _pnvsdnt;
if(count _pnvsdnt < 2) then {_pnvsdnt = [0,0];};

//HDU PNVS TOGGLE
_pnvshdu = _heli modelToWorldVisual (_heli selectionposition "nvs_mode_sw");
if(player == gunner _heli) then {_pnvshdu = _heli modelToWorldVisual (_heli selectionposition "nvs_mode_swg");};
_pnvshdu = worldtoscreen _pnvshdu;
if(count _pnvshdu < 2) then {_pnvshdu = [0,0];};

//text helper

_helpertext = "";

if(_btnt1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD T1";};
if(_btnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L1";};
if(_btnl2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L2";};
if(_btnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L3";};
if(_btnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L4";};
if(_btnl5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L5";};
if(_btnl6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD L6";};
if(_btnr1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R1";};
if(_btnr2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R2";};
if(_btnr3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R3";};
if(_btnr4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R4";};
if(_btnr5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R5";};
if(_btnr6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD R6";};
if(_btnb1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD B1";};
if(_btnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD B3";};
if(_btnb4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD B4";};
if(_btnfcr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD FCR";};
if(_btnwpn distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD WPN";};
if(_btntsd distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD TSD";};
if(_btnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD DMS Menu";};

if(_lbtnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L1";};
if(_lbtnl2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L2";};
if(_lbtnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L3";};
if(_lbtnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L4";};
if(_lbtnl5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L5";};
if(_lbtnl6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD L6";};
if(_lbtnr1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R1";};
if(_lbtnr2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R2";};
if(_lbtnr3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R3";};
if(_lbtnr4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R4";};
if(_lbtnr5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R5";};
if(_lbtnr6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD R6";};
if(_lbtnb1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD B1";};
if(_lbtnb2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD B2";};
if(_lbtnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD B3";};
if(_lbtnb4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD B4";};
if(_lbtnwpn distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD WPN";};
if(_lbtnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD DMS Menu";};

if(_ihadssbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "IHADSS Brightness";};
if(_lbtnbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "LMPD Brightness";};
if(_rbtnbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "RMPD Brightness";};
if(_btnbacklght distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Backlighting Toggle";};

if(_swfiretest distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Fire Panel Test";};
if(_btnfire1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG1 Fire System Arm";};
if(_btnfire2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG2 Fire System Arm";};
if(_btnfireapu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "APU Fire System Arm";};
if(_btnfbp distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Primary Fire Extinguisher";};
if(_btnfbr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Reserve Fire Extinguisher";};

if(_pdoorhandle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05) then {_helpertext = "Door Handle";};
if(_pdoorhandle2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05) then {_helpertext = "Door Handle";};
if(_stowihadss distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05) then {_helpertext = "IHADSS Toggle";};
if(_stowmonocle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05) then {_helpertext = "Monocle Toggle";};

if(_btnpwr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Battery Toggle";};
if(_btnapu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.04) then {_helpertext = "APU Toggle";};
if(_swrbrk distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "Rotor Brake Toggle";};
if(_e1start distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG1 Starter";};
if(_e2start distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG2 Starter";};
if(_e1off distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG1 Throttle Off";};
if(_e1idle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG1 Throttle Idle";};
if(_e1fly distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG1 Throttle Fly";};
if(_e2off distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG2 Throttle Off";};
if(_e2idle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG2 Throttle Idle";};
if(_e2fly distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "ENG2 Throttle Fly";};

if(_pnvsdnt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "PNVS HDU Day/Night Toggle";};
if(_pnvshdu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then {_helpertext = "PNVS HDU Toggle";};

if(fza_ah64_nohelpers == 1) then {_helpertext = "";};

if(inputaction "LookCenter" > 0) then
{
	fza_ah64_mousehorpos = 0.5;
	fza_ah64_mousevertpos = 0.5;
	((uiNameSpace getVariable "fza_ah64_click_helper") displayCtrl 601) ctrlSetPosition [fza_ah64_mousehorpos - 0.005,fza_ah64_mousevertpos - 0.009];
	((uiNameSpace getVariable "fza_ah64_click_helper") displayCtrl 602) ctrlSetPosition [fza_ah64_mousehorpos - 0.25,fza_ah64_mousevertpos + 0.02];
	((uiNameSpace getVariable "fza_ah64_click_helper") displayCtrl 601) ctrlCommit 0.01;
	((uiNameSpace getVariable "fza_ah64_click_helper") displayCtrl 602) ctrlCommit 0.01;
};

((uiNameSpace getVariable "fza_ah64_click_helper")displayCtrl 602) ctrlSetText _helpertext;

//hintsilent format ["COORDS: %1 DIST: %2 ON: %3",_btnb3,_btnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos],_btnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015];

//RIGHT MPD L1 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "NAV" && _btnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_addwps = [_heli] execvm "\fza_ah64_controls\scripting\nav\waypointadd.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "ATK" && _btnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_createpfz = [_heli,fza_ah64_pfz_count] execvm "\fza_ah64_controls\scripting\pfz.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD L2 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "NAV" && _btnl2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_delwps = [_heli] execvm "\fza_ah64_controls\scripting\nav\waypointclear.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD L3 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "NAV" && _btnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_savwps = [_heli] execvm "\fza_ah64_controls\scripting\nav\waypointsave.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "ATK" && _btnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_pfzxmit = [_heli] execvm "\fza_ah64_controls\scripting\targxfer.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD L4 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "ATK" && _btnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_pfzrecv = [_heli] execvm "\fza_ah64_controls\scripting\targrecv.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD L5 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "ATK" && _btnl5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_pfzsel = [_heli] execvm "\fza_ah64_controls\scripting\pfz_sel.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD L6 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "NAV" && _btnl6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_nextwp = [_heli] execvm "\fza_ah64_controls\scripting\nav\nextwp.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD B1 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnb1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
if(fza_ah64_tsdmode == "NAV") exitwith {fza_ah64_tsdmode = "ATK"; fza_ah64_l1clicked = 1; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_tsdmode == "ATK") exitwith {fza_ah64_tsdmode = "NAV"; fza_ah64_l1clicked = 1; _clicksound = ["fza_ah64_button_click1",0.1];};
};

//RIGHT MPD B3 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
_maptog = [_heli] execvm "\fza_ah64_controls\scripting\tsd_map_toggle.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD FCR BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfcr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && _heli animationphase "plt_batt" > 0.5) then
{
fza_ah64_pr_mpd = "fcr";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD TSD BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btntsd distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && _heli animationphase "plt_batt" > 0.5) then
{
fza_ah64_pr_mpd = "tsd";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD WP ADD

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "NAV" && fza_ah64_pr_mpd == "tsd" && fza_ah64_waypointfin == 0 && (_ownship select 0) > 0.3 && (_ownship select 0) < 0.7 && (_ownship select 1) > 0.3 && (_ownship select 1) < 0.9) then
{
_scalenum = 5;
if(_rmpdllc distance _rmpdurc > 0.45) then {_scalenum = 2.5;};
_direction = ((0.5) - (_ownship select 0)) atan2 ((_ownship select 1) - (0.5));
_direction = _direction + getdir _heli;
if(_direction < 0) then {_direction = _direction + 360;};
if(_direction > 360) then {_direction = _direction - 360;};
_wpposx = (getposatl _heli select 0) + ((sin _direction) * ((_scalenum / fza_ah64_rangesetting) * (_ownship distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos])));
_wpposy = (getposatl _heli select 1) + ((cos _direction) * ((_scalenum / fza_ah64_rangesetting) * (_ownship distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos])));
_wpadd = [_heli,[_wpposx,_wpposy]] execvm "\fza_ah64_controls\scripting\nav\wp_position.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD L1 BTN HF REMT SELF

if(inputaction "User20" > 0.5 && currentweapon _heli in _hellfireweps && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(fza_ah64_hfmode == _heli) then
{
_moderemt = [_heli] execvm "\fza_ah64_controls\scripting\mode_remt.sqf";
} else {
fza_ah64_hfmode = _heli;
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LASER

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnr5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(_heli hasweapon "Laserdesignator_mounted") then
{
_heli removemagazine "Laserbatteries";
_heli removeweapon "Laserdesignator_mounted";
} else {
_addlsr = [_heli] execvm "\fza_ah64_controls\scripting\add_remt.sqf";
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//GUN BURST

if(inputaction "User20" > 0.5 && (currentweapon _heli == "fza_m230" || currentweapon _heli == "fza_burstlimiter") && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_burst_limit = 10;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && (currentweapon _heli == "fza_m230" || currentweapon _heli == "fza_burstlimiter") && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnl2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_burst_limit = 20;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && (currentweapon _heli == "fza_m230" || currentweapon _heli == "fza_burstlimiter") && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_burst_limit = 50;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && (currentweapon _heli == "fza_m230" || currentweapon _heli == "fza_burstlimiter") && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_burst_limit = 100;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD R1 BTN RKT QTY

if(inputaction "User20" > 0.5 && currentweapon _heli in _rocketweps && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnr1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(fza_ah64_rocketsalvo <= 1) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 2; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 2) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 4; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 4) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 8; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 8) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 12; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 12) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 24; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 24) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 38; _clicksound = ["fza_ah64_button_click1",0.1];};
if(fza_ah64_rocketsalvo == 38) exitwith {fza_ah64_l1clicked = 1; fza_ah64_rocketsalvo = 1; _clicksound = ["fza_ah64_button_click1",0.1];};
};

//LMPD R3 BTN HF TRAJ

if(inputaction "User20" > 0.5 && currentweapon _heli in _hellfireweps && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnr3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if (fza_ah64_ltype == "lobl.sqf") exitwith {fza_ah64_l1clicked = 1; fza_ah64_ltype = "loaldir.sqf"; _clicksound = ["fza_ah64_button_click1",0.1];};
if (fza_ah64_ltype == "loaldir.sqf") exitwith {fza_ah64_l1clicked = 1; fza_ah64_ltype = "loallo.sqf"; _clicksound = ["fza_ah64_button_click1",0.1];};
if (fza_ah64_ltype == "loallo.sqf") exitwith {fza_ah64_l1clicked = 1; fza_ah64_ltype = "loalhi.sqf"; _clicksound = ["fza_ah64_button_click1",0.1];};
if (fza_ah64_ltype == "loalhi.sqf") exitwith {fza_ah64_l1clicked = 1; fza_ah64_ltype = "lobl.sqf"; _clicksound = ["fza_ah64_button_click1",0.1];};
};

//LMPD R6 BTN WPN ACQ

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnr6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_guncontrol = fza_ah64_guncontrol + 1;
if (fza_ah64_guncontrol > 3) then {fza_ah64_guncontrol = 0;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD B1 BTN WPN GUN

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnb1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(_heli hasweapon "fza_m230") then {_heli selectweapon "fza_m230";} else {_heli selectweapon "fza_burstlimiter";};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD B2 BTN WPN MSL

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnb2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
_emptywep = "";
_wpncounter = 0;
_selectedweapon = 0;
{
if(_x in _hellfireweps) then {_emptywep = _x;};
if((_x in _hellfireweps) && _heli ammo _x > 0 && _selectedweapon == 0) then {_selectedweapon = 1; _heli selectweapon _x;};
if(_selectedweapon == 1) exitwith {};
_wpncounter = _wpncounter + 1;
if(_wpncounter >= count (weapons _heli)) then {_selectedweapon = 1; _heli selectweapon _emptywep;};
} foreach (weapons _heli);
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD B3 BTN WPN ATA

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(_heli hasweapon "fza_atas_2") then {_heli selectweapon "fza_atas_2";};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD B4 BTN WPN RKT

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pl_mpd == "wpn" && _lbtnb4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
_emptywep = "";
_wpncounter = 0;
_selectedweapon = 0;
{
if(_x in _rocketweps) then {_emptywep = _x;};
if((_x in _rocketweps) && _heli ammo _x > 0 && _selectedweapon == 0) then {_selectedweapon = 1; _heli selectweapon _x;};
if(_selectedweapon == 1) exitwith {};
_wpncounter = _wpncounter + 1;
if(_wpncounter >= count (weapons _heli)) then {_selectedweapon = 1; _heli selectweapon _emptywep;};
} foreach (weapons _heli);
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LMPD BTN WPN

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnwpn distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && _heli animationphase "plt_batt" > 0.5) then
{
fza_ah64_pl_mpd = "wpn";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RMPD B4 BTN RTE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pr_mpd == "tsd" && _btnb4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(count waypoints group (driver _heli) > 1) then
{
fza_ah64_waypointdata = [];
fza_ah64_waypointdata = fza_ah64_waypointdata + [position _heli];
{
if(_x select 1 > 0) then {fza_ah64_waypointdata = fza_ah64_waypointdata + [waypointPosition _x];};
} foreach (waypoints group (driver _heli));
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};


//MPD BRT

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && (_lbtnbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 || _rbtnbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02)) then
{
if(isnil "fza_ah64_mpdbrightness") then {fza_ah64_mpdbrightness = 1;};
if(fza_ah64_mpdbrightness == 0.2) exitwith {fza_ah64_mpdbrightness = 1; _heli setobjecttexture [1189,""]; fza_ah64_l1clicked = 1;};
if(fza_ah64_mpdbrightness == 0.4) exitwith {fza_ah64_mpdbrightness = 0.2; _heli setobjecttexture [1189,"\fza_ah64_US\tex\MPD\Brt1.paa"]; fza_ah64_l1clicked = 1;};
if(fza_ah64_mpdbrightness == 0.6) exitwith {fza_ah64_mpdbrightness = 0.4; _heli setobjecttexture [1189,"\fza_ah64_US\tex\MPD\Brt2.paa"]; fza_ah64_l1clicked = 1;};
if(fza_ah64_mpdbrightness == 1) exitwith {fza_ah64_mpdbrightness = 0.6; _heli setobjecttexture [1189,"\fza_ah64_US\tex\MPD\Brt3.paa"]; fza_ah64_l1clicked = 1;};
fza_ah64_l1clicked = 1;
};

//BACKLIGHTING

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnbacklght distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_batt" > 0.5) then
{
if(isnil "fza_ah64_backlights") then {fza_ah64_backlights = 1;};
if(fza_ah64_backlights == 1) then
{
_heli setobjecttexture [1190,"\fza_ah64_us\tex\in\dlt.paa"];
_heli setobjecttexture [1191,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_backlights = 0;
} else {
_heli setobjecttexture [1190,""];
_heli setobjecttexture [1191,""];
fza_ah64_backlights = 1;
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_switch_flip1",0.1];
};

//FIRE TEST SWITCH

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _swfiretest distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && (_heli animationphase "plt_batt" > 0.5)) then
{
if(isnil "fza_ah64_firetest") then {fza_ah64_firetest = 0;};
if(fza_ah64_firetest == 0) exitwith
{
_heli setobjecttexture [1192,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1194,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1196,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1200,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1201,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_firetest = 1;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_switch_flip1",0.1];
playSound ["fza_ah64_warntest_3D",true];
};
if(fza_ah64_firetest == 1) exitwith
{
_heli setobjecttexture [1192,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1194,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1196,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1198,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1199,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1200,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli setobjecttexture [1201,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_firetest = 2;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_switch_flip1",0.1];
playSound ["fza_ah64_warntest_3D",true];
};
if(fza_ah64_firetest == 2) exitwith
{
_heli setobjecttexture [1192,""];
_heli setobjecttexture [1194,""];
_heli setobjecttexture [1196,""];
_heli setobjecttexture [1200,""];
_heli setobjecttexture [1201,""];
if(!("fza_ah64_firepdisch" in (_heli magazinesturret [-1]))) then {_heli setobjecttexture [1198,""];};
if(!("fza_ah64_firerdisch" in (_heli magazinesturret [-1]))) then {_heli setobjecttexture [1199,""];};
fza_ah64_firetest = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_switch_flip1",0.1];
};
};

//ENG1 FIRE ARM

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfire1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && _heli animationphase "plt_batt" > 0.5) then
{
if(fza_ah64_fire1arm == 0) exitwith
{
_heli setobjecttexture [1193,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_fire1arm = 1;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
if(fza_ah64_fire1arm == 1) exitwith
{
_heli setobjecttexture [1193,""];
fza_ah64_fire1arm = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
};

//ENG2 FIRE ARM

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfire2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && _heli animationphase "plt_batt" > 0.5) then
{
if(fza_ah64_fire2arm == 0) exitwith
{
_heli setobjecttexture [1195,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_fire2arm = 1;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
if(fza_ah64_fire2arm == 1) exitwith
{
_heli setobjecttexture [1195,""];
fza_ah64_fire2arm = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
};

//APU FIRE ARM

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfireapu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && _heli animationphase "plt_batt" > 0.5) then
{
if(fza_ah64_fireapuarm == 0) exitwith
{
_heli setobjecttexture [1197,"\fza_ah64_us\tex\in\pushbut.paa"];
fza_ah64_fireapuarm = 1;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
if(fza_ah64_fireapuarm == 1) exitwith
{
_heli setobjecttexture [1197,""];
fza_ah64_fireapuarm = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};
};

//PRI FB DISCHARGE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfbp distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && _heli animationphase "plt_batt" > 0.5) then
{
if((fza_ah64_fireapuarm == 1 || fza_ah64_fire2arm == 1 || fza_ah64_fire1arm == 1) && !("fza_ah64_firepdisch" in (_heli magazinesturret [-1])) && !("fza_ah64_firepdisch" in magazines _heli)) then
{
_heli setobjecttexture [1198,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli addmagazine "fza_ah64_firepdisch";
_heli addmagazineturret ["fza_ah64_firepdisch",[-1]];
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};

//RES FB DISCHARGE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnfbr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.02 && _heli animationphase "plt_batt" > 0.5) then
{
if((fza_ah64_fireapuarm == 1 || fza_ah64_fire2arm == 1 || fza_ah64_fire1arm == 1) && !("fza_ah64_firerdisch" in (_heli magazinesturret [-1])) && !("fza_ah64_firerdisch" in magazines _heli)) then
{
_heli setobjecttexture [1199,"\fza_ah64_us\tex\in\pushbut.paa"];
_heli addmagazine "fza_ah64_firerdisch";
_heli addmagazineturret ["fza_ah64_firerdisch",[-1]];
};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click2",0.1];
};

//RIGHT MPD R1 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (fza_ah64_pr_mpd == "tsd" || fza_ah64_pr_mpd == "ase")) then
{
fza_ah64_rangesetting = (fza_ah64_rangesetting) * 0.5;
if (fza_ah64_rangesetting == 0.00025) then {fza_ah64_rangesetting = 0.0002;};
if (fza_ah64_rangesetting == 0.00005) then {fza_ah64_rangesetting = 0.00004;};
if (fza_ah64_rangesetting == 0.00001) then {fza_ah64_rangesetting = 0.00002;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD R2 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (fza_ah64_pr_mpd == "tsd" || fza_ah64_pr_mpd == "ase")) then
{
fza_ah64_rangesetting = (fza_ah64_rangesetting) * 2;
if (fza_ah64_rangesetting == 0.00008) then {fza_ah64_rangesetting = 0.0001;};
if (fza_ah64_rangesetting == 0.0004) then {fza_ah64_rangesetting = 0.0005;};
if (fza_ah64_rangesetting == 0.002) then {fza_ah64_rangesetting = 0.001;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD R3 BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "tsd") then
{
[_heli] exec "\fza_ah64_controls\scripting\tsd_targfilter.sqs";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD R4 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
_rfjamonoff = [_heli] execvm "\fza_ah64_controls\scripting\rf_jammer.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD R5 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
fza_ah64_rfjstate = fza_ah64_rfjstate + 1;
if(fza_ah64_rfjstate == 2) then {fza_ah64_rfjstate = 0;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD R6 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnr6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
fza_ah64_rfjon = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD l4 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
_irjamonoff = [_heli] execvm "\fza_ah64_controls\scripting\ir_jammer.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD l5 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
fza_ah64_irjstate = fza_ah64_irjstate + 1;
if(fza_ah64_irjstate == 2) then {fza_ah64_irjstate = 0;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD l6 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
fza_ah64_irjon = 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD l1 ASE BUTTON

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && fza_ah64_pr_mpd == "ase") then
{
_autpg = [_heli] execvm "\fza_ah64_controls\scripting\ase_autpage.sqf";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//PILOT DOOR HANDLE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _pdoorhandle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05 && (_heli animationphase "pdoor" < 0.5 || _heli animationphase "gdoor" < 0.5 )) then
{
if(player == gunner _heli) then {_doorscript = [_heli,"gdoor"] execvm "\fza_ah64_controls\scripting\door_toggle.sqf";} else {_doorscript = [_heli,"pdoor"] execvm "\fza_ah64_controls\scripting\door_toggle.sqf";};
fza_ah64_l1clicked = 1;

};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _pdoorhandle2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05 && (_heli animationphase "pdoor" > 0.5 || _heli animationphase "gdoor" > 0.5 )) then
{
if(player == gunner _heli) then {_doorscript = [_heli,"gdoor"] execvm "\fza_ah64_controls\scripting\door_toggle.sqf";} else {_doorscript = [_heli,"pdoor"] execvm "\fza_ah64_controls\scripting\door_toggle.sqf";};
fza_ah64_l1clicked = 1;
};

//RIGHT MPD DMS
if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && !(fza_ah64_pr_mpd == "dms")) then
{
fza_ah64_pr_mpd = "dms";
_heli setobjecttexture [303,"\fza_ah64_us\tex\dms.paa"];
if (("fza_ah64_rdp_fail" in (_heli magazinesturret [-1])) && !("fza_ah64_ldp_fail" in (_heli magazinesturret [-1]))) then {fza_ah64_pl_mpd = "fail"; _heli setobjecttexture [302,""];};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pr_mpd == "dms") then
{
fza_ah64_pr_mpd = "ase";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl4 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pr_mpd == "dms") then
{
fza_ah64_pr_mpd = "tsd";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnl6 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pr_mpd == "dms") then
{
fza_ah64_pr_mpd = "fcr";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnb1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pr_mpd == "dms") then
{
fza_ah64_pr_mpd = "eng";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pr_mpd == "dms") then
{
fza_ah64_pr_mpd = "wca";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//LEFT MPD DMS

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && !(fza_ah64_pl_mpd == "dms")) then
{
fza_ah64_pl_mpd = "dms";
_heli setobjecttexture [302,"\fza_ah64_us\tex\dms.paa"];
if (("fza_ah64_ldp_fail" in (_heli magazinesturret [-1])) && !("fza_ah64_rdp_fail" in (_heli magazinesturret [-1]))) then {fza_ah64_pr_mpd = "fail"; _heli setobjecttexture [303,""];};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnb2 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pl_mpd == "dms") then
{
fza_ah64_pl_mpd = "flt";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnb3 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pl_mpd == "dms") then
{
fza_ah64_pl_mpd = "fuel";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnl5 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pl_mpd == "dms") then
{
fza_ah64_pl_mpd = "wpn";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _lbtnm distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015 && (_heli animationphase "plt_batt" > 0.5 || !(fza_ah64_cem)) && fza_ah64_pl_mpd == "dms") then
{
fza_ah64_pl_mpd = "wca";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

/////ENGINE//////

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnpwr distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03) then
{
if(_heli animationphase "plt_batt" < 1) then {_heli animate ["plt_batt",1]; ["fza_ah64_battery",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";
} else {
_heli animate ["plt_batt",0]; ["fza_ah64_battery",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";};
fza_ah64_l1clicked = 1;
};

/*
if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnapu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.04 && _heli animationphase "plt_batt" > 0.5) then
{
if(_heli animationphase "plt_apu" > 0.5) exitwith {fza_ah64_apuon = 0; fza_ah64_l1clicked = 1; ["fza_ah64_apubutton",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf"; _heli say3D ["fza_ah64_apustop_3D",200,1];};
if(fza_ah64_apuon == 0) exitwith {fza_ah64_apuon = 1; fza_ah64_l1clicked = 1; ["fza_ah64_apubutton",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf"; _heli say3D ["fza_ah64_apustart_3D",200,1]; [_heli] execvm "\fza_ah64_controls\scripting\calls\call_apuloop.sqf"; _heli animate ["tads_stow",0];};
fza_ah64_l1clicked = 1;
};
*/

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _btnapu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_batt" > 0.5) then
{
if(_heli animationphase "plt_apu" < 1) then
{_heli animate ["plt_apu",1];
["fza_ah64_apubutton",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";
//_heli say3D ["fza_ah64_apustart_3D",200,1];
[_heli,["fza_ah64_apustart_3D", 200]] remoteExec ["say3d"];
[_heli] execvm "\fza_ah64_controls\scripting\calls\call_apuloop.sqf";
_heli animate ["tads_stow",0];
} else {
_heli animate ["plt_apu",0];
["fza_ah64_apubutton",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";
[_heli,["fza_ah64_apustop_3D", 200]] remoteExec ["say3d"];
};
fza_ah64_l1clicked = 1;
};


//RTR BRK

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _swrbrk distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03) then
{
if(_heli animationphase "plt_rtrbrake" < 1) then {_heli animate ["plt_rtrbrake",1]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";
} else {
_heli animate ["plt_rtrbrake",0]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";};
fza_ah64_l1clicked = 1;
};

//ENGINE 1 START

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e1start distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_apu" > 0.5 && _heli animationphase "plt_rtrbrake" == 0) then
{
if(_heli animationphase "plt_eng1_start" < 1) then {_heli animate ["plt_eng1_start",1]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf"; _heli say3D ["fza_ah64_estart_3D",200,1];} else {_heli animate ["plt_eng1_start",0]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";};
fza_ah64_l1clicked = 1;
};

//ENGINE 2 START

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e2start distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_apu" > 0.5 && _heli animationphase "plt_rtrbrake" == 0) then
{
if(_heli animationphase "plt_eng2_start" < 1) then {_heli animate ["plt_eng2_start",1]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf"; _heli say3D ["fza_ah64_estart_3D",200,1];} else {_heli animate ["plt_eng2_start",0]; ["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";};
fza_ah64_l1clicked = 1;
};

//ENGINE 1 THROTTLE OFF

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e1off distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03) then
{
_heli animate ["plt_eng1_throttle",0];
fza_ah64_l1clicked = 1;
};

//ENGINE 1 THROTTLE IDLE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e1idle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng1_throttle",0.25];
fza_ah64_l1clicked = 1;
};

//ENGINE 1 THROTTLE FLY

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e1fly distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng1_throttle",1];
fza_ah64_l1clicked = 1;
};

//ENGINE 2 THROTTLE OFF

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e2off distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03) then
{
_heli animate ["plt_eng2_throttle",0];
fza_ah64_l1clicked = 1;
};

//ENGINE 2 THROTTLE IDLE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e2idle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng2_throttle",0.25];
fza_ah64_l1clicked = 1;
};

//ENGINE 2 THROTTLE FLY

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _e2fly distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng2_throttle",1];
fza_ah64_l1clicked = 1;
};

//STARTUP

if(!isEngineOn _heli && _heli animationphase "plt_batt" > 0.5 && _heli animationphase "plt_apu" > 0.5 && ((_heli animationphase "plt_eng1_start" == 1 && _heli animationphase "plt_eng1_throttle" > 0.10) || (_heli animationphase "plt_eng2_start" == 1 && _heli animationphase "plt_eng2_throttle" > 0.10)) && _heli animationphase "plt_rtrbrake" == 0) then
{
fza_ah64_estarted = true;
(driver _heli) action ["engineOn", _heli];
(vehicle player) enableAutoStartUpRTD false;
(vehicle player) setRotorBrakeRTD 0;
(vehicle player) setActualCollectiveRTD 0;
(vehicle player) setWantedRPMRTD [20000, 15, -1];
(vehicle player) setWantedRPMRTD [0, 15, -1];
[_heli] execvm "\fza_ah64_controls\scripting\calls\call_enginepower.sqf";
fza_ah64_l1clicked = 1;
};

//ENGINE 1 & ENGINE 2 SWITCHES OFF ONCE THROTTLES IDLE

if(_heli animationphase "plt_eng1_start" == 1 && _heli animationphase "plt_eng1_throttle" == 1 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng1_start",0];
};

if(_heli animationphase "plt_eng2_start" == 1 && _heli animationphase "plt_eng2_throttle" == 1 && _heli animationphase "plt_rtrbrake" == 0) then
{
_heli animate ["plt_eng2_start",0];
};


//SHUTDOWN

if(fza_ah64_pwron == 1 && _heli animationphase "plt_eng1_throttle" == 0 && _heli animationphase "plt_eng2_throttle" == 0 && isEngineOn _heli && (player isEqualTo driver objectParent player)) then
{
(driver _heli) action ["engineOff", _heli];
fza_ah64_estarted = false;
_heli animate ["tads_stow",1];
["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";
fza_ah64_l1clicked = 1;
};


//PNVS HDU DAY/NIGHT TOGGLE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _pnvsdnt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(fza_ah64_ihadss_pnvs_day) then {fza_ah64_ihadss_pnvs_day = false;} else {fza_ah64_ihadss_pnvs_day = true;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_knob",0.1];
};

//NVS MODE TOGGLE
if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _pnvshdu distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.03) then
{
if(_heli animationphase "plt_nvsmode" < 1) then
{
_heli animate ["plt_nvsmode",1];
["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\pnvs_cam_set.sqf";
_clicksound = ["fza_ah64_switch_flip1",0.1];
fza_ah64_l1clicked = 1;
} else {
_heli animate ["plt_nvsmode",0];
["fza_ah64_switch_flip1",0.1] execvm "\fza_ah64_controls\scripting\pnvs_cam_set.sqf";};
_clicksound = ["fza_ah64_switch_flip1",0.1];
fza_ah64_l1clicked = 1;
};


//CSCOPE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_pr_mpd == "fcr" && _btnt1 distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
fza_ah64_fcrcscope = fza_ah64_fcrcscope + 1;
if(fza_ah64_fcrcscope > 1) then {fza_ah64_fcrcscope = 0;};
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//RIGHT MPD PFZ CREATE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && fza_ah64_tsdmode == "ATK" && fza_ah64_pr_mpd == "tsd" && fza_ah64_pfz_count > 0 && (_ownship select 0) > 0.3 && (_ownship select 0) < 0.7 && (_ownship select 1) > 0.3 && (_ownship select 1) < 0.9) then
{
_scalenum = 5;
if(_rmpdllc distance _rmpdurc > 0.45) then {_scalenum = 2.5;};
_direction = ((0.5) - (_ownship select 0)) atan2 ((_ownship select 1) - (0.5));
_direction = _direction + getdir _heli;
if(_direction < 0) then {_direction = _direction + 360;};
if(_direction > 360) then {_direction = _direction - 360;};
_wpposx = (getposatl _heli select 0) + ((sin _direction) * ((_scalenum / fza_ah64_rangesetting) * (_ownship distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos])));
_wpposy = (getposatl _heli select 1) + ((cos _direction) * ((_scalenum / fza_ah64_rangesetting) * (_ownship distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos])));
fza_ah64_curpfzarea = fza_ah64_curpfzarea + [[_wpposx,_wpposy]];
fza_ah64_pfz_counter = fza_ah64_pfz_counter + 1;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_button_click1",0.1];
};

//IHADSS BRIGHTNESS

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _ihadssbrt distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.015) then
{
if(player == driver _heli) then
{_clicksound = ["fza_ah64_knob",0.1];} else {_clicksound = ["fza_ah64_switch_flip1",0.1];};
fza_ah64_l1clicked = 1;
[_heli] exec "\fza_ah64_controls\scripting\ihadss.sqs";


/*
if(isNil "fza_ah64_hducolor") then {fza_ah64_hducolor = [0.1, 1, 0, 1];};
_cont = (fza_ah64_hducolor select 1) + 0.1;
_cont2 = (fza_ah64_hducolor select 0) + 0.01;
if(_cont > 1.1) then {_cont = 0; _cont2 = 0;};
fza_ah64_hducolor = [_cont2, _cont, 0, 1];
*/
};

//IHADSS
/*
if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _stowihadss distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.05) then
{
[_heli] exec "\fza_ah64_controls\scripting\ihadss.sqs";
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_switch_flip1",0.1];
};
*/
//MONOCLE

if(inputaction "User20" > 0.5 && fza_ah64_l1clicked == 0 && _stowmonocle distance [fza_ah64_mousehorpos,fza_ah64_mousevertpos] < 0.10) then
{
[_heli] exec "\fza_ah64_controls\scripting\monocle.sqs";
[_heli] execVM "\fza_ah64_controls\scripting\calls\call_monocle.sqf";
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlSetText "\fza_ah64_US\tex\HDU\monocle_solid.paa";
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlSetTextColor [1, 1, 1, 1]; //HIDING MONOCLE WHEN GET IN
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlCommit 0;
fza_ah64_l1clicked = 1;
_clicksound = ["fza_ah64_monoclebox",0.1];
};


if(fza_ah64_l1clicked == 1 && count _clicksound > 1) then {_clicksound execvm "\fza_ah64_controls\scripting\damage\dam_bt_audio.sqf";};

if(inputaction "User20" < 0.5) then
{
fza_ah64_l1clicked = 0;
};
