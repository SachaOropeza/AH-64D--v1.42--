class CfgMagazines
{
	class CA_Magazine;
	class VehicleMagazine;
	class 24Rnd_PG_missiles;
	class 24Rnd_missiles;
	
	class 60Rnd_CMFlareMagazine: CA_Magazine
	{
		author = "$STR_A3_Bohemia_Interactive";
		count = 60;
		ammo = "fza_ah64_flare_shot";
		initSpeed = 30;
	};
	class fza_safe: VehicleMagazine
	{
		scope = 1;
		displayName="SAFE";
		ammo="fza_master";
		count=1;
		initSpeed=0;
		tracersEvery=0;
		nameSound="";
	};
	class fza_burstlimit: VehicleMagazine
	{
		scope = 1;
		displayName="SAFE";
		ammo="fza_master";
		count=1;
		initSpeed=0;
		tracersEvery=0;
		nameSound="";
	};
	
	////////////////////////////////////////////////////////////////////////
	///////////////////////////////M230/////////////////////////////////////
	////////////////////////////////////////////////////////////////////////	
	
	class fza_m230_300: VehicleMagazine
	{
		scope = 2;
		displayName = "30mm HEDP";
		ammo = "fza_30x113";
		count = 300;
		initSpeed = 1620;
		tracersevery = 0;
		weight = 104.78;
	};
	class fza_m230_1200: VehicleMagazine
	{
		scope = 2;
		displayName = "30mm HEDP";
		ammo = "fza_30x113";
		count = 1200;
		initSpeed = 1620;
		tracersevery = 0;
		weight = 419.119;
	};
	
	////////////////////////////////////////////////////////////////////////
	///////////////////////////////STINGERS/////////////////////////////////
	////////////////////////////////////////////////////////////////////////	
	
	class fza_atas_2: VehicleMagazine
	{
		scope = 2;
		displayName = "FIM-92";
		count = 4;
		ammo = "fza_fim92";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 60;		
	};
	
	////////////////////////////////////////////////////////////////////////
	///////////////////////////////HELLFIRE/////////////////////////////////
	////////////////////////////////////////////////////////////////////////	
	
	class fza_agm114l_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114L";
		count = 16;
		ammo = "fza_agm114l";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 974.497848;	
	};
	class fza_agm114l_23_8: fza_agm114l_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114l_14_8: fza_agm114l_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114l_1_4: fza_agm114l_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114l_1_ur: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_1_ul: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_1_ll: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_1_lr: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114l_2_4: fza_agm114l_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114l_2_ur: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_2_ul: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_2_ll: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_2_lr: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114l_3_4: fza_agm114l_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114l_3_ur: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_3_ul: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_3_ll: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_3_lr: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114l_4_4: fza_agm114l_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114l_4_ur: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_4_ul: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_4_ll: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114l_4_lr: fza_agm114l_16
	{
		count = 1;
		weight = 108.09106;
	};
//////////////////////////////////////114K/////////////////////////////////////////
	class fza_agm114k_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114K";
		count = 16;
		ammo = "fza_agm114k";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 974.497848;
	};
	class fza_agm114k_23_8: fza_agm114k_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114k_14_8: fza_agm114k_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114k_1_4: fza_agm114k_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114k_1_ur: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_1_ul: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_1_ll: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_1_lr: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114k_2_4: fza_agm114k_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114k_2_ur: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_2_ul: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_2_ll: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_2_lr: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114k_3_4: fza_agm114k_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114k_3_ur: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_3_ul: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_3_ll: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_3_lr: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114k_4_4: fza_agm114k_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114k_4_ur: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_4_ul: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_4_ll: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114k_4_lr: fza_agm114k_16
	{
		count = 1;
		weight = 108.09106;
	};
//////////////////////////////////////114C/////////////////////////////////////////
	class fza_agm114c_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114C";
		count = 16;
		ammo = "fza_agm114c";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 243.62446;
	};
	class fza_agm114c_23_8: fza_agm114c_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114c_14_8: fza_agm114c_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114c_1_4: fza_agm114c_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114c_1_ur: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_1_ul: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_1_ll: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_1_lr: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114c_2_4: fza_agm114c_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114c_2_ur: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_2_ul: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_2_ll: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_2_lr: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114c_3_4: fza_agm114c_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114c_3_ur: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_3_ul: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_3_ll: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_3_lr: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114c_4_4: fza_agm114c_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114c_4_ur: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_4_ul: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_4_ll: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114c_4_lr: fza_agm114c_16
	{
		count = 1;
		weight = 108.09106;
	};
