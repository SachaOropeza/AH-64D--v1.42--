/*extern*/ //class Mode_FullAuto;

class CfgWeapons
{
	/*extern*/ //class CannonCore;
	/*extern*/ //class MissileLauncher;
	/*extern*/ //class RocketPods;
	
	class Default{};
	class MGunCore: Default{};
	class MGun: MGunCore {};
	class SmokeLauncher: MGun {};
	class LauncherCore: Default{};
	class CannonCore: Default{};
	class MissileLauncher: LauncherCore{};
	class Launcher: LauncherCore {};
	class Stinger: Launcher {};
	class RocketPods: LauncherCore {};
	
	class fza_CMFlareLauncher: SmokeLauncher 
	{
		scope = 2;
		displayName = "$STR_A3_CMFlareLauncher0";
		magazines[] = {"60Rnd_CMFlareMagazine"};
		magazineReloadTime = 0.200000;
		simulation = "cmlauncher";
		modes[] = {"Single"};
		class Single
		{
			displayName = "$STR_A3_CMFlareLauncher_weapon_mode_Single_name";
			reloadTime = 0.050000;
			burst = 1;
			autoFire = 1;
			useAction = 0;
			useActionTitle = 0;
			soundContinuous = 0;
			artilleryDispersion = 0;
			artilleryCharge = 0;
			textureType = "single";
			recoil = "Empty";
			recoilProne = "";
			sounds[] = {"StandardSound"};

			class StandardSound {
				begin1[] = {"\fza_ah64_us\audio\Flares.ogg", 1.000000, 1, 300};
				soundBegin[] = {"begin1", 1};
			};
			showToPlayer = 1;
			multiplier = 2;
			soundBurst = 0;
			dispersion = 0.400000;
			aiRateOfFire = 1;
			aiRateOfFireDistance = 10;
			minRange = 0;
			minRangeProbab = 0.010000;
			midRange = 1;
			midRangeProbab = 0.010000;
			maxRange = 2;
			maxRangeProbab = 0.010000;
		};
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////M230 CHAINGUN////////////////////////////
	///////////////////////////////////////////////////////////////////////
	
class fza_m230: CannonCore
	{
		class GunParticles
		{
			class Effect
			{
				effectName = "MachineGun2";
				positionName = "Usti hlavne";
				directionName = "Konec hlavne";
			};
		};
			class StandardSound 
			{
				begin1[] = {"\fza_ah64_us\audio\M230_Dist_burst10.ogg", 3, 1, 900};
				end1[] = {"\fza_ah64_us\audio\M230_Dist2.ogg", 3, 1, 900};
				soundBegin[] = {"begin1",1};
				soundEnd[] = {"end1",1};
				weaponSoundEffect = "DefaultRifle";
			};
			
		displayName="M230E1";
		displayNameMagazine="M230 30mm";
		shortNameMagazine="M230";
		cursor = "";
		cursorAim = "";
		cursorAimOn = "";
		recoil = "Empty";
		recoilProne = "Empty";
		scope = 2;
		burst = 10;
		multiplier=1;
		reloadTime=0.096;
		dispersion = 0.005000;
		initspeed=1620;
		ballisticscomputer = 1;
		weaponLockSystem = "8+4";
		weaponLockDelay = 0;
		autoreload = 1;
		shotFromTurret = false;
		magazines[]={"fza_m230_300","fza_m230_1200"};
		modes[]= {"this"};
		muzzles[] = {"this"};
		sounds[] = {"StandardSound"};
		soundBurst= true;
		soundContinuous= false;
		showToPlayer = true;
		autofire= true;
		useAction = false;
		useActionTitle = "";
		aiRateOfFire = 5;
		aiRateOfFireDistance = 500;
		minRange = 100;
		minRangeProbab = 0.500000;
		midRange = 1500;
		midRangeProbab = 0.200000;
		maxRange = 3000;
		maxRangeProbab = 0.100000;
	};

	class fza_burstlimiter: fza_m230
	{
		scope = 1;
	};


	///////////////////////////////////////////////////////////////////////
	//////////////////////////////HELLFIRE/////////////////////////////////
	///////////////////////////////////////////////////////////////////////
	
