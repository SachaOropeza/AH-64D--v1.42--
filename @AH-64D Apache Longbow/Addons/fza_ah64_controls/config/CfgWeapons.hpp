class Mode_SemiAuto;
class CfgWeapons
{	
	class MGunCore;
	class MGun;
	class RocketPods;
	class CannonCore;
	class SmokeLauncher;
	class LauncherCore;
	class MissileLauncher;
	class missiles_DAR;
	
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
			soundSetShot[] = {"fza_m230_soundset"};
		};	
		scope = 1;
		displayName="M230";
		cursor = "";
		cursorAim = "";
		reloadTime=0.102;
		weaponLockSystem = "8+4";
		ballisticscomputer = 16;
		weaponLockDelay = 0;
		autoreload = 1;
		multiplier = 1;
		shotFromTurret = 0;
		magazines[]={"fza_m230_300","fza_m230_1200"};
		modes[]= {"this"};
		sounds[] = {"StandardSound"};
		autofire= 1;
		useAction = 0;
		useActionTitle = "";
		recoil = "Empty";
		recoilProne = "Empty";
		dispersion = 0.006;
		aiRateOfFire = 0.102;
		aiRateOfFireDistance = 2800;
		minRange = 1200;
		minRangeProbab = 0.9;
		midRange = 1900;
		midRangeProbab = 0.9;
		maxRange = 2500;
		maxRangeProbab = 0.9;
		showToPlayer = 1;
	};		
	
	class fza_burstlimiter: fza_m230
	{	
		scope = 1;
		displayName="BURST LIMIT";
		cursor="";
		cursorAim="";
		magazines[]={"fza_burstlimit"};
	};	
		
	class fza_ma_safe: fza_m230
	{
		scope = 1;
		displayName="MASTER ARM SAFE";
		cursor="";
		cursorAim="";
		magazines[]={"fza_safe"};
	};

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////HELLFIRE/////////////////////////////////
	///////////////////////////////////////////////////////////////////////
	
	class fza_agm114_16 : MissileLauncher
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};		
		scope = 2;
		displayName="AGM-114K";
		magazines[]={"fza_agm114k_16"};
		weaponLockDelay = 1;
		weaponLockSystem = 4;
		lockedtargetsound[] = {"", 1, 1};
		lockingtargetsound[] = {"", 1, 1};
		canlock = 0;
		lockAcquire = 0;
		cursor = "EmptyCursor";
		cursoraim = "EmptyCursor";
		aiRateOfFire = 5;
		aiRateOfFireDistance = 3000;
		minRange = 2000;
		minRangeProbab = 0.5;
		midRange = 3500;
		midRangeProbab = 1.0;
		maxRange = 8000;
		maxRangeProbab = 0.8;
		reloadtime = 1;	
		modes[]	= {TopDown,LoalDistance,Cruise};
		class TopDown: Mode_SemiAuto
		{
			textureType = "topDown";
			displayName = "LOAL-Lo";

			aiRateOfFire			= 5;
			aiRateOfFireDistance	= 1000;

			maxrange				= 8000;
			maxrangeprobab			= 0.6;
			midrange				= 2000;
			midrangeprobab			= 0.9;
			minrange				= 250;
			minrangeprobab			= 0.6;
			sounds[] = {"StandardSound"};
			class StandardSound 
			{
				soundSetShot[] = {"fza_agm114_soundset"};
			};
		};
		class LoalDistance: TopDown
		{
			displayName = "LOAL-DIR";
		};
		class Cruise: TopDown
		{
			displayName = "LOAL-HI";
		};
	};
	class fza_agm114_23_8 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};	
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (2,3)";
		magazines[]={fza_agm114l_23_8,fza_agm114k_23_8,fza_agm114c_23_8,fza_agm114a_23_8,fza_agm114m_23_8,fza_agm114n_23_8};	
	};
	class fza_agm114_14_8 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (1,4)";
		magazines[]={fza_agm114l_14_8,fza_agm114k_14_8,fza_agm114c_14_8,fza_agm114a_14_8,fza_agm114m_14_8,fza_agm114n_14_8};
	};
	///////1///////////////////////////////
	class fza_agm114_1_4 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (1)";
		magazines[]={fza_agm114l_1_4,fza_agm114k_1_4,fza_agm114c_1_4,fza_agm114a_1_4,fza_agm114m_1_4,fza_agm114n_1_4};
	};
	class fza_agm114_1_ul : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (1,L1)";
		magazines[]={fza_agm114l_1_ul,fza_agm114k_1_ul,fza_agm114c_1_ul,fza_agm114a_1_ul,fza_agm114m_1_ul,fza_agm114n_1_ul};
	};
	class fza_agm114_1_ur : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (1,R1)";
		magazines[]={fza_agm114l_1_ur,fza_agm114k_1_ur,fza_agm114c_1_ur,fza_agm114a_1_ur,fza_agm114m_1_ur,fza_agm114n_1_ur};
	};
	class fza_agm114_1_ll : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (1,L2)";
		magazines[]={fza_agm114l_1_ll,fza_agm114k_1_ll,fza_agm114c_1_ll,fza_agm114a_1_ll,fza_agm114m_1_ll,fza_agm114n_1_ll};
	};
	class fza_agm114_1_lr : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (1,R2)";
		magazines[]={fza_agm114l_1_lr,fza_agm114k_1_lr,fza_agm114c_1_lr,fza_agm114a_1_lr,fza_agm114m_1_lr,fza_agm114n_1_lr};
	};
	/////////2//////////////////////////
	class fza_agm114_2_4 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (2)";
		magazines[]={fza_agm114l_2_4,fza_agm114k_2_4,fza_agm114c_2_4,fza_agm114a_2_4,fza_agm114m_2_4,fza_agm114n_2_4};
	};
	class fza_agm114_2_ul : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (2,L1)";
		magazines[]={fza_agm114l_2_ul,fza_agm114k_2_ul,fza_agm114c_2_ul,fza_agm114a_2_ul,fza_agm114m_2_ul,fza_agm114n_2_ul};
	};
	class fza_agm114_2_ur : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (2,R1)";
		magazines[]={fza_agm114l_2_ur,fza_agm114k_2_ur,fza_agm114c_2_ur,fza_agm114a_2_ur,fza_agm114m_2_ur,fza_agm114n_2_ur};
	};
	class fza_agm114_2_ll : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (2,L2)";
		magazines[]={fza_agm114l_2_ll,fza_agm114k_2_ll,fza_agm114c_2_ll,fza_agm114a_2_ll,fza_agm114m_2_ll,fza_agm114n_2_ll};
	};
	class fza_agm114_2_lr : fza_agm114_16
	{		
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (2,R2)";
		magazines[]={fza_agm114l_2_lr,fza_agm114k_2_lr,fza_agm114c_2_lr,fza_agm114a_2_lr,fza_agm114m_2_lr,fza_agm114n_2_lr};	
	};
	/////////3/////////////////////////////
	class fza_agm114_3_4 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (3)";
		magazines[]={fza_agm114l_3_4,fza_agm114k_3_4,fza_agm114c_3_4,fza_agm114a_3_4,fza_agm114m_3_4,fza_agm114n_3_4};
	};
	class fza_agm114_3_ul : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (3,L1)";
		magazines[]={fza_agm114l_3_ul,fza_agm114k_3_ul,fza_agm114c_3_ul,fza_agm114a_3_ul,fza_agm114m_3_ul,fza_agm114n_3_ul};
	};
	class fza_agm114_3_ur : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};			
		displayName="AGM-114 (3,R1)";
		magazines[]={fza_agm114l_3_ur,fza_agm114k_3_ur,fza_agm114c_3_ur,fza_agm114a_3_ur,fza_agm114m_3_ur,fza_agm114n_3_ur};
	};
	class fza_agm114_3_ll : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (3,L2)";
		magazines[]={fza_agm114l_3_ll,fza_agm114k_3_ll,fza_agm114c_3_ll,fza_agm114a_3_ll,fza_agm114m_3_ll,fza_agm114n_3_ll};
	};
	class fza_agm114_3_lr : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (3,R2)";
		magazines[]={fza_agm114l_3_lr,fza_agm114k_3_lr,fza_agm114c_3_lr,fza_agm114a_3_lr,fza_agm114m_3_lr,fza_agm114n_3_lr};
	};
	/////////4//////////////////////////////
	class fza_agm114_4_4 : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (4)";
		magazines[]={fza_agm114l_4_4,fza_agm114k_4_4,fza_agm114c_4_4,fza_agm114a_4_4,fza_agm114m_4_4,fza_agm114n_4_4};
	};
	class fza_agm114_4_ul : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (4,L1)";
		magazines[]={fza_agm114l_4_ul,fza_agm114k_4_ul,fza_agm114c_4_ul,fza_agm114a_4_ul,fza_agm114m_4_ul,fza_agm114n_4_ul};
	};
	class fza_agm114_4_ur : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};
		displayName="AGM-114 (4,R1)";
		magazines[]={fza_agm114l_4_ur,fza_agm114k_4_ur,fza_agm114c_4_ur,fza_agm114a_4_ur,fza_agm114m_4_ur,fza_agm114n_4_ur};	
	};
	class fza_agm114_4_ll : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
		displayName="AGM-114 (4,L2)";
		magazines[]={fza_agm114l_4_ll,fza_agm114k_4_ll,fza_agm114c_4_ll,fza_agm114a_4_ll,fza_agm114m_4_ll,fza_agm114n_4_ll};
	};
	class fza_agm114_4_lr : fza_agm114_16
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_agm114_soundset"};
		};
		sounds[] = {"StandardSound"};	
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
		cursor = "EmptyCursor";
		cursoraim = "EmptyCursor";
		burst=1;
		magazines[]={"fza_m261_m151_76"};
		modes[]= {"Single"};
		class Single: LauncherCore
		{
			class StandardSound 
			{
				soundSetShot[] = {"fza_m261_soundset"};
			};	
			showToPlayer = 1;			
			displayName="M261";
			multiplier=1;
			burst=1;
			dispersion = 0.010;
			sounds[] = {"StandardSound"};
			soundburst= 1;
			soundContinuous= 0;
			reloadTime=0.01;
			autofire=0;
			useAction = 0;
			useActionTitle = "";
			minRange = 200;
			minRangeProbab = 0.041;
			midRange = 600;
			midRangeProbab = 0.21;
			maxRange = 2500;
			maxRangeProbab = 0.11;
			cursor = "EmptyCursor";
			cursoraim = "EmptyCursor";
		};
	};
	
	////////////////14/////////////////
	class fza_m261_14: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (1,4)";
		magazines[]={fza_m261_m151_14_38,fza_m261_m229_14_38,fza_m261_m261_14_38,fza_m261_m255_14_38,fza_m261_m257_14_38};
	};
	class fza_m261_14_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 A (1,4)";
		magazines[]={fza_m261_m151_14_zone1_12,fza_m261_m229_14_zone1_12,fza_m261_m261_14_zone1_12,fza_m261_m255_14_zone1_12,fza_m261_m257_14_zone1_12};
	};
	class fza_m261_14_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 B (1,4)";
		magazines[]={fza_m261_m151_14_zone2_4,fza_m261_m229_14_zone2_4,fza_m261_m261_14_zone2_4,fza_m261_m255_14_zone2_4,fza_m261_m257_14_zone2_4};
	};
	class fza_m261_14_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 E (1,4)";
		magazines[]={fza_m261_m151_14_zone3_3,fza_m261_m229_14_zone3_3,fza_m261_m261_14_zone3_3,fza_m261_m255_14_zone3_3,fza_m261_m257_14_zone3_3};
	};
	//////////////23///////////////////
	class fza_m261_23: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (2,3)";
		magazines[]={fza_m261_m151_23_38,fza_m261_m229_23_38,fza_m261_m261_23_38,fza_m261_m255_23_38,fza_m261_m257_23_38};
	};
	class fza_m261_23_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		magazines[]={fza_m261_m151_23_zone1_12,fza_m261_m229_23_zone1_12,fza_m261_m261_23_zone1_12,fza_m261_m255_23_zone1_12,fza_m261_m257_23_zone1_12};
	};
	class fza_m261_23_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		magazines[]={fza_m261_m151_23_zone2_4,fza_m261_m229_23_zone2_4,fza_m261_m261_23_zone2_4,fza_m261_m255_23_zone2_4,fza_m261_m257_23_zone2_4};
	};
	class fza_m261_23_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		magazines[]={fza_m261_m151_23_zone3_3,fza_m261_m229_23_zone3_3,fza_m261_m261_23_zone3_3,fza_m261_m255_23_zone3_3,fza_m261_m257_23_zone3_3};
	};
	/////////////indi///////////////
	class fza_m261_1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (1)";
		magazines[]={fza_m261_m151_1_19,fza_m261_m229_1_19,fza_m261_m261_1_19,fza_m261_m255_1_19,fza_m261_m257_1_19};
	};
	class fza_m261_1_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 A (1)";
		magazines[]={fza_m261_m151_1_zone1_12,fza_m261_m229_1_zone1_12,fza_m261_m261_1_zone1_12,fza_m261_m255_1_zone1_12,fza_m261_m257_1_zone1_12};
	};
	class fza_m261_1_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 B (1)";
		magazines[]={fza_m261_m151_1_zone2_4,fza_m261_m229_1_zone2_4,fza_m261_m261_1_zone2_4,fza_m261_m255_1_zone2_4,fza_m261_m257_1_zone2_4};
	};
	class fza_m261_1_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 E (1)";
		magazines[]={fza_m261_m151_1_zone3_3,fza_m261_m229_1_zone3_3,fza_m261_m261_1_zone3_3,fza_m261_m255_1_zone3_3,fza_m261_m257_1_zone3_3};
	};
	/////////////////////////////////////
	class fza_m261_2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (2)";
		magazines[]={fza_m261_m151_2_19,fza_m261_m229_2_19,fza_m261_m261_2_19,fza_m261_m255_2_19,fza_m261_m257_2_19};
	};
	class fza_m261_2_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 C (2)";
		magazines[]={fza_m261_m151_2_zone1_12,fza_m261_m229_2_zone1_12,fza_m261_m261_2_zone1_12,fza_m261_m255_2_zone1_12,fza_m261_m257_2_zone1_12};
	};
	class fza_m261_2_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 D (2)";
		magazines[]={fza_m261_m151_2_zone2_4,fza_m261_m229_2_zone2_4,fza_m261_m261_2_zone2_4,fza_m261_m255_2_zone2_4,fza_m261_m257_2_zone2_4};
	};
	class fza_m261_2_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 E (2)";
		magazines[]={fza_m261_m151_2_zone3_3,fza_m261_m229_2_zone3_3,fza_m261_m261_2_zone3_3,fza_m261_m255_2_zone3_3,fza_m261_m257_2_zone3_3};
	};
	///////////////////////////////////////
	class fza_m261_3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (3)";
		magazines[]={fza_m261_m151_3_19,fza_m261_m229_3_19,fza_m261_m261_3_19,fza_m261_m255_3_19,fza_m261_m257_3_19};
	};
	class fza_m261_3_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 C (3)";
		magazines[]={fza_m261_m151_3_zone1_12,fza_m261_m229_3_zone1_12,fza_m261_m261_3_zone1_12,fza_m261_m255_3_zone1_12,fza_m261_m257_3_zone1_12};
	};
	class fza_m261_3_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 D (3)";
		magazines[]={fza_m261_m151_3_zone2_4,fza_m261_m229_3_zone2_4,fza_m261_m261_3_zone2_4,fza_m261_m255_3_zone2_4,fza_m261_m257_3_zone2_4};
	};
	class fza_m261_3_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 E (3)";
		magazines[]={fza_m261_m151_3_zone3_3,fza_m261_m229_3_zone3_3,fza_m261_m261_3_zone3_3,fza_m261_m255_3_zone3_3,fza_m261_m257_3_zone3_3};
	};
	/////////////////////////////////////
	class fza_m261_4: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 (4)";
		magazines[]={fza_m261_m151_4_19,fza_m261_m229_4_19,fza_m261_m261_4_19,fza_m261_m255_4_19,fza_m261_m257_4_19};
	};
	class fza_m261_4_zone1: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};			
		displayName="M261 A (4)";
		magazines[]={fza_m261_m151_4_zone1_12,fza_m261_m229_4_zone1_12,fza_m261_m261_4_zone1_12,fza_m261_m255_4_zone1_12,fza_m261_m257_4_zone1_12};
	};
	class fza_m261_4_zone2: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 B (4)";
		magazines[]={fza_m261_m151_4_zone2_4,fza_m261_m229_4_zone2_4,fza_m261_m261_4_zone2_4,fza_m261_m255_4_zone2_4,fza_m261_m257_4_zone2_4};
	};
	class fza_m261_4_zone3: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 E (4)";
		magazines[]={fza_m261_m151_4_zone3_3,fza_m261_m229_4_zone3_3,fza_m261_m261_4_zone3_3,fza_m261_m255_4_zone3_3,fza_m261_m257_4_zone3_3};
	};
	//////////////////ZONES/////////////////
	///////1 and 4 combined zones//////
	class fza_m261_14_zoneA: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 A (1,4)";
		magazines[]={fza_m261_m151_14_zoneA,fza_m261_m229_14_zoneA,fza_m261_m261_14_zoneA,fza_m261_m255_14_zoneA,fza_m261_m257_14_zoneA};
	};
	class fza_m261_14_zoneB: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};				
		displayName="M261 B (1,4)";
		magazines[]={fza_m261_m151_14_zoneB,fza_m261_m229_14_zoneB,fza_m261_m261_14_zoneB,fza_m261_m255_14_zoneB,fza_m261_m257_14_zoneB};
	};
	class fza_m261_14_zoneE: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};		
		displayName="M261 E (1,4)";
		magazines[]={fza_m261_m151_14_zoneE,fza_m261_m229_14_zoneE,fza_m261_m261_14_zoneE,fza_m261_m255_14_zoneE,fza_m261_m257_14_zoneE};
	};
	/////2 and 3 combined zones///////
	class fza_m261_23_zoneC: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};	
		displayName="M261 C (2,3)";
		magazines[]={fza_m261_m151_23_zoneC,fza_m261_m229_23_zoneC,fza_m261_m261_23_zoneC,fza_m261_m255_23_zoneC,fza_m261_m257_23_zoneC};
	};
	class fza_m261_23_zoneD: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};			
		displayName="M261 D (2,3)";
		magazines[]={fza_m261_m151_23_zoneD,fza_m261_m229_23_zoneD,fza_m261_m261_23_zoneD,fza_m261_m255_23_zoneD,fza_m261_m257_23_zoneD};
	};
	class fza_m261_23_zoneE: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};			
		displayName="M261 E (2,3)";
		magazines[]={fza_m261_m151_23_zoneE,fza_m261_m229_23_zoneE,fza_m261_m261_23_zoneE,fza_m261_m255_23_zoneE,fza_m261_m257_23_zoneE};
	};
	/////zone E combined//////////
	class fza_m261_1234_zoneE: fza_m261_76
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_m261_soundset"};
		};	
		sounds[] = {"StandardSound"};		
		displayName="M261 E";
		magazines[]={fza_m261_m151_1234_zoneE,fza_m261_m229_1234_zoneE,fza_m261_m261_1234_zoneE,fza_m261_m255_1234_zoneE,fza_m261_m257_1234_zoneE};
	};

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////STINGERS/////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_atas_2: MissileLauncher
	{
		class StandardSound 
		{
			soundSetShot[] = {"fza_atas_soundset"};
		};		
		airateoffire = 5;
		airateoffiredistance = 2500;
		cmimmunity = 0.8;
		canlock = 0;
		cursor = "";
		cursoraim = "";
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
		weaponlockdelay = 0;
		weaponlocksystem = "1+2+8";
		lockedtargetsound[] = {"", 1, 1};
		lockingtargetsound[] = {"", 1, 1};
	};
};