//////////////////////////////////////114A/////////////////////////////////////////
	class fza_agm114a_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114A";
		count = 16;
		ammo = "fza_agm114a";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 974.497848;
	};
	class fza_agm114a_23_8: fza_agm114a_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114a_14_8: fza_agm114a_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114a_1_4: fza_agm114a_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114a_1_ur: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_1_ul: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_1_ll: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_1_lr: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114a_2_4: fza_agm114a_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114a_2_ur: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_2_ul: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_2_ll: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_2_lr: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114a_3_4: fza_agm114a_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114a_3_ur: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_3_ul: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_3_ll: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_3_lr: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114a_4_4: fza_agm114a_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114a_4_ur: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_4_ul: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_4_ll: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114a_4_lr: fza_agm114a_16
	{
		count = 1;
		weight = 108.09106;
	};
//////////////////////////////////////114M/////////////////////////////////////////
	class fza_agm114m_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114M";
		count = 16;
		ammo = "fza_agm114m";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
	};
	class fza_agm114m_23_8: fza_agm114m_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114m_14_8: fza_agm114m_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114m_1_4: fza_agm114m_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114m_1_ur: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_1_ul: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_1_ll: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_1_lr: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114m_2_4: fza_agm114m_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114m_2_ur: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_2_ul: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_2_ll: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_2_lr: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114m_3_4: fza_agm114m_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114m_3_ur: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_3_ul: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_3_ll: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_3_lr: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114m_4_4: fza_agm114m_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114m_4_ur: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_4_ul: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_4_ll: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114m_4_lr: fza_agm114m_16
	{
		count = 1;
		weight = 108.09106;
	};