	class fza_agm114_16 : MissileLauncher
	{
		class StandardSound
        {
			weaponfire[] = {"\fza_ah64_us\audio\AGM114_Mid.ogg",30,1,50};
			soundBegin[] = {"weaponfire",1};
			weaponsoundeffect = "DefaultRifle";
		};
		scope = 1;
		displayName="AGM-114 HELLFIRE";
		displayNameMagazine="AGM-114";
		shortNameMagazine="AGM-114";
		magazines[]={fza_agm114k_16};
		weaponLockDelay = 0;
		weaponLockSystem = 4;
		lockedtargetsound[] = {"", 1, 1};
		lockingtargetsound[] = {"", 1, 1};
		canlock = 0;
		cursor = "";
		cursoraim = "";
		cursorAimOn = "";
		cursorsize = 1;
		sounds[] = {"StandardSound"};
		airateoffire = 5;
		airateoffiredistance = 4000;
		cmimmunity = 0.8;
		maxrange = 7000;
		maxRangeProbab = 0.010000;
		midrange = 3000;
		midRangeProbab = 0.090000;
		minrange = 1000;
		minRangeProbab = 0.025000;
		reloadtime = 1;	
	};
	class fza_agm114_23_8 : fza_agm114_16
	{
		displayName="AGM-114 (2,3)";
		magazines[]={fza_agm114l_23_8,fza_agm114k_23_8,fza_agm114c_23_8,fza_agm114a_23_8,fza_agm114m_23_8,fza_agm114n_23_8};
	};
	class fza_agm114_14_8 : fza_agm114_16
	{
		displayName="AGM-114 (1,4)";
		magazines[]={fza_agm114l_14_8,fza_agm114k_14_8,fza_agm114c_14_8,fza_agm114a_14_8,fza_agm114m_14_8,fza_agm114n_14_8};
	};
	///////1///////////////////////////////
	class fza_agm114_1_4 : fza_agm114_16
	{
		displayName="AGM-114 (1)";
		magazines[]={fza_agm114l_1_4,fza_agm114k_1_4,fza_agm114c_1_4,fza_agm114a_1_4,fza_agm114m_1_4,fza_agm114n_1_4};
	};
	class fza_agm114_1_ul : fza_agm114_16
	{
		displayName="AGM-114 (1,L1)";
		magazines[]={fza_agm114l_1_ul,fza_agm114k_1_ul,fza_agm114c_1_ul,fza_agm114a_1_ul,fza_agm114m_1_ul,fza_agm114n_1_ul};
	};
	class fza_agm114_1_ur : fza_agm114_16
	{
		displayName="AGM-114 (1,R1)";
		magazines[]={fza_agm114l_1_ur,fza_agm114k_1_ur,fza_agm114c_1_ur,fza_agm114a_1_ur,fza_agm114m_1_ur,fza_agm114n_1_ur};
	};
	class fza_agm114_1_ll : fza_agm114_16
	{
		displayName="AGM-114 (1,L2)";
		magazines[]={fza_agm114l_1_ll,fza_agm114k_1_ll,fza_agm114c_1_ll,fza_agm114a_1_ll,fza_agm114m_1_ll,fza_agm114n_1_ll};
	};
	class fza_agm114_1_lr : fza_agm114_16
	{
		displayName="AGM-114 (1,R2)";
		magazines[]={fza_agm114l_1_lr,fza_agm114k_1_lr,fza_agm114c_1_lr,fza_agm114a_1_lr,fza_agm114m_1_lr,fza_agm114n_1_lr};
	};
	/////////2//////////////////////////
	class fza_agm114_2_4 : fza_agm114_16
	{
		displayName="AGM-114 (2)";
		magazines[]={fza_agm114l_2_4,fza_agm114k_2_4,fza_agm114c_2_4,fza_agm114a_2_4,fza_agm114m_2_4,fza_agm114n_2_4};
	};
	class fza_agm114_2_ul : fza_agm114_16
	{
		displayName="AGM-114 (2,L1)";
		magazines[]={fza_agm114l_2_ul,fza_agm114k_2_ul,fza_agm114c_2_ul,fza_agm114a_2_ul,fza_agm114m_2_ul,fza_agm114n_2_ul};
	};
	class fza_agm114_2_ur : fza_agm114_16
	{
		displayName="AGM-114 (2,R1)";
		magazines[]={fza_agm114l_2_ur,fza_agm114k_2_ur,fza_agm114c_2_ur,fza_agm114a_2_ur,fza_agm114m_2_ur,fza_agm114n_2_ur};
	};
	class fza_agm114_2_ll : fza_agm114_16
	{
		displayName="AGM-114 (2,L2)";
		magazines[]={fza_agm114l_2_ll,fza_agm114k_2_ll,fza_agm114c_2_ll,fza_agm114a_2_ll,fza_agm114m_2_ll,fza_agm114n_2_ll};
	};
	class fza_agm114_2_lr : fza_agm114_16
	{
		displayName="AGM-114 (2,R2)";
		magazines[]={fza_agm114l_2_lr,fza_agm114k_2_lr,fza_agm114c_2_lr,fza_agm114a_2_lr,fza_agm114m_2_lr,fza_agm114n_2_lr};
	};
	/////////3/////////////////////////////
	class fza_agm114_3_4 : fza_agm114_16
	{
		displayName="AGM-114 (3)";
		magazines[]={fza_agm114l_3_4,fza_agm114k_3_4,fza_agm114c_3_4,fza_agm114a_3_4,fza_agm114m_3_4,fza_agm114n_3_4};
	};
	class fza_agm114_3_ul : fza_agm114_16
	{
		displayName="AGM-114 (3,L1)";
		magazines[]={fza_agm114l_3_ul,fza_agm114k_3_ul,fza_agm114c_3_ul,fza_agm114a_3_ul,fza_agm114m_3_ul,fza_agm114n_3_ul};
	};
	class fza_agm114_3_ur : fza_agm114_16
	{
		displayName="AGM-114 (3,R1)";
		magazines[]={fza_agm114l_3_ur,fza_agm114k_3_ur,fza_agm114c_3_ur,fza_agm114a_3_ur,fza_agm114m_3_ur,fza_agm114n_3_ur};
	};
	class fza_agm114_3_ll : fza_agm114_16
	{
		displayName="AGM-114 (3,L2)";
		magazines[]={fza_agm114l_3_ll,fza_agm114k_3_ll,fza_agm114c_3_ll,fza_agm114a_3_ll,fza_agm114m_3_ll,fza_agm114n_3_ll};
	};
	class fza_agm114_3_lr : fza_agm114_16
	{
		displayName="AGM-114 (3,R2)";
		magazines[]={fza_agm114l_3_lr,fza_agm114k_3_lr,fza_agm114c_3_lr,fza_agm114a_3_lr,fza_agm114m_3_lr,fza_agm114n_3_lr};
	};
	/////////4//////////////////////////////
	class fza_agm114_4_4 : fza_agm114_16
	{
		displayName="AGM-114 (4)";
		magazines[]={fza_agm114l_4_4,fza_agm114k_4_4,fza_agm114c_4_4,fza_agm114a_4_4,fza_agm114m_4_4,fza_agm114n_4_4};
	};
	class fza_agm114_4_ul : fza_agm114_16
	{
		displayName="AGM-114 (4,L1)";
		magazines[]={fza_agm114l_4_ul,fza_agm114k_4_ul,fza_agm114c_4_ul,fza_agm114a_4_ul,fza_agm114m_4_ul,fza_agm114n_4_ul};
	};
	class fza_agm114_4_ur : fza_agm114_16
	{
		displayName="AGM-114 (4,R1)";
		magazines[]={fza_agm114l_4_ur,fza_agm114k_4_ur,fza_agm114c_4_ur,fza_agm114a_4_ur,fza_agm114m_4_ur,fza_agm114n_4_ur};
	};
	class fza_agm114_4_ll : fza_agm114_16
	{
		displayName="AGM-114 (4,L2)";
		magazines[]={fza_agm114l_4_ll,fza_agm114k_4_ll,fza_agm114c_4_ll,fza_agm114a_4_ll,fza_agm114m_4_ll,fza_agm114n_4_ll};
	};
	class fza_agm114_4_lr : fza_agm114_16
	{
		displayName="AGM-114 (4,R2)";
		magazines[]={fza_agm114l_4_lr,fza_agm114k_4_lr,fza_agm114c_4_lr,fza_agm114a_4_lr,fza_agm114m_4_lr,fza_agm114n_4_lr};
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////ROCKETS//////////////////////////////////
	///////////////////////////////////////////////////////////////////////
	