//////////////////////////////////////114N/////////////////////////////////////////
	class fza_agm114n_16: VehicleMagazine
	{
		scope = 2;
		displayName = "AGM-114N";
		count = 16;
		ammo = "fza_agm114n";
		initSpeed = 150;
		sound[] = {"\ca\Weapons\Data\Sound\TOW_2",3.162278,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 974.497848;
	};
	class fza_agm114n_23_8: fza_agm114n_16
	{
		count = 8;
		weight = 487.248924;
	};
	class fza_agm114n_14_8: fza_agm114n_16
	{
		count = 8;
		weight = 487.248924;
	};
	/////////////////////////pylon1/////////////////////////////////////
	class fza_agm114n_1_4: fza_agm114n_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114n_1_ur: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_1_ul: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_1_ll: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_1_lr: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon2/////////////////////////////////////
	class fza_agm114n_2_4: fza_agm114n_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114n_2_ur: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_2_ul: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_2_ll: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_2_lr: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon3/////////////////////////////////////
	class fza_agm114n_3_4: fza_agm114n_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114n_3_ur: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_3_ul: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_3_ll: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_3_lr: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	/////////////////////////pylon4/////////////////////////////////////
	class fza_agm114n_4_4: fza_agm114n_16
	{
		count = 4;
		weight = 243.62446;
	};
	class fza_agm114n_4_ur: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_4_ul: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_4_ll: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};
	class fza_agm114n_4_lr: fza_agm114n_16
	{
		count = 1;
		weight = 108.09106;
	};

	////////////////////////////////////////////////////////////////////////
	///////////////////////////////ROCKETS//////////////////////////////////
	////////////////////////////////////////////////////////////////////////

	class fza_m261_m151_76: VehicleMagazine
	{
		scope = 2;
		displayName = "M151 HE";
		ammo = "fza_275_m151";
		count = 76;
		initSpeed = 739;
		nameSound = "rockets";
		sound[] = {"A3\sounds_f\weapons\rockets\explosion_missile_01", 1, 1, 1200};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 952.544;
	};
	////////ZONES/////
	class fza_m261_m151_14_zoneA: fza_m261_m151_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m151_14_zoneB: fza_m261_m151_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m151_23_zoneC: fza_m261_m151_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m151_23_zoneD: fza_m261_m151_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m151_14_zoneE: fza_m261_m151_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m151_23_zoneE: fza_m261_m151_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m151_1234_zoneE: fza_m261_m151_76
	{
		count = 12;
		weight = 165.108;
	};
	/////ZONES//////
	class fza_m261_m151_14_38: fza_m261_m151_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m151_14_zone1_12: fza_m261_m151_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m151_14_zone2_4: fza_m261_m151_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m151_14_zone3_3: fza_m261_m151_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m151_23_38: fza_m261_m151_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m151_23_zone1_12: fza_m261_m151_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m151_23_zone2_4: fza_m261_m151_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m151_23_zone3_3: fza_m261_m151_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m151_1_19: fza_m261_m151_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m151_1_zone1_12: fza_m261_m151_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m151_1_zone2_4: fza_m261_m151_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m151_1_zone3_3: fza_m261_m151_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m151_2_19: fza_m261_m151_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m151_2_zone1_12: fza_m261_m151_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m151_2_zone2_4: fza_m261_m151_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m151_2_zone3_3: fza_m261_m151_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m151_3_19: fza_m261_m151_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m151_3_zone1_12: fza_m261_m151_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m151_3_zone2_4: fza_m261_m151_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m151_3_zone3_3: fza_m261_m151_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m151_4_19: fza_m261_m151_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m151_4_zone1_12: fza_m261_m151_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m151_4_zone2_4: fza_m261_m151_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m151_4_zone3_3: fza_m261_m151_76
	{
		count = 3;
		weight = 71.2139;
	};

	////////////////////////////////////////////////////////////////////////
	///////////////////////////////M229/////////////////////////////////////
	////////////////////////////////////////////////////////////////////////

	class fza_m261_m229_76: VehicleMagazine
	{
		scope = 2;
		displayName = "M229 HE";
		ammo = "fza_275_m229";
		count = 76;
		initSpeed = 44;
		nameSound = "rockets";
		sound[] = {"A3\sounds_f\weapons\rockets\explosion_missile_01", 1, 1, 1200};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 952.544;
	};
	////////ZONES/////
	class fza_m261_m229_14_zoneA: fza_m261_m229_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m229_14_zoneB: fza_m261_m229_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m229_23_zoneC: fza_m261_m229_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m229_23_zoneD: fza_m261_m229_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m229_14_zoneE: fza_m261_m229_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m229_23_zoneE: fza_m261_m229_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m229_1234_zoneE: fza_m261_m229_76
	{
		count = 12;
		weight = 165.108;
	};
	/////ZONES//////
	class fza_m261_m229_14_38: fza_m261_m229_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m229_14_zone1_12: fza_m261_m229_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m229_14_zone2_4: fza_m261_m229_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m229_14_zone3_3: fza_m261_m229_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m229_23_38: fza_m261_m229_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m229_23_zone1_12: fza_m261_m229_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m229_23_zone2_4: fza_m261_m229_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m229_23_zone3_3: fza_m261_m229_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m229_1_19: fza_m261_m229_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m229_1_zone1_12: fza_m261_m229_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m229_1_zone2_4: fza_m261_m229_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m229_1_zone3_3: fza_m261_m229_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m229_2_19: fza_m261_m229_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m229_2_zone1_12: fza_m261_m229_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m229_2_zone2_4: fza_m261_m229_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m229_2_zone3_3: fza_m261_m229_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m229_3_19: fza_m261_m229_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m229_3_zone1_12: fza_m261_m229_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m229_3_zone2_4: fza_m261_m229_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m229_3_zone3_3: fza_m261_m229_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m229_4_19: fza_m261_m229_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m229_4_zone1_12: fza_m261_m229_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m229_4_zone2_4: fza_m261_m229_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m229_4_zone3_3: fza_m261_m229_76
	{
		count = 3;
		weight = 71.2139;
	};

	////////////////////////////////////////////////////////////////////////
	///////////////////////////////M255/////////////////////////////////////
	////////////////////////////////////////////////////////////////////////
	
	class fza_m261_m255_76: VehicleMagazine
	{
		scope = 2;
		displayName = "M255 FLEC";
		ammo = "fza_275_m255";
		count = 76;
		initSpeed = 44;
		nameSound = "rockets";
		sound[] = {"A3\sounds_f\weapons\rockets\explosion_missile_01", 1, 1, 1200};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 952.544;
	};
	////////ZONES/////
	class fza_m261_m255_14_zoneA: fza_m261_m255_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m255_14_zoneB: fza_m261_m255_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m255_23_zoneC: fza_m261_m255_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m255_23_zoneD: fza_m261_m255_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m255_14_zoneE: fza_m261_m255_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m255_23_zoneE: fza_m261_m255_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m255_1234_zoneE: fza_m261_m255_76
	{
		count = 12;
		weight = 165.108;
	};
	/////ZONES//////
	class fza_m261_m255_14_38: fza_m261_m255_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m255_14_zone1_12: fza_m261_m255_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m255_14_zone2_4: fza_m261_m255_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m255_14_zone3_3: fza_m261_m255_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m255_23_38: fza_m261_m255_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m255_23_zone1_12: fza_m261_m255_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m255_23_zone2_4: fza_m261_m255_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m255_23_zone3_3: fza_m261_m255_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m255_1_19: fza_m261_m255_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m255_1_zone1_12: fza_m261_m255_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m255_1_zone2_4: fza_m261_m255_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m255_1_zone3_3: fza_m261_m255_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m255_2_19: fza_m261_m255_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m255_2_zone1_12: fza_m261_m255_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m255_2_zone2_4: fza_m261_m255_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m255_2_zone3_3: fza_m261_m255_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m255_3_19: fza_m261_m255_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m255_3_zone1_12: fza_m261_m255_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m255_3_zone2_4: fza_m261_m255_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m255_3_zone3_3: fza_m261_m255_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m255_4_19: fza_m261_m255_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m255_4_zone1_12: fza_m261_m255_76
	{
		count = 12;
		weight = 165.108;
	};
	class fza_m261_m255_4_zone2_4: fza_m261_m255_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m255_4_zone3_3: fza_m261_m255_76
	{
		count = 3;
		weight = 71.2139;
	};

	////////////////////////////////////////////////////////////////////////
	///////////////////////////////M261/////////////////////////////////////
	////////////////////////////////////////////////////////////////////////	
	
	class fza_m261_m261_76: VehicleMagazine
	{
		scope = 2;
		displayName = "M261 MPSM";
		ammo = "fza_275_m261";
		count = 76;
		initSpeed = 44;
		nameSound = "rockets";
		sound[] = {"A3\sounds_f\weapons\rockets\explosion_missile_01", 1, 1, 1200};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 952.544;
	};
	////////ZONES/////
	class fza_m261_m261_14_zoneA: fza_m261_m261_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m261_14_zoneB: fza_m261_m261_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m261_23_zoneC: fza_m261_m261_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m261_23_zoneD: fza_m261_m261_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m261_14_zoneE: fza_m261_m261_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m261_23_zoneE: fza_m261_m261_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m261_1234_zoneE: fza_m261_m261_76
	{
		count = 12;
		weight = 165.107;
	};
	/////ZONES//////
	class fza_m261_m261_14_38: fza_m261_m261_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m261_14_zone1_12: fza_m261_m261_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m261_14_zone2_4: fza_m261_m261_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m261_14_zone3_3: fza_m261_m261_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m261_23_38: fza_m261_m261_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m261_23_zone1_12: fza_m261_m261_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m261_23_zone2_4: fza_m261_m261_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m261_23_zone3_3: fza_m261_m261_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m261_1_19: fza_m261_m261_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m261_1_zone1_12: fza_m261_m261_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m261_1_zone2_4: fza_m261_m261_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m261_1_zone3_3: fza_m261_m261_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m261_2_19: fza_m261_m261_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m261_2_zone1_12: fza_m261_m261_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m261_2_zone2_4: fza_m261_m261_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m261_2_zone3_3: fza_m261_m261_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m261_3_19: fza_m261_m261_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m261_3_zone1_12: fza_m261_m261_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m261_3_zone2_4: fza_m261_m261_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m261_3_zone3_3: fza_m261_m261_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m261_4_19: fza_m261_m261_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m261_4_zone1_12: fza_m261_m261_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m261_4_zone2_4: fza_m261_m261_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m261_4_zone3_3: fza_m261_m261_76
	{
		count = 3;
		weight = 71.2139;
	};

	////////////////////////////////////////////////////////////////////////
	///////////////////////////////M257/////////////////////////////////////
	////////////////////////////////////////////////////////////////////////

	class fza_m261_m257_76: VehicleMagazine
	{
		scope = 2;
		displayName = "M257 ILLUM";
		ammo = "fza_275_m257";
		count = 76;
		initSpeed = 44;
		nameSound = "rockets";
		sound[] = {"\ca\Weapons\Data\Sound\rocket1",1.000000,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.000316,1};
		weight = 952.544;
	};
	////////ZONES/////
	class fza_m261_m257_14_zoneA: fza_m261_m257_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m257_14_zoneB: fza_m261_m257_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m257_23_zoneC: fza_m261_m257_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m257_23_zoneD: fza_m261_m257_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m257_14_zoneE: fza_m261_m257_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m257_23_zoneE: fza_m261_m257_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m257_1234_zoneE: fza_m261_m257_76
	{
		count = 12;
		weight = 165.107;
	};
	/////ZONES//////
	class fza_m261_m257_14_38: fza_m261_m257_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m257_14_zone1_12: fza_m261_m257_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m257_14_zone2_4: fza_m261_m257_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m257_14_zone3_3: fza_m261_m257_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m257_23_38: fza_m261_m257_76
	{
		count = 38;
		weight = 476.272;
	};
	class fza_m261_m257_23_zone1_12: fza_m261_m257_76
	{
		count = 24;
		weight = 330.215;
	};
	class fza_m261_m257_23_zone2_4: fza_m261_m257_76
	{
		count = 8;
		weight = 123.377;
	};
	class fza_m261_m257_23_zone3_3: fza_m261_m257_76
	{
		count = 6;
		weight = 102.512;
	};
	class fza_m261_m257_1_19: fza_m261_m257_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m257_1_zone1_12: fza_m261_m257_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m257_1_zone2_4: fza_m261_m257_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m257_1_zone3_3: fza_m261_m257_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m257_2_19: fza_m261_m257_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m257_2_zone1_12: fza_m261_m257_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m257_2_zone2_4: fza_m261_m257_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m257_2_zone3_3: fza_m261_m257_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m257_3_19: fza_m261_m257_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m257_3_zone1_12: fza_m261_m257_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m257_3_zone2_4: fza_m261_m257_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m257_3_zone3_3: fza_m261_m257_76
	{
		count = 3;
		weight = 71.2139;
	};
	class fza_m261_m257_4_19: fza_m261_m257_76
	{
		count = 19;
		weight = 238.136;
	};
	class fza_m261_m257_4_zone1_12: fza_m261_m257_76
	{
		count = 12;
		weight = 165.107;
	};
	class fza_m261_m257_4_zone2_4: fza_m261_m257_76
	{
		count = 4;
		weight = 81.6466;
	};
	class fza_m261_m257_4_zone3_3: fza_m261_m257_76
	{
		count = 3;
		weight = 71.2139;
	};

	////////////////////////////////////////////////////////////////////////
	//////////////////////////////FUEL TANKS////////////////////////////////
	////////////////////////////////////////////////////////////////////////

	class fza_iafs_100: VehicleMagazine
	{
		scope = 2;
		displayName = "IAFS 100gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 320.6;
	};
	class fza_iafs_130: VehicleMagazine
	{
		scope = 2;
		displayName = "IAFS 130gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 320.6;
	};
	class fza_auxtank_230_1: VehicleMagazine
	{
		scope = 2;
		displayName = "Wing Aux 230gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 698.9858;
	};
	class fza_auxtank_230_2: VehicleMagazine
	{
		scope = 2;
		displayName = "Wing Aux 230gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 698.9858;
	};
	class fza_auxtank_230_3: VehicleMagazine
	{
		scope = 2;
		displayName = "Wing Aux 230gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 698.9858;
	};
	class fza_auxtank_230_4: VehicleMagazine
	{
		scope = 2;
		displayName = "Wing Aux 230gal";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
		weight = 698.9858;
	};

	///////////////////////////////////////////////////////////////////////////
	///////////////////////////DAMAGE//////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////

	class fza_ah64_tailrotor_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "TAIL ROTOR DGRD";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_tailrotor_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "TAIL ROTOR FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_rotor_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "MAIN ROTOR DGRD";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_rotor_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "MAIN ROTOR FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_tads_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "TADS DGRD";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_tads_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "TADS FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_pnvs_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "PNVS FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_gun_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "GUN FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_gun_jam: VehicleMagazine
	{
		scope = 2;
		displayName = "GUN JAM";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_trans_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "TRANS DGRD";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_trans_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "TRANS FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e1_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "ENG1 DAM";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e1_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "ENG1 FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e2_dam: VehicleMagazine
	{
		scope = 2;
		displayName = "ENG2 DAM";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e2_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "ENG2 FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_fwd_leak: VehicleMagazine
	{
		scope = 2;
		displayName = "FWD LEAK";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_aft_leak: VehicleMagazine
	{
		scope = 2;
		displayName = "AFT LEAK";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_fcr_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "FCR FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_rdp_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "RDP FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_ldp_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "LDP FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_rwp_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "RWP FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_lwp_fail: VehicleMagazine
	{
		scope = 2;
		displayName = "LWP FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_apu_fire: VehicleMagazine
	{
		scope = 2;
		displayName = "APU FIRE";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e1_fire: VehicleMagazine
	{
		scope = 2;
		displayName = "E1 FIRE";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_e2_fire: VehicleMagazine
	{
		scope = 2;
		displayName = "E2 FIRE";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_irjamfail: VehicleMagazine
	{
		scope = 2;
		displayName = "IRJAM FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_rfjamfail: VehicleMagazine
	{
		scope = 2;
		displayName = "RFJAM FAIL";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_firepdisch: VehicleMagazine
	{
		scope = 2;
		displayName = "FIREP DISCH";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
	class fza_ah64_firerdisch: VehicleMagazine
	{
		scope = 2;
		displayName = "FIRER DISCH";
		ammo = "fza_30x113";
		count = 1;
		initSpeed = 850;
		tracersevery = 0;
	};
/////////////////////////////////////////////////
/////////////////////LIGHT///////////////////////
/////////////////////////////////////////////////
	class fza_ah64_dam_fuse: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LFUSE";
	};
	class fza_ah64_dam_nose: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "NOSE";
	};
	class fza_ah64_dam_leng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LENG";
	};
	class fza_ah64_dam_reng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RENG";
	};
	class fza_ah64_dam_lfab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LFAB";
	};
	class fza_ah64_dam_rfab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RFAB";
	};
	class fza_ah64_dam_lwing: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LWING";
	};
	class fza_ah64_dam_rwing: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RWING";
	};
	class fza_ah64_dam_tailboom: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "TAILBOOM";
	};
	class fza_ah64_dam_vtail: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "VTAIL";
	};
	class fza_ah64_dam_hstab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "HSTAB";
	};
	class fza_ah64_dam_pylon1: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON1";
	};
	class fza_ah64_dam_pylon2: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON2";
	};
	class fza_ah64_dam_pylon3: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON3";
	};
	class fza_ah64_dam_pylon4: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON4";
	};
	class fza_ah64_dam_tr: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "TR";
	};
	class fza_ah64_dam_rtr: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RTR";
	};