	class fza_m261_76: RocketPods
	{
		scope = 1;
		displayName="M261";
		displayNameMagazine="M261";
		shortNameMagazine="M261";
		reloadTime=0.05;
		maxrange = 3000;
		maxRangeProbab = 0.010000;
		midrange = 2000;
		midRangeProbab = 0.090000;
		minrange = 200;
		minRangeProbab = 0.025000;
		burst=1;
		magazines[]={fza_m261_m151_76};
		modes[]= {"Single"};
		cursor = "EmptyCursor";
		cursoraim = "EmptyCursor";
		cursorAimOn = "";
		ballisticscomputer = 0;
		class Single: LauncherCore
		{
			class StandardSound
            {
				weaponfire[] = {"\fza_ah64_us\audio\M261_Dist.ogg", 8,1,1000};
				weaponfire2[] = {"\fza_ah64_us\audio\M261_Dist2.ogg", 8,1,1000};
				soundBegin[] = {"weaponfire",0.50,"weaponfire2",0.50};
				weaponsoundeffect = "DefaultRifle";
			};
			multiplier=1;
			burst=1;
			displayName="M261";
			dispersion=0.0;
			sounds[] = {"StandardSound"};
			soundburst= true;
			soundContinuous= 0;
			reloadTime=0.05;
			recoil = "Empty";
			recoilProne = "Empty";
			autofire=0;
			useAction = 0;
			useActionTitle = "";
			showToPlayer = 1;
			maxrange = 4000;
			maxrangeprobab = 0.090000;
			midrange = 2000;
			midrangeprobab = 0.090000;
			minrange = 200;
			minrangeprobab = 0.090000;
			cursor = "EmptyCursor";
			cursoraim = "EmptyCursor";
			cursorAimOn = "";
		};
	};
	