/////////////////////////////////////////////////
/////////////////////MEDIUM//////////////////////
/////////////////////////////////////////////////
	class fza_ah64_mdam_fuse: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "FUSE";
	};
	class fza_ah64_mdam_nose: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "NOSE";
	};
	class fza_ah64_mdam_leng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LENG";
	};
	class fza_ah64_mdam_reng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RENG";
	};
	class fza_ah64_mdam_lfab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LFAB";
	};
	class fza_ah64_mdam_rfab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RFAB";
	};
	class fza_ah64_mdam_lwing: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "LWING";
	};
	class fza_ah64_mdam_rwing: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RWING";
	};
	class fza_ah64_mdam_tailboom: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "TAILBOOM";
	};
	class fza_ah64_mdam_vtail: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "VTAIL";
	};
	class fza_ah64_mdam_hstab: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "HSTAB";
	};
	class fza_ah64_mdam_pylon1: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON1";
	};
	class fza_ah64_mdam_pylon2: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON2";
	};
	class fza_ah64_mdam_pylon3: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON3";
	};
	class fza_ah64_mdam_pylon4: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "PYLON4";
	};
/////////////////////////////////////////////////
/////////////////////HEAVY///////////////////////
/////////////////////////////////////////////////
	class fza_ah64_hdam_reng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RENG";
	};
	class fza_ah64_hdam_leng: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "RENG";
	};
//////////////////////////////////////////////////////////
/////////CATASTROPHIC DAMAGE//////////////////////////////
//////////////////////////////////////////////////////////
	class fza_ah64_cdam_tailboom: fza_ah64_fcr_fail
	{
		scope = 2;
		displayName = "TAILBOOM";
	};
};