	class fza_ma_safe: RocketPods
	{
		scope=2;
		displayName="MASTER ARM - SAFE";
		displayNameMagazine="MASTER ARM - SAFE";
		shortNameMagazine="MASTER ARM - SAFE";
		cursor="laserDesignator";
		cursorAim="EmptyCursor";
		cursorAimOn="CursorAimOn";
		magazines[]=
		{
			"fza_safe"
		};
		canLock=2;
		showAimCursorInternal=0;
		canShootInWater=1;
		minRange=100;
		minRangeProbab=1;
		midRange=2000;
		midRangeProbab=1;
		maxRange=5000;
		maxRangeProbab=1;
	};
	////////////////14/////////////////
	class fza_m261_14: fza_m261_76
	{
		displayName="M261 (1,4)";
		magazines[]={fza_m261_m151_14_38,fza_m261_m229_14_38,fza_m261_m261_14_38,fza_m261_m255_14_38,fza_m261_m257_14_38};
	};
	class fza_m261_14_zone1: fza_m261_76
	{
		displayName="M261 A (1,4)";
		magazines[]={fza_m261_m151_14_zone1_12,fza_m261_m229_14_zone1_12,fza_m261_m261_14_zone1_12,fza_m261_m255_14_zone1_12,fza_m261_m257_14_zone1_12};
	};
	class fza_m261_14_zone2: fza_m261_76
	{
		displayName="M261 B (1,4)";
		magazines[]={fza_m261_m151_14_zone2_4,fza_m261_m229_14_zone2_4,fza_m261_m261_14_zone2_4,fza_m261_m255_14_zone2_4,fza_m261_m257_14_zone2_4};
	};
	class fza_m261_14_zone3: fza_m261_76
	{
		displayName="M261 E (1,4)";
		magazines[]={fza_m261_m151_14_zone3_3,fza_m261_m229_14_zone3_3,fza_m261_m261_14_zone3_3,fza_m261_m255_14_zone3_3,fza_m261_m257_14_zone3_3};
	};
	//////////////23///////////////////
	class fza_m261_23: fza_m261_76
	{
		displayName="M261 (2,3)";
		magazines[]={fza_m261_m151_23_38,fza_m261_m229_23_38,fza_m261_m261_23_38,fza_m261_m255_23_38,fza_m261_m257_23_38};
	};
	class fza_m261_23_zone1: fza_m261_76
	{
		magazines[]={fza_m261_m151_23_zone1_12,fza_m261_m229_23_zone1_12,fza_m261_m261_23_zone1_12,fza_m261_m255_23_zone1_12,fza_m261_m257_23_zone1_12};
	};
	class fza_m261_23_zone2: fza_m261_76
	{
		magazines[]={fza_m261_m151_23_zone2_4,fza_m261_m229_23_zone2_4,fza_m261_m261_23_zone2_4,fza_m261_m255_23_zone2_4,fza_m261_m257_23_zone2_4};
	};
	class fza_m261_23_zone3: fza_m261_76
	{
		magazines[]={fza_m261_m151_23_zone3_3,fza_m261_m229_23_zone3_3,fza_m261_m261_23_zone3_3,fza_m261_m255_23_zone3_3,fza_m261_m257_23_zone3_3};
	};
	/////////////indi///////////////
	class fza_m261_1: fza_m261_76
	{
		displayName="M261 (1)";
		magazines[]={fza_m261_m151_1_19,fza_m261_m229_1_19,fza_m261_m261_1_19,fza_m261_m255_1_19,fza_m261_m257_1_19};
	};
	class fza_m261_1_zone1: fza_m261_76
	{
		displayName="M261 A (1)";
		magazines[]={fza_m261_m151_1_zone1_12,fza_m261_m229_1_zone1_12,fza_m261_m261_1_zone1_12,fza_m261_m255_1_zone1_12,fza_m261_m257_1_zone1_12};
	};
	class fza_m261_1_zone2: fza_m261_76
	{
		displayName="M261 B (1)";
		magazines[]={fza_m261_m151_1_zone2_4,fza_m261_m229_1_zone2_4,fza_m261_m261_1_zone2_4,fza_m261_m255_1_zone2_4,fza_m261_m257_1_zone2_4};
	};
	class fza_m261_1_zone3: fza_m261_76
	{
		displayName="M261 E (1)";
		magazines[]={fza_m261_m151_1_zone3_3,fza_m261_m229_1_zone3_3,fza_m261_m261_1_zone3_3,fza_m261_m255_1_zone3_3,fza_m261_m257_1_zone3_3};
	};
	/////////////////////////////////////
	class fza_m261_2: fza_m261_76
	{
		displayName="M261 (2)";
		magazines[]={fza_m261_m151_2_19,fza_m261_m229_2_19,fza_m261_m261_2_19,fza_m261_m255_2_19,fza_m261_m257_2_19};
	};
	class fza_m261_2_zone1: fza_m261_76
	{
		displayName="M261 C (2)";
		magazines[]={fza_m261_m151_2_zone1_12,fza_m261_m229_2_zone1_12,fza_m261_m261_2_zone1_12,fza_m261_m255_2_zone1_12,fza_m261_m257_2_zone1_12};
	};
	class fza_m261_2_zone2: fza_m261_76
	{
		displayName="M261 D (2)";
		magazines[]={fza_m261_m151_2_zone2_4,fza_m261_m229_2_zone2_4,fza_m261_m261_2_zone2_4,fza_m261_m255_2_zone2_4,fza_m261_m257_2_zone2_4};
	};
	class fza_m261_2_zone3: fza_m261_76
	{
		displayName="M261 E (2)";
		magazines[]={fza_m261_m151_2_zone3_3,fza_m261_m229_2_zone3_3,fza_m261_m261_2_zone3_3,fza_m261_m255_2_zone3_3,fza_m261_m257_2_zone3_3};
	};
	///////////////////////////////////////
	class fza_m261_3: fza_m261_76
	{
		displayName="M261 (3)";
		magazines[]={fza_m261_m151_3_19,fza_m261_m229_3_19,fza_m261_m261_3_19,fza_m261_m255_3_19,fza_m261_m257_3_19};
	};
	class fza_m261_3_zone1: fza_m261_76
	{
		displayName="M261 C (3)";
		magazines[]={fza_m261_m151_3_zone1_12,fza_m261_m229_3_zone1_12,fza_m261_m261_3_zone1_12,fza_m261_m255_3_zone1_12,fza_m261_m257_3_zone1_12};
	};
	class fza_m261_3_zone2: fza_m261_76
	{
		displayName="M261 D (3)";
		magazines[]={fza_m261_m151_3_zone2_4,fza_m261_m229_3_zone2_4,fza_m261_m261_3_zone2_4,fza_m261_m255_3_zone2_4,fza_m261_m257_3_zone2_4};
	};
	class fza_m261_3_zone3: fza_m261_76
	{
		displayName="M261 E (3)";
		magazines[]={fza_m261_m151_3_zone3_3,fza_m261_m229_3_zone3_3,fza_m261_m261_3_zone3_3,fza_m261_m255_3_zone3_3,fza_m261_m257_3_zone3_3};
	};
	/////////////////////////////////////
	class fza_m261_4: fza_m261_76
	{
		displayName="M261 (4)";
		magazines[]={fza_m261_m151_4_19,fza_m261_m229_4_19,fza_m261_m261_4_19,fza_m261_m255_4_19,fza_m261_m257_4_19};
	};
	class fza_m261_4_zone1: fza_m261_76
	{
		displayName="M261 A (4)";
		magazines[]={fza_m261_m151_4_zone1_12,fza_m261_m229_4_zone1_12,fza_m261_m261_4_zone1_12,fza_m261_m255_4_zone1_12,fza_m261_m257_4_zone1_12};
	};
	class fza_m261_4_zone2: fza_m261_76
	{
		displayName="M261 B (4)";
		magazines[]={fza_m261_m151_4_zone2_4,fza_m261_m229_4_zone2_4,fza_m261_m261_4_zone2_4,fza_m261_m255_4_zone2_4,fza_m261_m257_4_zone2_4};
	};
	class fza_m261_4_zone3: fza_m261_76
	{
		displayName="M261 E (4)";
		magazines[]={fza_m261_m151_4_zone3_3,fza_m261_m229_4_zone3_3,fza_m261_m261_4_zone3_3,fza_m261_m255_4_zone3_3,fza_m261_m257_4_zone3_3};
	};
	//////////////////ZONES/////////////////
	///////1 and 4 combined zones//////
	class fza_m261_14_zoneA: fza_m261_76
	{
		displayName="M261 A (1,4)";
		magazines[]={fza_m261_m151_14_zoneA,fza_m261_m229_14_zoneA,fza_m261_m261_14_zoneA,fza_m261_m255_14_zoneA,fza_m261_m257_14_zoneA};
	};
	class fza_m261_14_zoneB: fza_m261_76
	{
		displayName="M261 B (1,4)";
		magazines[]={fza_m261_m151_14_zoneB,fza_m261_m229_14_zoneB,fza_m261_m261_14_zoneB,fza_m261_m255_14_zoneB,fza_m261_m257_14_zoneB};
	};
	class fza_m261_14_zoneE: fza_m261_76
	{
		displayName="M261 E (1,4)";
		magazines[]={fza_m261_m151_14_zoneE,fza_m261_m229_14_zoneE,fza_m261_m261_14_zoneE,fza_m261_m255_14_zoneE,fza_m261_m257_14_zoneE};
	};
	/////2 and 3 combined zones///////
	class fza_m261_23_zoneC: fza_m261_76
	{
		displayName="M261 C (2,3)";
		magazines[]={fza_m261_m151_23_zoneC,fza_m261_m229_23_zoneC,fza_m261_m261_23_zoneC,fza_m261_m255_23_zoneC,fza_m261_m257_23_zoneC};
	};
	class fza_m261_23_zoneD: fza_m261_76
	{
		displayName="M261 D (2,3)";
		magazines[]={fza_m261_m151_23_zoneD,fza_m261_m229_23_zoneD,fza_m261_m261_23_zoneD,fza_m261_m255_23_zoneD,fza_m261_m257_23_zoneD};
	};
	class fza_m261_23_zoneE: fza_m261_76
	{
		displayName="M261 E (2,3)";
		magazines[]={fza_m261_m151_23_zoneE,fza_m261_m229_23_zoneE,fza_m261_m261_23_zoneE,fza_m261_m255_23_zoneE,fza_m261_m257_23_zoneE};
	};
	/////zone E combined//////////
	class fza_m261_1234_zoneE: fza_m261_76
	{
		displayName="M261 E";
		magazines[]={fza_m261_m151_1234_zoneE,fza_m261_m229_1234_zoneE,fza_m261_m261_1234_zoneE,fza_m261_m255_1234_zoneE,fza_m261_m257_1234_zoneE};
	};

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////STINGERS/////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_atas_2: MissileLauncher
	{
		airateoffire = 5;
		airateoffiredistance = 2500;
		cmimmunity = 0.8;
		canlock = 0;
		cursor = "";
		cursoraim = "";
		cursorAimOn = "";
		cursorsize = 1;
		displayname = "FIM-92F Stinger";
		magazinereloadtime = 30;
		magazines[] = {"fza_atas_2"};
		maxrange = 4000;
		maxrangeprobab = 0.1;
		midrange = 1000;
		midrangeprobab = 0.8;
		minrange = 50;
		minrangeprobab = 0.3;
		reloadtime = 0.5;
		sounds[] = {"StandardSound"};
		class StandardSound
        {
			weaponfire[] = {"\fza_ah64_us\audio\fim92_oneshot1.ogg", 2, 1, 1000};
			soundBegin[] = {"weaponfire",1};
			weaponsoundeffect = "DefaultRifle";
		};
		soundFly[] = {"A3\Sounds_F\weapons\Rockets\rocket_fly_1", 1, 1.100000, 700};
		weaponlockdelay = 0;
		//weaponlocksystem = 1;
		weaponlocksystem = "1+2+8";
		lockedtargetsound[] = {"", 1, 1};
		lockingtargetsound[] = {"", 1, 1};
	};
};
