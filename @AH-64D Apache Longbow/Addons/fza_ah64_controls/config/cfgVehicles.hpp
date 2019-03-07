class CfgVehicles
{
	class All;
	class AllVehicles : All
	{
		class NewTurret;
	};
	class Air : AllVehicles {};
	class Helicopter_Base_F : Air {};
	class fza_ah64base: Helicopter_Base_F
	{
    class itc_air {
	    class rover {
	        capable = 1;
	        frequency_default = 5784;
	    };
	    targeting_user = "gunner";
	    hmd = 1;
	    tgp = 1;
	    wso = 0;
      mfdApps[] = {"STAT","OPT"};
      systems[] = {"UFC","MFD","MFD_R","ROVER","ACMI"};
	    mfdType = "classic";
      //mfdType = "touch";
    };
		side=1;
		scope=0;
		displayName="AH-64D";
		driverlefthandanimname = "p_collective";
		driverleftleganimname = "pedalL";
		driverrighthandanimname = "p_cyclic";
		driverrightleganimname = "pedalR";
		simulation=helicopterRTD;
		startDuration=80;
		mainBladeRadius = 7.3;
		maxGForce = 9;
		maxFordingDepth = 0.55;
		liftForceCoef = 1.0;
		bodyFrictionCoef = 1.0;
		cyclicAsideForceCoef = 1.0;
		cyclicForwardForceCoef = 1.0;
		backRotorForceCoef = 1.0;
		driveOnComponent[] = {"Wheels"};
		extCameraPosition[] = {0,0,-20};
		radartype = 4;
		radarTargetSize = 0.700000;
		irTargetSize = 0.800000;
		//TKOH ENTRIES//
		enableCopilot = true;
		usePreciseGetInAction = 1;
		preciseGetInOut = 1;
		getInRadius = 1.500000;
		getInAction = "pilot_Heli_Light_02_Enter";
		getOutAction = "GetOutHigh"; 
		cargoGetInAction[] = {"GetInHigh","GetInHigh"};
		cargoGetOutAction[] = {"GetOutHigh","GetOutHigh"};
		//TKOH END//
		_mainbladecenter = "rotor_center";
		mainbladecenter = "rotor_center";
		fuelCapacity = 1423;
		fuelconsumptionrate = 0.138;
		transportMaxWeapons = 3;
		transportMaxMagazines = 10;
		maxSpeed = 298;
		driverCanSee = 2+4+8;
		gunnerCanSee = 2+4+8;
		unitinfotype="RscUnitInfoNoHUD";
		destrtype = "DestructWreck";
		//RscUnitInfoSoldier
		hideUnitInfo = 0;
		insideSoundCoef = 0.5;
		occludeSoundsWhenIn = 0.562341;
		obstructSoundsWhenIn = 0.316228;
		attenuationEffectType = "HeliAttenuation";
		emptySound[] = {"", 0, 1};
		soundGeneralCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_1", 1.000000, 1, 10};
		soundGeneralCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_2", 1.000000, 1, 10};
		soundGeneralCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_default_int_3", 1.000000, 1, 10};
		soundCrashes[] = {"soundGeneralCollision1", 0.330000, "soundGeneralCollision2", 0.330000, "soundGeneralCollision3", 0.330000};
		soundLandCrashes[] = {"emptySound", 0};
		soundBuildingCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
		soundArmorCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
		soundWoodCrash[] = {"soundGeneralCollision1", 1, "soundGeneralCollision2", 1, "soundGeneralCollision3", 1};
		soundBushCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_1", 1.000000, 1, 10};
		soundBushCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_2", 1.000000, 1, 10};
		soundBushCollision3[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_bush_int_3", 1.000000, 1, 10};
		soundBushCrash[] = {"soundBushCollision1", 0.330000, "soundBushCollision2", 0.330000, "soundBushCollision3", 0.330000};
		soundWaterCollision1[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_1", 1.000000, 1, 10};
		soundWaterCollision2[] = {"A3\Sounds_F\vehicles\crashes\helis\Heli_coll_water_ext_2", 1.000000, 1, 10};
		soundWaterCrashes[] = {"soundWaterCollision1", 0.500000, "soundWaterCollision2", 0.500000};
		soundDammage[] = {"\fza_ah64_US\audio\helibasiccrash.ogg", 3.162278, 1, 10};
		soundgetin[] = {"A3\Sounds_F\vehicles\air\noises\heli_get_in2",1,1,1};
		soundgetout[] = {"A3\Sounds_F\vehicles\air\noises\heli_get_out2",1,1,1};
		soundEngineOffExt[] = {"fza_ah64_us\audio\Ext_Off.ogg",1,0.6,600};
		soundEngineOffInt[] = {"fza_ah64_us\audio\Int_Off.ogg",1,0.6};
		soundEngineOnExt[] = {"fza_ah64_us\audio\Ext_Start.ogg",1,0.6,600};
		soundEngineOnInt[] = {"fza_ah64_us\audio\Int_Start.ogg",0.33,0.6};
		rotorDamageInt[] = {"\fza_ah64_US\audio\heli_damage_rotor_int.ogg", 1.000000, 1.000000};
		rotorDamageOut[] = {"\fza_ah64_US\audio\heli_damage_rotor_ext.ogg", 2.511886, 1.000000, 10};
		rotorDamage[] = {"rotorDamageInt", "rotorDamageOut"};
		tailDamageInt[] = {"\fza_ah64_US\audio\heli_damage_tail.ogg", 1.000000, 1.000000};
		tailDamageOut[] = {"\fza_ah64_US\audio\heli_damage_tail.ogg", 1.000000, 1.000000, 10};
		tailDamage[] = {"tailDamageInt", "tailDamageOut"};
		landingSoundInt0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.000000, 1.000000, 10};
		landingSoundInt1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_int1_open", 1.000000, 1.000000, 10};
		landingSoundInt[] = {"landingSoundInt0", 0.500000, "landingSoundInt1", 0.500000};
		landingSoundOut0[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.778279, 1.000000, 10};
		landingSoundOut1[] = {"A3\Sounds_F\vehicles\air\noises\landing_skids_ext1", 1.778279, 1.000000, 10};
		landingSoundOut[] = {"landingSoundOut0", 0.500000, "landingSoundOut1", 0.500000};
		soundenviron[] = {"", 1, 1};
		author="Franze, Nodunit, Sacha 'Voodoo' Oropeza, Zeitsev & Community";
		class RotorLibHelicopterProperties
		{
			autoHoverCorrection[] = {1.39,2.96,0};  // p - more forward, r - more right
			defaultCollective = 0.675;
			horizontalWingsAngleCollMax = 0;
			horizontalWingsAngleCollMin = 0;
			maxHorizontalStabilizerLeftStress = 100000;
			maxHorizontalStabilizerRightStress = 100000;
			maxMainRotorStress = 150000;
			maxTailRotorStress = 30000;
			maxTorque = 4800;
			stressDamagePerSec = 0.003333;
			maxVerticalStabilizerStress = 100000;
			retreatBladeStallWarningSpeed = 92.778;
			RTDconfig = "fza_ah64_controls\tkoh\fza_ah64d_blockii_exp.xml";
		};
		class RenderTargets
		{
				/*
				class cockpitmirror1
				{
					renderTarget = "fza_ah64_cpitmirror1";
					class View01
					{
						pointPosition = "mirror_cpit1";
						pointDirection = "mirror_cpit2";
						renderQuality = 0;
						renderVisionMode = 4; //MIRROR
						fov = 0.5;
					};
				};
				*/
				/*
				class driverpnvs1
				{
					renderTarget = "fza_ah64_pnvscam1";
					class View01
					{
						pointPosition = "driverview";
						pointDirection = "driverview_dir";
						renderQuality = 0;
						renderVisionMode = 2; //FLIR
						fov = 0.18;
					};
				};
				*/
				class driverpnvs2
				{
					renderTarget = "fza_ah64_pnvscam2";
					class View01
					{
						pointPosition = "driverview";
						pointDirection = "driverview_dir";
						renderQuality = 0;
						renderVisionMode = 0; //HDR
						fov = 0.18;
					};
				};
				class driverpnvs3
				{
					renderTarget = "fza_ah64_pnvscam3";
					class View01
					{
						pointPosition = "driverview";
						pointDirection = "driverview_dir";
						renderQuality = 0;
						renderVisionMode = 1; //NVG
						fov = 0.18;
					};
				};
									/*
					//these sources are inefficient and difficult to work with//
					//TADS/FLIR//
					class gunnertads1
					{
						renderTarget = "fza_ah64_tadscam1";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 2;
							fov = 0.05;
						};
					};
					class gunnertads2
					{
						renderTarget = "fza_ah64_tadscam2";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 2;
							fov = 0.1;
						};
					};
					class gunnertads3
					{
						renderTarget = "fza_ah64_tadscam3";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 2;
							fov = 0.01;
						};
					};
					//TADS/DTV//
					class gunnertads4
					{
						renderTarget = "fza_ah64_tadscam4";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 0;
							fov = 0.6;
						};
					};
					class gunnertads5
					{
						renderTarget = "fza_ah64_tadscam5";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 0;
							fov = 0.1;
						};
					};
					class gunnertads6
					{
						renderTarget = "fza_ah64_tadscam6";
						class View01
						{
							pointPosition = "gunnerview";
							pointDirection = "gunnerview_dir";
							renderQuality = 0;
							renderVisionMode = 0;
							fov = 0.01;
						};
					};
					*/
		};
		class Exhausts
		{
				class Exhaust1
				{
					direction = "exhaust1_dir";
					effect = "ExhaustEffectHeli";
					position = "exhaust1";
				};
				class Exhaust2
				{
					direction = "exhaust2_dir";
					effect = "ExhaustEffectHeli";
					position = "exhaust2";
				};
		};
		class Sounds
		{
				class EngineExt
				{
					sound[] = {"\fza_ah64_US\audio\Engine_Far_bak.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed";
					volume = "camPos*((rotorSpeed-0.72)*4)";
				};
				class RotorExt
				{
					sound[] = {"\fza_ah64_US\audio\ah64_rotor_ext2.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class EngineClose
				{
					sound[] = {"\fza_ah64_US\audio\Engine_Close.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed";
					volume = "camPos*((rotorSpeed-0.72)*4)";
				};
				class RotorClose
				{
					sound[] = {"\fza_ah64_US\audio\Rotor_Close.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class RotorSwist 
				{
					sound[] = {"A3\Sounds_F\vehicles\air\Heli_Attack_01\swist", 0.500000, 1, 300};
					frequency = 1;
					volume = "camPos * (rotorThrust factor [0.7, 0.9])";
				};					
				class TailRotor
				{
					cone[] = {3, 1.57, 3, 1.57};
					frequency = "rotorSpeed";
					sound[] = {"\fza_ah64_US\audio\ah64_trotor_ext1.ogg", 1, 1, 500};
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class Distance
				{
					sound[]  = {"\fza_ah64_US\audio\Engine_Far.ogg", 3, 1, 3000};
					frequency = "rotorSpeed";
					volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
				};
				class FarDistance
				{
					sound[]  = {"\fza_ah64_US\audio\Rotor_Far.ogg", 3, 1, 3000};
					frequency = "rotorSpeed";
					volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
				};
				class EngineInt
				{
					sound[] = {"\fza_ah64_us\audio\ah64_engine_int1.ogg", 1, 1.000000};
					frequency = "rotorSpeed";
					volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
				};
				class RotorInt
				{
					sound[] = {"\fza_ah64_us\audio\ah64_rotor_int1.ogg", 1, 1};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "(1-camPos)*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class TransmissionDamageExt_phase1
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageExt_phase2
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageInt_phase1
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageInt_phase2
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class damageAlarmInt
				{
					sound[] = {"\fza_ah64_us\audio\betty\bt_rotorrpm.ogg", 1, 1.000000};
					frequency = 1;
					volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
				};
				/*class damageAlarmExt
				{
					sound[] = {"\fza_ah64_us\audio\betty\bt_rotorrpm.ogg", 0, 1.000000, 20};
					frequency = 1;
					volume = "engineOn * camPos * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0, 0.001])";
				};*/
				class rotorLowAlarmInt
				{
					sound[] = {"\fza_ah64_us\audio\betty\bt_rotorrpm_low.ogg", 1, 1.000000};
					frequency = 1;
					volume = "engineOn * (1 - camPos) * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
				};
				/*class rotorLowAlarmExt
				{
					sound[] = {"\fza_ah64_us\audio\betty\bt_rotorrpm_low.ogg", 0, 1.000000, 20};
					frequency = 1;
					volume = "engineOn * camPos * (rotorSpeed factor [0.9, 0.8999]) * (rotorSpeed factor [-0.5, 1]) * (speed factor [3, 3.01])";
				};*/
				class scrubLandInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\wheelsInt", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "2 * (1-camPos) * (scrubLand factor[0.02, 0.05]) * (1 - (lateralMovement factor [0.7,1]))";
				};
				class scrubLandExt
				{
					sound[] = {"A3\Sounds_F\dummysound", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "camPos * (scrubLand factor[0.02, 0.05]) * (1 - (lateralMovement factor [0.7,1]))";
				};
				class scrubBuildingInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\wheelsInt", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "(1-camPos) * (scrubBuilding factor[0.02, 0.05]) * (1 - (lateralMovement factor [0.7,1]))";
				};
				class scrubBuildingExt
				{
					sound[] = {"A3\Sounds_F\dummysound", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "camPos * (scrubBuilding factor[0.02, 0.05])";
				};
				class scrubTreeInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeInt", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "(1 - camPos) * ((scrubTree) factor [0, 0.01])";
				};
				class scrubTreeExt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\scrubTreeExt", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "camPos * ((scrubTree) factor [0, 0.01])";
				};
				class RainExt
				{
					sound[] = {"\fza_ah64_us\audio\rain1_ext.ogg", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "camPos * (rain - rotorSpeed/2) * 2";
				};
				class RainInt
				{
					sound[] = {"\fza_ah64_us\audio\rain1_int_open.ogg", 1.000000, 1.000000, 100};
					frequency = 1;
					volume = "(1-camPos)*(rain - rotorSpeed/2)*2";
				};
				class SlingLoadDownExt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownEXT", 1.258925, 1.000000, 500};
					frequency = 1;
					volume = "camPos*(slingLoadActive factor [0,-1])";
				};
				class SlingLoadUpExt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineupEXT", 1.258925, 1.000000, 500};
					frequency = 1;
					volume = "camPos*(slingLoadActive factor [0,1])";
				};
				class SlingLoadDownInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineDownINT", 1.000000, 1.000000, 500};
					frequency = 1;
					volume = "(1-camPos)*(slingLoadActive factor [0,-1])";
				};
				class SlingLoadUpInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\SL_engineUpINT", 1.000000, 1.000000, 500};
					frequency = 1;
					volume = "(1-camPos)*(slingLoadActive factor [0,1])";
				};
				class WindInt
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\wind_closed", 0.398107, 1.000000, 50};
					frequency = 1;
					volume = "(1-camPos)*(speed factor[5, 50])*(speed factor[5, 50])";
				};
				class GStress
				{
					sound[] = {"A3\Sounds_F\vehicles\noises\vehicle_stress2b", 0.354813, 1.000000, 50};
					frequency = 1;
					volume = "engineOn * (1-camPos) * ((gmeterZ factor[1.5, 2.5]) + (gmeterZ factor[0.5, -0.5]))";
				};
		};
			
		class SoundsExt
		{
			class SoundEvents {};
			class Sounds
			{
				class EngineExt
				{
					sound[] = {"\fza_ah64_US\audio\Engine_Far_bak.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed";
					volume = "camPos*((rotorSpeed-0.72)*4)";
				};
				class RotorExt
				{
					sound[] = {"\fza_ah64_US\audio\ah64_rotor_ext2.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class EngineClose
				{
					sound[] = {"\fza_ah64_US\audio\Engine_Close.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed";
					volume = "camPos*((rotorSpeed-0.72)*4)";
				};
				class RotorClose
				{
					sound[] = {"\fza_ah64_US\audio\Rotor_Close.ogg", 1, 1.000000, 800};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class RotorSwist 
				{
					sound[] = {"A3\Sounds_F\vehicles\air\Heli_Attack_01\swist", 0.500000, 1, 300};
					frequency = 1;
					volume = "camPos * (rotorThrust factor [0.7, 0.9])";
				};					
				class TailRotor
				{
					cone[] = {3, 1.57, 3, 1.57};
					frequency = "rotorSpeed";
					sound[] = {"\fza_ah64_US\audio\ah64_trotor_ext1.ogg", 1, 1, 500};
					volume = "camPos*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class Distance
				{
					sound[]  = {"\fza_ah64_US\audio\Engine_Far.ogg", 3, 1, 3000};
					frequency = "rotorSpeed";
					volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
				};
				class FarDistance
				{
					sound[]  = {"\fza_ah64_US\audio\Rotor_Far.ogg", 3, 1, 3000};
					frequency = "rotorSpeed";
					volume = "2 * camPos * (0 max (rotorSpeed-0.4))";
				};
				class EngineInt
				{
					sound[] = {"\fza_ah64_us\audio\ah64_engine_int1.ogg", 1, 1.000000};
					frequency = "rotorSpeed";
					volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
				};
				class RotorInt
				{
					sound[] = {"\fza_ah64_us\audio\ah64_rotor_int1.ogg", 1, 1};
					frequency = "rotorSpeed * (1 - rotorThrust/5)";
					volume = "(1-camPos)*(0 max (rotorSpeed-0.1))*(1 + rotorThrust)";
				};
				class TransmissionDamageExt_phase1
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_1", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "camPos * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageExt_phase2
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_ext_2", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "camPos * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageInt_phase1
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_1", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "(1 - camPos) * (transmissionDamage factor [0.3, 0.35]) * (transmissionDamage factor [0.5, 0.45]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class TransmissionDamageInt_phase2
				{
					sound[] = {"A3\Sounds_F\vehicles\air\noises\heli_damage_transmission_int_2", 1.000000, 1.000000, 150};
					frequency = "0.66 + rotorSpeed / 3";
					volume = "(1 - camPos) * (transmissionDamage factor [0.45, 0.5]) * (rotorSpeed factor [0.2, 0.5])";
				};
				class damageAlarmInt
				{
					sound[] = {"\fza_ah64_us\audio\betty\bt_rotorrpm.ogg", 1, 1.000000};
					frequency = 1;
					volume = "engineOn * (1 - camPos) * ( 1 - ((transmissionDamage factor [0.61, 0.60]) * (motorDamage factor [0.61, 0.60]) * (rotorDamage factor [0.51, 0.50]))) * (rotorSpeed factor [0.0, 0.001])";
				};
			};
		};	
		class HitPoints
		{
			class HitHull
			{
				armor = 999;
				material = 51;
				name = "fuselage";
				passthrough = 1;
				visual = "fuselage";
				explosionShielding = 3;
				convexComponent = "fuselage";
				radius = 0.01;
				depends = "Total";
			};
			class HitAvionics
			{
				armor = 2;
				material = 51;
				name = "cockpit";
				passthrough = 0.5;
				visual = "cockpit";
				explosionShielding = 1;
				convexComponent = "cockpit";
				minimalHit = 0.05;
				radius = 0.4;
			};
			/*
			class HitFuselage
			{
				armor = 1;
				material = 51;
				name = "fuselage";
				passthrough = 1;
				visual = "fuselage";
			};
			*/
			class HitTransmission
			{
				armor = 0.8;
				material = -1;
				name = "trans";
				passthrough = 0.25;
			};
			class HitEngine
			{
				armor = 0.8;
				material = 51;
				name = "trans";
				passthrough = 0.25;
				visual = "trans";
				explosionShielding = 3;
				convexComponent = "trans";
				minimalHit = 0.1;
				radius = 0.4;
				depends = "0.5 * (HitEngine1 + HitEngine2)";
			};
			class HitEngine1
			{
				armor = 0.7;
				material = 51;
				name = "leng";
				passthrough = 1;
				visual = "leng";
				explosionShielding = 3;
				convexComponent = "leng";
				minimalHit = 0.1;
				radius = 0.4;
			};
			class HitEngine2
			{
				armor = 0.7;
				material = 51;
				name = "reng";
				passthrough = 1;
				visual = "reng";
				explosionShielding = 3;
				convexComponent = "reng";
				minimalHit = 0.1;
				radius = 0.4;
			};
			class Hitlfab
			{
				armor = 0.5;
				material = 51;
				name = "lfab";
				passthrough = 0.1;
				visual = "lfab";
			};
			class Hitrfab
			{
				armor = 0.5;
				material = 51;
				name = "rfab";
				passthrough = 0.1;
				visual = "rfab";
			};
			class HitVRotor
			{
				armor = 3;
				material = 51;
				name = "mala vrtule";
				passthrough = 0.1;
				visual = "mala vrtule";
				explosionShielding = 6;
				convexComponent = "mala vrtule";
				minimalHit = 0.05;
				radius = 0.06;
			};
			class HitHRotor
			{
				armor = 4;
				material = 51;
				name = "velka vrtule";
				passthrough = 0.1;
				visual = "velka vrtule";
				explosionShielding = 2.5;
				convexComponent = "velka vrtule";
				minimalHit = 0.09;
				radius = 0.4;
			};
			class Hitlwing
			{
				armor = 0.75;
				material = 51;
				name = "lwing";
				passthrough = 0.1;
				visual = "lwing";
			};
			class Hitrwing
			{
				armor = 0.75;
				material = 51;
				name = "rwing";
				passthrough = 0.1;
				visual = "rwing";
			};
			class HitTail
			{
				armor = 0.75;
				material = 51;
				name = "tailboom";
				passthrough = 0.5;
				visual = "tailboom";
			};
			class HitVTail
			{
				armor = 0.2;
				material = 51;
				name = "vtail";
				passthrough = 0.1;
				visual = "vtail";
			};
			class HitHTail
			{
				armor = 0.2;
				material = 51;
				name = "hstab";
				passthrough = 0.1;
				visual = "hstab";
			};
			class HitPNVS
			{
				armor = 0.25;
				material = 51;
				name = "pnvs";
				passthrough = 0.1;
				visual = "pnvs";
			};
			class Hittads
			{
				armor = 0.25;
				material = 51;
				name = "tads";
				passthrough = 0.1;
				visual = "tads";
			};
			class Hittadstur
			{
				armor = 0.25;
				material = 51;
				name = "tads_tur";
				passthrough = 0.1;
				visual = "tads_tur";
			};
			class Hitradar
			{
				armor = 0.05;
				material = 51;
				name = "radar";
				passthrough = 0.1;
				visual = "radar";
			};
			class Hitotocvez
			{
				armor = 0.25;
				material = 51;
				name = "otocvez";
				passthrough = 0.1;
				visual = "otocvez";
			};
			class Hitotochlaven
			{
				armor = 0.25;
				material = 51;
				name = "otochlaven";
				passthrough = 0.1;
				visual = "otochlaven";
			};
			class Hitmaingear
			{
				armor = 0.2;
				material = 51;
				name = "maingear";
				passthrough = 0.1;
				visual = "maingear";
			};
			class Hittwsus
			{
				armor = 0.2;
				material = 51;
				name = "twsus";
				passthrough = 0.1;
				visual = "twsus";
			};
			class Hitpylon1
			{
				armor = 0.2;
				material = 51;
				name = "pylon1";
				passthrough = 0.1;
				visual = "pylon1";
			};
			class Hitpylon2
			{
				armor = 0.2;
				material = 51;
				name = "pylon2";
				passthrough = 0.1;
				visual = "pylon2";
			};
			class Hitpylon3
			{
				armor = 0.2;
				material = 51;
				name = "pylon3";
				passthrough = 0.1;
				visual = "pylon3";
			};
			class Hitpylon4
			{
				armor = 0.2;
				material = 51;
				name = "pylon4";
				passthrough = 0.1;
				visual = "pylon4";
			};
		};
		class UserActions
		{
			class sensorselect
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				//condition="(player == driver this || player == gunner this) && alive this && !(this iskindof ""fza_ah64a_l"" || this iskindof ""fza_ah64a_e"")";
				condition="(player == driver this || player == gunner this) && alive this && !(this iskindof ""fza_ah64a_l"")";
				shortcut="OpticsMode";
				statement="fza_ah64_agmode = fza_ah64_agmode + 1;";
			};
			class weaponactionswitch
			{
				displayName="Weapon Action Switch (WAS)";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && alive this";
				shortcut="user4";
				statement="[this] call fza_ah64_wepactionswitch";
			};
			class gunburst
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="zamerny";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"") && (currentweapon this == ""fza_m230"" || currentweapon this == ""fza_burstlimiter"")";
				shortcut="Binocular";
				statement="[this] exec ""\fza_ah64_controls\scripting\burstlimit.sqs""";
			};
			class rocketsalvo
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="zamerny";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"") && (currentweapon this in fza_ah64_rocketweps14 || currentweapon this in fza_ah64_rocketweps23 || currentweapon this in fza_ah64_rocketweps1 || currentweapon this in fza_ah64_rocketweps2 || currentweapon this in fza_ah64_rocketweps3 || currentweapon this in fza_ah64_rocketweps4)";
				shortcut="Binocular";
				statement="fza_ah64_rs = [this] execvm ""\fza_ah64_controls\scripting\rocket_salvo.sqf""";
			};
			class guncontrol
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="zamerny";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"")";
				shortcut="User3";
				statement="fza_ah64_gc = [this] execvm ""\fza_ah64_controls\scripting\guncontrol.sqf""";
			};
			class misltraj
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="zamerny";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"") && (currentweapon this == ""fza_agm114_23_8"" || currentweapon this == ""fza_agm114_14_8"" || currentweapon this in fza_ah64_hellfireweps1 || currentweapon this in fza_ah64_hellfireweps2 || currentweapon this in fza_ah64_hellfireweps3 || currentweapon this in fza_ah64_hellfireweps4)";
				shortcut="Binocular";
				statement="fza_ah64_hfltype = [this] execvm ""\fza_ah64_controls\scripting\ltype_tog.sqf""";
			};
			class pilotdoor_open
			{
				displayName="Open Pilot Door";
				position="pilot_action";
				onlyForPlayer=0;
				radius=2.5;
				showWindow=0;
				priority=10;
				condition="this animationphase ""pdoor"" < 0.5 && alive this && !(isengineon this)";
				shortcut="";
				statement="fza_ah64_pdoor = [this] execvm ""\fza_ah64_controls\scripting\pilotdoor_toggle.sqf""";
			};
			/*class IntLight
			{
				displayName="Toggle Interior Lights";
				position="pilot_action";
				onlyForPlayer=0;
				radius=2.5;
				showWindow=0;
				priority=-10;
				condition="(alive this)";
				shortcut="";
				statement="[this] exec ""\fza_ah64_controls\scripting\IntLight.sqf""";
			};*/
			class pilotdoor_close
			{
				displayName="Close Pilot Door";
				position="pilot_action";
				onlyForPlayer=0;
				radius=2.5;
				showWindow=0;
				priority=10;
				condition="this animationphase ""pdoor"" > 0.5 && alive this";
				shortcut="";
				statement="fza_ah64_pdoor = [this] execvm ""\fza_ah64_controls\scripting\pilotdoor_toggle.sqf""";
			};
			class gundoor_open
			{
				displayName="Open Gunner Door";
				position="gunner_action";
				onlyForPlayer=0;
				radius=3;
				showWindow=0;
				priority=10;
				condition="this animationphase ""gdoor"" < 0.5 && alive this && !(isengineon this)";
				shortcut="";
				statement="fza_ah64_pdoor = [this] execvm ""\fza_ah64_controls\scripting\gundoor_toggle.sqf""";
			};
			class gundoor_close
			{
				displayName="Close Gunner Door";
				position="gunner_action";
				onlyForPlayer=0;
				radius=3;
				showWindow=0;
				priority=10;
				condition="this animationphase ""gdoor"" > 0.5 && alive this";
				shortcut="";
				statement="fza_ah64_pdoor = [this] execvm ""\fza_ah64_controls\scripting\gundoor_toggle.sqf""";
			};
			class ihadsstoggle
			{
				displayName="IHADSS Toggle";
				position="pilot_action";
				onlyForPlayer=1;
				radius=3;
				showWindow=0;
				priority=9;
				condition="player == driver this || player == gunner this";
				shortcut="User11";
				statement="[this] exec ""\fza_ah64_controls\scripting\ihadss.sqs""";
			};
			class pilotrmpd
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="player == driver this || player == gunner this";
				shortcut="User1";
				statement="fza_ah64_prmpdcycle = [this] execvm ""\fza_ah64_controls\scripting\prmpdcycle.sqf""";
			};
			class pilotlmpd
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="player == driver this || player == gunner this";
				shortcut="User2";
				statement="fza_ah64_plmpdcycle = [this] execvm ""\fza_ah64_controls\scripting\plmpdcycle.sqf""";
			};
			/*
			DEPRECATED
			class lasertoggle
			{
				displayName="Laser Toggle";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=-7;
				condition="player == gunner this";
				shortcut="User5";
				statement="[this] exec ""\fza_ah64_controls\scripting\laser.sqs""";
			};
			*/
			class filtertargs
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""fcr"" ||fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"")";
				shortcut="User6";
				statement="[this] exec ""\fza_ah64_controls\scripting\tsd_targfilter.sqs""";
			};
			class tsdrange
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pr_mpd == ""fcr"" || fza_ah64_pr_mpd == ""ase"")";
				shortcut="User7";
				statement="[this] exec ""\fza_ah64_controls\scripting\tsd_range.sqf""";
			};
			class tsdmode
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"")";
				shortcut="User8";
				statement="[this] exec ""\fza_ah64_controls\scripting\tsd_mode.sqs""";
			};
			////////////////TEMP NAV CONTROL/////////////
			class waypoints_add
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"") && fza_ah64_tsdmode == ""nav""";
				shortcut="";
				statement="fza_ah64_addwps = [this] execvm ""\fza_ah64_controls\scripting\nav\waypointadd.sqf""";
			};
			class waypoints_sav
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"") && fza_ah64_tsdmode == ""nav""";
				shortcut="";
				statement="fza_ah64_addwps = [this] execvm ""\fza_ah64_controls\scripting\nav\waypointsave.sqf""";
			};
			class waypoints_clr
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"") && fza_ah64_tsdmode == ""nav""";
				shortcut="";
				statement="fza_ah64_addwps = [this] execvm ""\fza_ah64_controls\scripting\nav\waypointclear.sqf""";
			};
			class map_toggle
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pl_mpd == ""tsd"")";
				shortcut="";
				statement="fza_ah64_maptog = [this] execvm ""\fza_ah64_controls\scripting\tsd_map_toggle.sqf""";
			};
			///////////PFZ CONTROL/////////////
			class pfz_create
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pr_mpd == ""fcr"")";
				shortcut="";
				statement="fza_ah64_createpfz = [this,fza_ah64_pfz_count] execvm ""\fza_ah64_controls\scripting\pfz.sqf""";
			};
			class pfz_sel
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pr_mpd == ""fcr"")";
				shortcut="User9";
				statement="fza_ah64_selpfz = [this] execvm ""\fza_ah64_controls\scripting\pfz_sel.sqf""";
			};
			class pfz_send
			{
				displayName="";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pr_mpd == ""fcr"")";
				shortcut="";
				statement="fza_ah64_sendpfz = [this] execvm ""\fza_ah64_controls\scripting\targxfer.sqf""";
			};
			class pfz_recv
			{
				displayName="";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""tsd"" || fza_ah64_pr_mpd == ""fcr"")";
				shortcut="";
				statement="fza_ah64_recvpfz = [this] execvm ""\fza_ah64_controls\scripting\targrecv.sqf""";
			};
			class mode_self
			{
				displayName="MODE SELF";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"")";
				shortcut="";
				statement="fza_ah64_modeself = [this] execvm ""\fza_ah64_controls\scripting\mode_self.sqf""";
			};
			class mode_remt
			{
				displayName="MODE REMOTE";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"")";
				shortcut="";
				statement="fza_ah64_moderemt = [this] execvm ""\fza_ah64_controls\scripting\mode_remt.sqf""";
			};
			class add_remt
			{
				displayName="BROADCAST REMOTE CODE";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"")";
				shortcut="User5";
				statement="fza_ah64_moderemt = [this] execvm ""\fza_ah64_controls\scripting\add_remt.sqf""";
			};
			class rem_remt
			{
				displayName="CEASE REMOTE CODE";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pl_mpd == ""wpn"")";
				shortcut="User10";
				statement="fza_ah64_moderemt = [this] execvm ""\fza_ah64_controls\scripting\rem_remt.sqf""";
			};
			class pnvs_cam_onoff
			{
				displayName="HDU PNVS Toggle";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=8;
				condition="(player == driver this || player == gunner this)";
				shortcut="User12";
				statement="fza_ah64_pnvs_cam_toggle = [this] execvm ""\fza_ah64_controls\scripting\pnvs_cam_set.sqf""";
			};
			class tiron
			{
				displayName="Toggle Head Tracking On";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(!(fza_ah64_tiron))";
				shortcut="User19";
				statement="fza_ah64_tiron = true";
			};
			class tiroff
			{
				displayName="Toggle Head Tracking Off";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(fza_ah64_tiron)";
				shortcut="User19";
				statement="fza_ah64_tiron = false";
			};
			class cycle_wp
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this)";
				shortcut="User18";
				statement="fza_ah64_nextwp = [this] execvm ""\fza_ah64_controls\scripting\nav\nextwp.sqf""";
			};
			class cycle_wp2
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this)";
				shortcut="User17";
				statement="fza_ah64_nextwp = [this] execvm ""\fza_ah64_controls\scripting\nav\nextwp2.sqf""";
			};
			class fcr_toggle
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this)";
				shortcut="salute";
				statement="fza_ah64_fcronoff = [this] execvm ""\fza_ah64_controls\scripting\fcr_toggle.sqf""";
			};
			class irjammer_toggle
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""ase"")";
				shortcut="";
				statement="fza_ah64_irjamonoff = [this] execvm ""\fza_ah64_controls\scripting\ir_jammer.sqf""";
			};
			class rfjammer_toggle
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""ase"")";
				shortcut="";
				statement="fza_ah64_rfjamonoff = [this] execvm ""\fza_ah64_controls\scripting\rf_jammer.sqf""";
			};
			class jammer_toggle
			{
				displayName="JAMMER MAN/AUT";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""ase"")";
				shortcut="User13";
				statement="fza_ah64_jamstate = [this] execvm ""\fza_ah64_controls\scripting\jam_toggle.sqf""";
			};
			class ase_autpage
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this) && (fza_ah64_pr_mpd == ""ase"")";
				shortcut="User14";
				statement="fza_ah64_autpg = [this] execvm ""\fza_ah64_controls\scripting\ase_autpage.sqf""";
			};
			class ihadssmode
			{
				displayName="";
				useAction=false;
				showSwitchAction=false;
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=0;
				condition="(player == driver this || player == gunner this)";
				shortcut="User15";
				statement="fza_ah64_ihadssmode = [this] execvm ""\fza_ah64_controls\scripting\ihadss_mode.sqf""";
			};
			/*class clickhelpers
			{
				displayName="Click Helper Toggle";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=-12;
				condition="(player == driver this || player == gunner this)";
				shortcut="";
				statement="fza_ah64_clickhelpers = [this] execvm ""\fza_ah64_controls\scripting\click_helpers.sqf""";
			};*/
			class Arming
			{
				displayName="<t color ='#ffff00'>Arming</t>";
				position="pilot_action";
				onlyForPlayer=1;
				radius=8;
				showWindow=0;
				priority=13;
				condition="(player == driver this || player == gunner this) && (speed this < 5) && (alive this)"; //removed CPG action
				shortcut="";
				statement="[this] execVM ""\fza_ah64_controls\arming\armingdiag_2.sqf""";
			};
		};
		class eventhandlers
		{
			init = "[_this select 0] execvm ""\fza_ah64_controls\scripting\ah64d_init.sqf"";";
			fired = "_this execvm ""\fza_ah64_controls\scripting\ffar_align.sqf""; _this call fza_ah64_fx_EH_Fired; _this call fza_ah64_rocketalign; _this call fza_ah64_hellfirealign;";
			GetIn = "_this execvm ""\fza_ah64_controls\scripting\getin.sqf""";
			GetOut = "_this execvm ""\fza_ah64_controls\scripting\getout.sqf""";
			IncomingMissile = "_this execvm ""\fza_ah64_controls\ecm\CMSmk2.sqf""";
			engine = "[_this select 0,_this select 1] execvm ""\fza_ah64_controls\scripting\engon.sqf""";
			HandleDamage = "if(alive (_this select 0) && !(surfaceiswater [getposasl (_this select 0) select 0,getposasl (_this select 0) select 1] && getpos (_this select 0)  select 2 < 0)) then {_this call fza_ah64_systemdamage;}; if(alive (_this select 0)) then {_this select 2};";
			killed = "_this call BIS_Effects_EH_Killed;";
		};
		class MFD {};
		/*class MFD1
		{
			rendertarget = "fza_ah64_pnvsrtarget0";
			class View01
			{
				fov = 0.2;
				pointdirection = "driverview_dir";
				pointposition = "driverview";
				renderquality = 0;
				rendervisionmode = 2;
			};
		};*/

		 class AcreIntercoms 
		{
            class Intercom_1 
			{
                displayName = "Crew Intercom";
                shortName = "Crew";
                allowedPositions[] = {"crew"};
                disabledPositions[] = {}; 
                masterPositions[] = {"crew"}; // Seats with master stations have the possibility of broadcasting a message in that network
                limitedPositions[] = {"cargo"}; // Despite not having regular access to the network, units in cargo positions can have limited connections to communicate with the crew. These positions do not transmit automatically in the limited network; units in this position must toggle the functionality manually.
                numLimitedPositions = 3;  // This is the number of simultaneous connections that units defined in the previous array can have
                connectedByDefault = 0; // The intercom initial configuration is enabled upon entering a vehicle
            };
		};
		
		acre_hasInfantryPhone = 1; // 1 - enabled, 0 - disabled
		acre_infantryPhoneDisableRinging = 1;   // If set to 1, the ringing funtionality will not be available
		acre_infantryPhoneCustomRinging[] = {}; // An array used in order to override the default sound for the ringing functionality
		acre_infantryPhoneIntercom[] = {"intercom_1"}; // List of intercom names (intercom_1, intercom_2) or "all" in order to specify which intercom networks the phone can connect to
		acre_infantryPhoneControlActions[] = {"intercom_1"}; // Only those units in "intercom_1" can have access to ringing functionality
		acre_eventInfantryPhone = QFUNC(noApiFunction); // Here a custom function can be defined that is called when the infantry phone is picked up, put back, given to another unit or the intercom network is switched
		
		class AcreRacks
		{
           	class Rack_1 
			{
               displayName = "ARC-186 (VHF)"; // Name is displayed in the interaction menu.
			   shortName = "VHF";
               allowedPositions[] = {"crew"}; 	// Who can configure the radio and open the radio GUI. Same wildcards as the intercom. It also allows transmitting/receiving
               componentName = "ACRE_VRC103";	
			   disabledPositions[] = {};
               defaultComponents[] = {};					 // Use this to attach simple components like Antennas. Not yet fully implemented
               mountedRadio = "ACRE_PRC117F";                 // Predefined mounted radio
               isRadioRemovable = 0;
               intercom[] = {"Intercom_1"};                   // All units in intercom will be able to hear/send transmittions (ACE3 interaction menu) but they cannot manipulate the radio (GUI interface)
		   };
		    class Rack_2 
			{
               displayName = "ARC-164 (UHF)"; // Name is displayed in the interaction menu.
			   shortName = "UHF";
               allowedPositions[] = {"crew"}; 	// Who can configure the radio and open the radio GUI. Same wildcards as the intercom. It also allows transmitting/receiving
               componentName = "ACRE_VRC103";	
			   disabledPositions[] = {};
               defaultComponents[] = {};					 // Use this to attach simple components like Antennas. Not yet fully implemented
               mountedRadio = "ACRE_PRC117F";                 // Predefined mounted radio
               isRadioRemovable = 0;
               intercom[] = {"Intercom_1"};                   // All units in intercom will be able to hear/send transmittions (ACE3 interaction menu) but they cannot manipulate the radio (GUI interface)
		   };
		    class Rack_3 
			{
               displayName = "ARC-201D (FM1)"; // Name is displayed in the interaction menu.
			   shortName = "FM1";
               allowedPositions[] = {"crew"}; 	// Who can configure the radio and open the radio GUI. Same wildcards as the intercom. It also allows transmitting/receiving
               componentName = "ACRE_SEM90";	
			   disabledPositions[] = {};
               defaultComponents[] = {};					 // Use this to attach simple components like Antennas. Not yet fully implemented
               mountedRadio = "ACRE_SEM70";                 // Predefined mounted radio
               isRadioRemovable = 0;
               intercom[] = {"Intercom_1"};                   // All units in intercom will be able to hear/send transmittions (ACE3 interaction menu) but they cannot manipulate the radio (GUI interface)
		   };
		    class Rack_4
			{
               displayName = "ARC-201D (FM2)"; // Name is displayed in the interaction menu.
			   shortName = "FM2";
               allowedPositions[] = {"crew"}; 	// Who can configure the radio and open the radio GUI. Same wildcards as the intercom. It also allows transmitting/receiving
               componentName = "ACRE_SEM90";	
			   disabledPositions[] = {};
               defaultComponents[] = {};					 // Use this to attach simple components like Antennas. Not yet fully implemented
               mountedRadio = "ACRE_SEM70";                 // Predefined mounted radio
               isRadioRemovable = 0;
               intercom[] = {"Intercom_1"};                   // All units in intercom will be able to hear/send transmittions (ACE3 interaction menu) but they cannot manipulate the radio (GUI interface)
		   };
       };
	};
	class fza_ah64d_b2e: fza_ah64base
	{
		side=1;
		scope=1; //MASKED FROM EDITOR
		author="Franze, Nodunit, Sacha 'Voodoo' Oropeza, Zeitsev & Community";
		displayName="AH-64D Apache Longbow";
		model="\fza_ah64_US\fza_ah64d_b2.p3d";
		ejectDeadCargo=0;
		nameSound="veh_Helicopter";
		faction="fza_usaav";
		vehicleclass="fza_helicopters";
		hasGunner=1;
		audible=4;
		hiddenselections[]=
{
"pod1_m151_1",
"pod1_m151_2",
"pod1_m151_3",
"pod1_m151_4",
"pod1_m151_5",
"pod1_m151_6",
"pod1_m151_7",
"pod1_m151_8",
"pod1_m151_9",
"pod1_m151_10",
"pod1_m151_11",
"pod1_m151_12",
"pod1_m151_13",
"pod1_m151_14",
"pod1_m151_15",
"pod1_m151_16",
"pod1_m151_17",
"pod1_m151_18",
"pod1_m151_19",
"pod1_m229_1",
"pod1_m229_2",
"pod1_m229_3",
"pod1_m229_4",
"pod1_m229_5",
"pod1_m229_6",
"pod1_m229_7",
"pod1_m229_8",
"pod1_m229_9",
"pod1_m229_10",
"pod1_m229_11",
"pod1_m229_12",
"pod1_m229_13",
"pod1_m229_14",
"pod1_m229_15",
"pod1_m229_16",
"pod1_m229_17",
"pod1_m229_18",
"pod1_m229_19",
"pod1_m261_1",
"pod1_m261_2",
"pod1_m261_3",
"pod1_m261_4",
"pod1_m261_5",
"pod1_m261_6",
"pod1_m261_7",
"pod1_m261_8",
"pod1_m261_9",
"pod1_m261_10",
"pod1_m261_11",
"pod1_m261_12",
"pod1_m261_13",
"pod1_m261_14",
"pod1_m261_15",
"pod1_m261_16",
"pod1_m261_17",
"pod1_m261_18",
"pod1_m261_19",
"pod2_m151_1",
"pod2_m151_2",
"pod2_m151_3",
"pod2_m151_4",
"pod2_m151_5",
"pod2_m151_6",
"pod2_m151_7",
"pod2_m151_8",
"pod2_m151_9",
"pod2_m151_10",
"pod2_m151_11",
"pod2_m151_12",
"pod2_m151_13",
"pod2_m151_14",
"pod2_m151_15",
"pod2_m151_16",
"pod2_m151_17",
"pod2_m151_18",
"pod2_m151_19",
"pod2_m229_1",
"pod2_m229_2",
"pod2_m229_3",
"pod2_m229_4",
"pod2_m229_5",
"pod2_m229_6",
"pod2_m229_7",
"pod2_m229_8",
"pod2_m229_9",
"pod2_m229_10",
"pod2_m229_11",
"pod2_m229_12",
"pod2_m229_13",
"pod2_m229_14",
"pod2_m229_15",
"pod2_m229_16",
"pod2_m229_17",
"pod2_m229_18",
"pod2_m229_19",
"pod2_m261_1",
"pod2_m261_2",
"pod2_m261_3",
"pod2_m261_4",
"pod2_m261_5",
"pod2_m261_6",
"pod2_m261_7",
"pod2_m261_8",
"pod2_m261_9",
"pod2_m261_10",
"pod2_m261_11",
"pod2_m261_12",
"pod2_m261_13",
"pod2_m261_14",
"pod2_m261_15",
"pod2_m261_16",
"pod2_m261_17",
"pod2_m261_18",
"pod2_m261_19",
"pod3_m151_1",
"pod3_m151_2",
"pod3_m151_3",
"pod3_m151_4",
"pod3_m151_5",
"pod3_m151_6",
"pod3_m151_7",
"pod3_m151_8",
"pod3_m151_9",
"pod3_m151_10",
"pod3_m151_11",
"pod3_m151_12",
"pod3_m151_13",
"pod3_m151_14",
"pod3_m151_15",
"pod3_m151_16",
"pod3_m151_17",
"pod3_m151_18",
"pod3_m151_19",
"pod3_m229_1",
"pod3_m229_2",
"pod3_m229_3",
"pod3_m229_4",
"pod3_m229_5",
"pod3_m229_6",
"pod3_m229_7",
"pod3_m229_8",
"pod3_m229_9",
"pod3_m229_10",
"pod3_m229_11",
"pod3_m229_12",
"pod3_m229_13",
"pod3_m229_14",
"pod3_m229_15",
"pod3_m229_16",
"pod3_m229_17",
"pod3_m229_18",
"pod3_m229_19",
"pod3_m261_1",
"pod3_m261_2",
"pod3_m261_3",
"pod3_m261_4",
"pod3_m261_5",
"pod3_m261_6",
"pod3_m261_7",
"pod3_m261_8",
"pod3_m261_9",
"pod3_m261_10",
"pod3_m261_11",
"pod3_m261_12",
"pod3_m261_13",
"pod3_m261_14",
"pod3_m261_15",
"pod3_m261_16",
"pod3_m261_17",
"pod3_m261_18",
"pod3_m261_19",
"pod4_m151_1",
"pod4_m151_2",
"pod4_m151_3",
"pod4_m151_4",
"pod4_m151_5",
"pod4_m151_6",
"pod4_m151_7",
"pod4_m151_8",
"pod4_m151_9",
"pod4_m151_10",
"pod4_m151_11",
"pod4_m151_12",
"pod4_m151_13",
"pod4_m151_14",
"pod4_m151_15",
"pod4_m151_16",
"pod4_m151_17",
"pod4_m151_18",
"pod4_m151_19",
"pod4_m229_1",
"pod4_m229_2",
"pod4_m229_3",
"pod4_m229_4",
"pod4_m229_5",
"pod4_m229_6",
"pod4_m229_7",
"pod4_m229_8",
"pod4_m229_9",
"pod4_m229_10",
"pod4_m229_11",
"pod4_m229_12",
"pod4_m229_13",
"pod4_m229_14",
"pod4_m229_15",
"pod4_m229_16",
"pod4_m229_17",
"pod4_m229_18",
"pod4_m229_19",
"pod4_m261_1",
"pod4_m261_2",
"pod4_m261_3",
"pod4_m261_4",
"pod4_m261_5",
"pod4_m261_6",
"pod4_m261_7",
"pod4_m261_8",
"pod4_m261_9",
"pod4_m261_10",
"pod4_m261_11",
"pod4_m261_12",
"pod4_m261_13",
"pod4_m261_14",
"pod4_m261_15",
"pod4_m261_16",
"pod4_m261_17",
"pod4_m261_18",
"pod4_m261_19",
"rail1_114l_1",
"rail1_114l_2",
"rail1_114l_3",
"rail1_114l_4",
"rail1_114k_1",
"rail1_114k_2",
"rail1_114k_3",
"rail1_114k_4",
"rail2_114l_1",
"rail2_114l_2",
"rail2_114l_3",
"rail2_114l_4",
"rail2_114k_1",
"rail2_114k_2",
"rail2_114k_3",
"rail2_114k_4",
"rail3_114l_1",
"rail3_114l_2",
"rail3_114l_3",
"rail3_114l_4",
"rail3_114k_1",
"rail3_114k_2",
"rail3_114k_3",
"rail3_114k_4",
"rail4_114l_1",
"rail4_114l_2",
"rail4_114l_3",
"rail4_114l_4",
"rail4_114k_1",
"rail4_114k_2",
"rail4_114k_3",
"rail4_114k_4",
"atas_1",
"atas_2",
"fim92_1",
"fim92_2",
"fim92_3",
"fim92_4",
"auxtank_1",
"auxtank_2",
"auxtank_3",
"auxtank_4",
			"mpd_pl_obj1",
			"mpd_pl_obj2",
			"mpd_pl_obj3",
			"mpd_pl_obj4",
			"mpd_pl_obj5",
			"mpd_pl_obj6",
			"mpd_pl_obj7",
			"mpd_pl_obj8",
			"mpd_pl_obj9",
			"mpd_pl_obj10",
			"mpd_pl_obj11",
			"mpd_pl_obj12",
			"mpd_pl_obj13",
			"mpd_pl_obj14",
			"mpd_pl_obj15",
			"mpd_pl_obj16",
			"mpd_pl_obj17",
			"mpd_pl_obj18",
			"mpd_pl_obj19",
			"mpd_pl_obj20",
			"mpd_pl_obj21",
			"mpd_pl_obj22",
			"mpd_pl_obj23",
			"mpd_pl_obj24",
			"mpd_pl_obj25",
			"mpd_pl_obj26",
			"mpd_pl_obj27",
			"mpd_pl_obj28",
			"mpd_pl_obj29",
			"mpd_pl_obj30",
			"mpd_pl_obj31",
			"mpd_pl_obj32",
"pl_mpd_back",
"pr_mpd_back",
"pl_aft_fuel_n0",
"pl_aft_fuel_n1",
"pl_aft_fuel_n2",
"pl_aft_fuel_n3",
"pl_aft_line",
"pl_flow1_fuel_n0",
"pl_flow1_fuel_n1",
"pl_flow1_fuel_n2",
"pl_flow2_fuel_n0",
"pl_flow2_fuel_n1",
"pl_flow2_fuel_n2",
"pl_fwd_fuel_n0",
"pl_fwd_fuel_n1",
"pl_fwd_fuel_n2",
"pl_fwd_fuel_n3",
"pl_fwd_line",
"pl_iafs_fuel_n0",
"pl_iafs_fuel_n1",
"pl_iafs_fuel_n2",
"pl_iend_fuel_n0",
"pl_iend_fuel_n1",
"pl_iend_fuel_n2",
"pl_int_fuel_n0",
"pl_int_fuel_n1",
"pl_int_fuel_n2",
"pl_int_fuel_n3",
"pl_tend_fuel_n0",
"pl_tend_fuel_n1",
"pl_tend_fuel_n2",
"pl_tflow_fuel_n0",
"pl_tflow_fuel_n1",
"pl_tflow_fuel_n2",
"pl_tot_fuel_n0",
"pl_tot_fuel_n1",
"pl_tot_fuel_n2",
"pl_tot_fuel_n3",
"pl_waux1",
"pl_waux2",
"pl_waux3",
"pl_waux4",
"pr_aft_fuel_n0",
"pr_aft_fuel_n1",
"pr_aft_fuel_n2",
"pr_aft_fuel_n3",
"pr_aft_line",
"pr_flow1_fuel_n0",
"pr_flow1_fuel_n1",
"pr_flow1_fuel_n2",
"pr_flow2_fuel_n0",
"pr_flow2_fuel_n1",
"pr_flow2_fuel_n2",
"pr_fwd_fuel_n0",
"pr_fwd_fuel_n1",
"pr_fwd_fuel_n2",
"pr_fwd_fuel_n3",
"pr_fwd_line",
"pr_iafs_fuel_n0",
"pr_iafs_fuel_n1",
"pr_iafs_fuel_n2",
"pr_iend_fuel_n0",
"pr_iend_fuel_n1",
"pr_iend_fuel_n2",
"pr_int_fuel_n0",
"pr_int_fuel_n1",
"pr_int_fuel_n2",
"pr_int_fuel_n3",
"pr_tend_fuel_n0",
"pr_tend_fuel_n1",
"pr_tend_fuel_n2",
"pr_tflow_fuel_n0",
"pr_tflow_fuel_n1",
"pr_tflow_fuel_n2",
"pr_tot_fuel_n0",
"pr_tot_fuel_n1",
"pr_tot_fuel_n2",
"pr_tot_fuel_n3",
"pr_waux1",
"pr_waux2",
"pr_waux3",
"pr_waux4",
"pr_iafs_line",
"pl_iafs_line",
"mpd_pr_tsd_wtdir1",
"mpd_pr_tsd_wtdir2",
"mpd_pr_tsd_wtdir3",
"mpd_pr_tsd_eta1",
"mpd_pr_tsd_eta2",
"mpd_pr_tsd_eta3",
"mpd_pr_tsd_eta4",
"mpd_pr_tsd_hdg1",
"mpd_pr_tsd_hdg2",
"mpd_pr_tsd_hdg3",
"mpd_pr_tsd_dist2",
"mpd_pr_tsd_dist3",
"mpd_pr_tsd_dist4",
"mpd_pr_tsd_z1",
"mpd_pr_tsd_z2",
"mpd_pr_tsd_pfzs",
"mpd_pr_tsd_filter",
"mpd_pr_tsd_acq",
"mpd_pr_tsd_wdir1",
"mpd_pr_tsd_wdir2",
"mpd_pr_tsd_wdir3",
"mpd_pr_tsd_wv1",
"mpd_pr_tsd_wv2",
"mpd_pl_tsd_wtdir1",
"mpd_pl_tsd_wtdir2",
"mpd_pl_tsd_wtdir3",
"mpd_pl_tsd_eta1",
"mpd_pl_tsd_eta2",
"mpd_pl_tsd_eta3",
"mpd_pl_tsd_eta4",
"mpd_pl_tsd_hdg1",
"mpd_pl_tsd_hdg2",
"mpd_pl_tsd_hdg3",
"mpd_pl_tsd_dist2",
"mpd_pl_tsd_dist3",
"mpd_pl_tsd_dist4",
"mpd_pl_tsd_z1",
"mpd_pl_tsd_z2",
"mpd_pl_tsd_pfzs",
"mpd_pl_tsd_filter",
"mpd_pl_tsd_acq",
"mpd_pl_tsd_wdir1",
"mpd_pl_tsd_wdir2",
"mpd_pl_tsd_wdir3",
"mpd_pl_tsd_wv1",
"mpd_pl_tsd_wv2",
"ufd_back",
"in_lt_apu",
"gl_tsd_end3",
"gl_tsd_eta1",
"gl_tsd_eta2",
"gl_tsd_eta3",
"gl_tsd_eta4",
"gl_tsd_hdg1",
"gl_tsd_hdg2",
"gl_tsd_hdg3",
"gl_tsd_rng1",
"gl_tsd_rng2",
"gl_tsd_rng3",
"gl_tsd_scale1",
"gl_tsd_scale2",
"gl_tsd_typ1",
"gl_tsd_typ2",
"gl_tsd_typ3",
"gl_tsd_winddir1",
"gl_tsd_winddir2",
"gl_tsd_winddir3",
"gl_tsd_windspd1",
"gl_tsd_windspd2",
"gr_tsd_end1",
"gr_tsd_end2",
"gr_tsd_end3",
"gr_tsd_eta1",
"gr_tsd_eta2",
"gr_tsd_eta3",
"gr_tsd_eta4",
"gr_tsd_hdg1",
"gr_tsd_hdg2",
"gr_tsd_hdg3",
"gr_tsd_rng1",
"gr_tsd_rng2",
"gr_tsd_rng3",
"gr_tsd_scale1",
"gr_tsd_scale2",
"gr_tsd_typ1",
"gr_tsd_typ2",
"gr_tsd_typ3",
"gr_tsd_winddir1",
"gr_tsd_winddir2",
"gr_tsd_winddir3",
"gr_tsd_windspd1",
"gr_tsd_windspd2",
"mpd_pl_chaff_qty_1",
"mpd_pl_chaff_qty_2",
"mpd_pl_flare1_qty_1",
"mpd_pl_flare1_qty_2",
"mpd_pl_flare2_qty_1",
"mpd_pl_flare2_qty_2",
"mpd_pl_gun_ammo_1",
"mpd_pl_gun_ammo_2",
"mpd_pl_gun_ammo_3",
"mpd_pl_gun_ammo_4",
"mpd_pl_gun_burst_1",
"mpd_pl_gun_burst_2",
"mpd_pl_gun_burst_3",
"mpd_pl_gun_burst_4",
"mpd_pl_gun_burst_5",
"mpd_pl_gun_sel",
"mpd_pl_hf_bracket",
"mpd_pl_hf_desig",
"mpd_pl_hf_salt",
"mpd_pl_hf_traj",
"mpd_pl_hf1_l1",
"mpd_pl_hf1_l2",
"mpd_pl_hf1_r1",
"mpd_pl_hf1_r2",
"mpd_pl_hf2_l1",
"mpd_pl_hf2_l2",
"mpd_pl_hf2_r1",
"mpd_pl_hf2_r2",
"mpd_pl_hf3_l1",
"mpd_pl_hf3_l2",
"mpd_pl_hf3_r1",
"mpd_pl_hf3_r2",
"mpd_pl_hf4_l1",
"mpd_pl_hf4_l2",
"mpd_pl_hf4_r1",
"mpd_pl_hf4_r2",
"mpd_pl_rg_base",
"mpd_pl_rg_bracket",
"mpd_pl_rkt_burst",
"mpd_pl_rkt_sel_type_1",
"mpd_pl_rkt_sel_type_2",
"mpd_pl_rkt_sel_type_3",
"mpd_pl_rkt_sel_type_4",
"mpd_pl_rkt_tot_1",
"mpd_pl_rkt_tot_2",
"mpd_pl_rkt1_qty_1",
"mpd_pl_rkt1_qty_2",
"mpd_pl_rkt1_type",
"mpd_pl_rkt2_qty_1",
"mpd_pl_rkt2_qty_2",
"mpd_pl_rkt2_type",
"mpd_pl_rkt3_qty_1",
"mpd_pl_rkt3_qty_2",
"mpd_pl_rkt3_type",
"mpd_pl_rkt4_qty_1",
"mpd_pl_rkt4_qty_2",
"mpd_pl_rkt4_type",
"mpd_pl_rkt5_qty_1",
"mpd_pl_rkt5_qty_2",
"mpd_pl_rkt5_type",
"mpd_pl_sight_acq",
"mpd_pl_wpn_acq",
"mpd_pl_wpn_ata_sel",
"mpd_pl_wpn_gun_sel",
"mpd_pl_wpn_hf_type",
"mpd_pl_wpn_msl_sel",
"mpd_pl_wpn_rkt_sel",
"mpd_pl_wpn_sel",
"mpd_pl_rkt1",
"mpd_pl_rkt2",
"mpd_pl_rkt3",
"mpd_pl_rkt4",
"pr_wca_pg",
"pr_wca_1",
"pr_wca_2",
"pr_wca_3",
"pr_wca_4",
"pr_wca_5",
"pr_wca_6",
"pr_wca_7",
"pr_wca_8",
"pr_wca_9",
"pr_wca_10",
"pr_wca_11",
"pr_wca_12",
"pr_wca_13",
"pr_wca_14",
"pr_wca_15",
"pr_wca_16",
"pr_wca_17",
"pr_wca_18",
"pr_wca_19",
"pr_wca_20",
"pr_wca_21",
"pr_wca_22",
"pr_wca_23",
"pr_wca_24",
"pr_wca_25",
"pr_wca_26",
"pl_wca_pg",
"pl_wca_1",
"pl_wca_2",
"pl_wca_3",
"pl_wca_4",
"pl_wca_5",
"pl_wca_6",
"pl_wca_7",
"pl_wca_8",
"pl_wca_9",
"pl_wca_10",
"pl_wca_11",
"pl_wca_12",
"pl_wca_13",
"pl_wca_14",
"pl_wca_15",
"pl_wca_16",
"pl_wca_17",
"pl_wca_18",
"pl_wca_19",
"pl_wca_20",
"pl_wca_21",
"pl_wca_22",
"pl_wca_23",
"pl_wca_24",
"pl_wca_25",
"pl_wca_26",
"gr_wca_pg",
"gr_wca_1",
"gr_wca_2",
"gr_wca_3",
"gr_wca_4",
"gr_wca_5",
"gr_wca_6",
"gr_wca_7",
"gr_wca_8",
"gr_wca_9",
"gr_wca_10",
"gr_wca_11",
"gr_wca_12",
"gr_wca_13",
"gr_wca_14",
"gr_wca_15",
"gr_wca_16",
"gr_wca_17",
"gr_wca_18",
"gr_wca_19",
"gr_wca_20",
"gr_wca_21",
"gr_wca_22",
"gr_wca_23",
"gr_wca_24",
"gr_wca_25",
"gr_wca_26",
"gl_wca_pg",
"gl_wca_1",
"gl_wca_2",
"gl_wca_3",
"gl_wca_4",
"gl_wca_5",
"gl_wca_6",
"gl_wca_7",
"gl_wca_8",
"gl_wca_9",
"gl_wca_10",
"gl_wca_11",
"gl_wca_12",
"gl_wca_13",
"gl_wca_14",
"gl_wca_15",
"gl_wca_16",
"gl_wca_17",
"gl_wca_18",
"gl_wca_19",
"gl_wca_20",
"gl_wca_21",
"gl_wca_22",
"gl_wca_23",
"gl_wca_24",
"gl_wca_25",
"gl_wca_26",
"mpd_pr_flt_balt1",
"mpd_pr_flt_balt2",
"mpd_pr_flt_balt3",
"mpd_pr_flt_balt4",
"mpd_pr_flt_bank",
"mpd_pr_flt_gspd1",
"mpd_pr_flt_gspd2",
"mpd_pr_flt_gspd3",
"mpd_pr_flt_hdg",
"mpd_pr_flt_hdg2",
"mpd_pr_flt_hi",
"mpd_pr_flt_hor",
"mpd_pr_flt_lo",
"mpd_pr_flt_n20c",
"mpd_pr_flt_p20c",
"mpd_pr_flt_ralt1",
"mpd_pr_flt_ralt2",
"mpd_pr_flt_ralt3",
"mpd_pr_flt_raltb",
"mpd_pr_flt_rdr",
"mpd_pr_flt_slip",
"mpd_pr_flt_spd1",
"mpd_pr_flt_spd2",
"mpd_pr_flt_spd3",
"mpd_pr_flt_trq1",
"mpd_pr_flt_trq2",
"mpd_pr_flt_trq3",
"mpd_pr_flt_ttg1",
"mpd_pr_flt_ttg2",
"mpd_pr_flt_ttg3",
"mpd_pr_flt_ttg4",
"mpd_pr_flt_turn",
"mpd_pr_flt_vsi",
"mpd_pr_flt_vvi",
"mpd_pr_flt_w",
"mpd_pr_flt_wbear",
"mpd_pr_flt_wp",
"mpd_pr_flt_wr1",
"mpd_pr_flt_wr2",
"mpd_pr_flt_wr3",
"mpd_pl_flt_balt1",
"mpd_pl_flt_balt2",
"mpd_pl_flt_balt3",
"mpd_pl_flt_balt4",
"mpd_pl_flt_bank",
"mpd_pl_flt_gspd1",
"mpd_pl_flt_gspd2",
"mpd_pl_flt_gspd3",
"mpd_pl_flt_hdg",
"mpd_pl_flt_hdg2",
"mpd_pl_flt_hi",
"mpd_pl_flt_hor",
"mpd_pl_flt_lo",
"mpd_pl_flt_n20c",
"mpd_pl_flt_p20c",
"mpd_pl_flt_ralt1",
"mpd_pl_flt_ralt2",
"mpd_pl_flt_ralt3",
"mpd_pl_flt_raltb",
"mpd_pl_flt_rdr",
"mpd_pl_flt_slip",
"mpd_pl_flt_spd1",
"mpd_pl_flt_spd2",
"mpd_pl_flt_spd3",
"mpd_pl_flt_trq1",
"mpd_pl_flt_trq2",
"mpd_pl_flt_trq3",
"mpd_pl_flt_ttg1",
"mpd_pl_flt_ttg2",
"mpd_pl_flt_ttg3",
"mpd_pl_flt_ttg4",
"mpd_pl_flt_turn",
"mpd_pl_flt_vsi",
"mpd_pl_flt_vvi",
"mpd_pl_flt_w",
"mpd_pl_flt_wbear",
"mpd_pl_flt_wp",
"mpd_pl_flt_wr1",
"mpd_pl_flt_wr2",
"mpd_pl_flt_wr3",
"mpd_gl_flt_balt1",
"mpd_gl_flt_balt2",
"mpd_gl_flt_balt3",
"mpd_gl_flt_balt4",
"mpd_gl_flt_bank",
"mpd_gl_flt_gspd1",
"mpd_gl_flt_gspd2",
"mpd_gl_flt_gspd3",
"mpd_gl_flt_hdg",
"mpd_gl_flt_hdg2",
"mpd_gl_flt_hi",
"mpd_gl_flt_hor",
"mpd_gl_flt_lo",
"mpd_gl_flt_n20c",
"mpd_gl_flt_p20c",
"mpd_gl_flt_ralt1",
"mpd_gl_flt_ralt2",
"mpd_gl_flt_ralt3",
"mpd_gl_flt_raltb",
"mpd_gl_flt_rdr",
"mpd_gl_flt_slip",
"mpd_gl_flt_spd1",
"mpd_gl_flt_spd2",
"mpd_gl_flt_spd3",
"mpd_gl_flt_trq1",
"mpd_gl_flt_trq2",
"mpd_gl_flt_trq3",
"mpd_gl_flt_ttg1",
"mpd_gl_flt_ttg2",
"mpd_gl_flt_ttg3",
"mpd_gl_flt_ttg4",
"mpd_gl_flt_turn",
"mpd_gl_flt_vsi",
"mpd_gl_flt_vvi",
"mpd_gl_flt_w",
"mpd_gl_flt_wbear",
"mpd_gl_flt_wp",
"mpd_gl_flt_wr1",
"mpd_gl_flt_wr2",
"mpd_gl_flt_wr3",
"mpd_gr_flt_balt1",
"mpd_gr_flt_balt2",
"mpd_gr_flt_balt3",
"mpd_gr_flt_balt4",
"mpd_gr_flt_bank",
"mpd_gr_flt_gspd1",
"mpd_gr_flt_gspd2",
"mpd_gr_flt_gspd3",
"mpd_gr_flt_hdg",
"mpd_gr_flt_hdg2",
"mpd_gr_flt_hi",
"mpd_gr_flt_hor",
"mpd_gr_flt_lo",
"mpd_gr_flt_n20c",
"mpd_gr_flt_p20c",
"mpd_gr_flt_ralt1",
"mpd_gr_flt_ralt2",
"mpd_gr_flt_ralt3",
"mpd_gr_flt_raltb",
"mpd_gr_flt_rdr",
"mpd_gr_flt_slip",
"mpd_gr_flt_spd1",
"mpd_gr_flt_spd2",
"mpd_gr_flt_spd3",
"mpd_gr_flt_trq1",
"mpd_gr_flt_trq2",
"mpd_gr_flt_trq3",
"mpd_gr_flt_ttg1",
"mpd_gr_flt_ttg2",
"mpd_gr_flt_ttg3",
"mpd_gr_flt_ttg4",
"mpd_gr_flt_turn",
"mpd_gr_flt_vsi",
"mpd_gr_flt_vvi",
"mpd_gr_flt_w",
"mpd_gr_flt_wbear",
"mpd_gr_flt_wp",
"mpd_gr_flt_wr1",
"mpd_gr_flt_wr2",
"mpd_gr_flt_wr3",
"mpd_pr_flt_dir1",
"mpd_pr_flt_dir2",
"mpd_pr_flt_dir3",
"mpd_pr_flt_dirb",
"mpd_pl_flt_dir1",
"mpd_pl_flt_dir2",
"mpd_pl_flt_dir3",
"mpd_pl_flt_dirb",
"mpd_gr_flt_dir1",
"mpd_gr_flt_dir2",
"mpd_gr_flt_dir3",
"mpd_gr_flt_dirb",
"mpd_gl_flt_dir1",
"mpd_gl_flt_dir2",
"mpd_gl_flt_dir3",
"mpd_gl_flt_dirb",
"mpd_pr_eng_1npb",
"mpd_pr_eng_1tgt_1",
"mpd_pr_eng_1tgt1",
"mpd_pr_eng_1tgt2",
"mpd_pr_eng_1tgt3",
"mpd_pr_eng_1tgtb",
"mpd_pr_eng_1tgtbg",
"mpd_pr_eng_2npb",
"mpd_pr_eng_2tgt_1",
"mpd_pr_eng_2tgt1",
"mpd_pr_eng_2tgt2",
"mpd_pr_eng_2tgt3",
"mpd_pr_eng_2tgtb",
"mpd_pr_eng_2tgtbg",
"mpd_pr_eng_1trq1",
"mpd_pr_eng_1trq2",
"mpd_pr_eng_1trqb",
"mpd_pr_eng_1trqbg",
"mpd_pr_eng_2trq1",
"mpd_pr_eng_2trq2",
"mpd_pr_eng_2trqb",
"mpd_pr_eng_2trqbg",
"mpd_pr_eng_ltrqbar",
"mpd_pr_eng_accpsi1",
"mpd_pr_eng_accpsi2",
"mpd_pr_eng_accpsi3",
"mpd_pr_eng_accpsi4",
"mpd_pr_eng_utipsi1",
"mpd_pr_eng_utipsi2",
"mpd_pr_eng_utipsi3",
"mpd_pr_eng_utipsi4",
"mpd_pr_eng_pripsi1",
"mpd_pr_eng_pripsi2",
"mpd_pr_eng_pripsi3",
"mpd_pr_eng_pripsi4",
"mpd_pr_eng_e1ng1",
"mpd_pr_eng_e1ng2",
"mpd_pr_eng_e1ng3",
"mpd_pr_eng_e2ng1",
"mpd_pr_eng_e2ng2",
"mpd_pr_eng_e2ng3",
"mpd_pr_eng_e1np1",
"mpd_pr_eng_e1np2",
"mpd_pr_eng_e1np3",
"mpd_pr_eng_e2np1",
"mpd_pr_eng_e2np2",
"mpd_pr_eng_e2np3",
"mpd_pr_eng_oil1psi1",
"mpd_pr_eng_oil1psi2",
"mpd_pr_eng_oil1psi3",
"mpd_pr_eng_oil2psi1",
"mpd_pr_eng_oil2psi2",
"mpd_pr_eng_oil2psi3",
"mpd_pr_eng_rrpm1",
"mpd_pr_eng_rrpm2",
"mpd_pr_eng_rrpm3",
"mpd_pr_eng_wca1",
"mpd_pr_eng_wca2",
"mpd_pr_eng_wca3",
"mpd_pr_eng_wca4",
"mpd_pr_eng_wca5",
"mpd_pr_eng_wca6",
"mpd_pr_eng_wca7",
"mpd_pr_eng_wca8",
"mpd_pr_eng_wca9",
"mpd_pr_eng_wca10",
"mpd_pr_eng_wca11",
"mpd_pr_eng_wca12",
"mpd_pr_eng_ifb",
"mpd_pr_eng_ofb",
"mpd_pr_eng_rtrrpmb",
"mpd_pr_eng_hpa",
"mpd_pr_eng_hpp",
"mpd_pr_eng_hpu",
"mpd_pr_eng_rbe1ng",
"mpd_pr_eng_rbe1np",
"mpd_pr_eng_rbe1op",
"mpd_pr_eng_rbe2ng",
"mpd_pr_eng_rbe2np",
"mpd_pr_eng_rbe2op",
"mpd_pr_eng_1accpsi1",
"mpd_pr_eng_1accpsi2",
"mpd_pr_eng_1accpsi3",
"mpd_pr_eng_1accpsi4",
"mpd_pr_eng_1utipsi1",
"mpd_pr_eng_1utipsi2",
"mpd_pr_eng_1utipsi3",
"mpd_pr_eng_1utipsi4",
"mpd_pr_eng_1pripsi1",
"mpd_pr_eng_1pripsi2",
"mpd_pr_eng_1pripsi3",
"mpd_pr_eng_1pripsi4",
"mpd_pl_eng_1npb",
"mpd_pl_eng_1tgt_1",
"mpd_pl_eng_1tgt1",
"mpd_pl_eng_1tgt2",
"mpd_pl_eng_1tgt3",
"mpd_pl_eng_1tgtb",
"mpd_pl_eng_1tgtbg",
"mpd_pl_eng_2npb",
"mpd_pl_eng_2tgt_1",
"mpd_pl_eng_2tgt1",
"mpd_pl_eng_2tgt2",
"mpd_pl_eng_2tgt3",
"mpd_pl_eng_2tgtb",
"mpd_pl_eng_2tgtbg",
"mpd_pl_eng_1trq1",
"mpd_pl_eng_1trq2",
"mpd_pl_eng_1trqb",
"mpd_pl_eng_1trqbg",
"mpd_pl_eng_2trq1",
"mpd_pl_eng_2trq2",
"mpd_pl_eng_2trqb",
"mpd_pl_eng_2trqbg",
"mpd_pl_eng_ltrqbar",
"mpd_pl_eng_accpsi1",
"mpd_pl_eng_accpsi2",
"mpd_pl_eng_accpsi3",
"mpd_pl_eng_accpsi4",
"mpd_pl_eng_utipsi1",
"mpd_pl_eng_utipsi2",
"mpd_pl_eng_utipsi3",
"mpd_pl_eng_utipsi4",
"mpd_pl_eng_pripsi1",
"mpd_pl_eng_pripsi2",
"mpd_pl_eng_pripsi3",
"mpd_pl_eng_pripsi4",
"mpd_pl_eng_e1ng1",
"mpd_pl_eng_e1ng2",
"mpd_pl_eng_e1ng3",
"mpd_pl_eng_e2ng1",
"mpd_pl_eng_e2ng2",
"mpd_pl_eng_e2ng3",
"mpd_pl_eng_e1np1",
"mpd_pl_eng_e1np2",
"mpd_pl_eng_e1np3",
"mpd_pl_eng_e2np1",
"mpd_pl_eng_e2np2",
"mpd_pl_eng_e2np3",
"mpd_pl_eng_oil1psi1",
"mpd_pl_eng_oil1psi2",
"mpd_pl_eng_oil1psi3",
"mpd_pl_eng_oil2psi1",
"mpd_pl_eng_oil2psi2",
"mpd_pl_eng_oil2psi3",
"mpd_pl_eng_rrpm1",
"mpd_pl_eng_rrpm2",
"mpd_pl_eng_rrpm3",
"mpd_pl_eng_wca1",
"mpd_pl_eng_wca2",
"mpd_pl_eng_wca3",
"mpd_pl_eng_wca4",
"mpd_pl_eng_wca5",
"mpd_pl_eng_wca6",
"mpd_pl_eng_wca7",
"mpd_pl_eng_wca8",
"mpd_pl_eng_wca9",
"mpd_pl_eng_wca10",
"mpd_pl_eng_wca11",
"mpd_pl_eng_wca12",
"mpd_pl_eng_ifb",
"mpd_pl_eng_ofb",
"mpd_pl_eng_rtrrpmb",
"mpd_pl_eng_hpa",
"mpd_pl_eng_hpp",
"mpd_pl_eng_hpu",
"mpd_pl_eng_rbe1ng",
"mpd_pl_eng_rbe1np",
"mpd_pl_eng_rbe1op",
"mpd_pl_eng_rbe2ng",
"mpd_pl_eng_rbe2np",
"mpd_pl_eng_rbe2op",
"mpd_pl_eng_1accpsi1",
"mpd_pl_eng_1accpsi2",
"mpd_pl_eng_1accpsi3",
"mpd_pl_eng_1accpsi4",
"mpd_pl_eng_1utipsi1",
"mpd_pl_eng_1utipsi2",
"mpd_pl_eng_1utipsi3",
"mpd_pl_eng_1utipsi4",
"mpd_pl_eng_1pripsi1",
"mpd_pl_eng_1pripsi2",
"mpd_pl_eng_1pripsi3",
"mpd_pl_eng_1pripsi4",
"p_ufd_clk1",
"p_ufd_clk2",
"p_ufd_clk3",
"p_ufd_clk4",
"p_ufd_clk5",
"p_ufd_clk6",
"p_ufd_fl1",
"p_ufd_fl2",
"p_ufd_fl3",
"p_ufd_fl4",
"p_ufd_adv1",
"p_ufd_adv2",
"p_ufd_adv3",
"p_ufd_adv4",
"p_ufd_adv5",
"p_ufd_cau1",
"p_ufd_cau2",
"p_ufd_cau3",
"p_ufd_cau4",
"p_ufd_cau5",
"p_ufd_wrn1",
"p_ufd_wrn2",
"p_ufd_wrn3",
"p_ufd_wrn4",
"p_ufd_wrn5",
"g_ufd_clk1",
"g_ufd_clk2",
"g_ufd_clk3",
"g_ufd_clk4",
"g_ufd_clk5",
"g_ufd_clk6",
"g_ufd_fl1",
"g_ufd_fl2",
"g_ufd_fl3",
"g_ufd_fl4",
"g_ufd_adv1",
"g_ufd_adv2",
"g_ufd_adv3",
"g_ufd_adv4",
"g_ufd_adv5",
"g_ufd_cau1",
"g_ufd_cau2",
"g_ufd_cau3",
"g_ufd_cau4",
"g_ufd_cau5",
"g_ufd_wrn1",
"g_ufd_wrn2",
"g_ufd_wrn3",
"g_ufd_wrn4",
"g_ufd_wrn5",
"mpd_pr_tsd_dist1",
"mpd_pr_tsd_imap",
"mpd_pr_tsd_map",
"mpd_pr_tsd_phase",
"mpd_pl_tsd_dist1",
"mpd_pl_tsd_imap",
"mpd_pl_tsd_map",
"mpd_pl_tsd_phase",
			"mpd_gr_obj1",
			"mpd_gr_obj2",
			"mpd_gr_obj3",
			"mpd_gr_obj4",
			"mpd_gr_obj5",
			"mpd_gr_obj6",
			"mpd_gr_obj7",
			"mpd_gr_obj8",
			"mpd_gr_obj9",
			"mpd_gr_obj10",
			"mpd_gr_obj11",
			"mpd_gr_obj12",
			"mpd_gr_obj13",
			"mpd_gr_obj14",
			"mpd_gr_obj15",
			"mpd_gr_obj16",
			"mpd_gr_obj17",
			"mpd_gr_obj18",
			"mpd_gr_obj19",
			"mpd_gr_obj20",
			"mpd_gr_obj21",
			"mpd_gr_obj22",
			"mpd_gr_obj23",
			"mpd_gr_obj24",
			"mpd_gr_obj25",
			"mpd_gr_obj26",
			"mpd_gr_obj27",
			"mpd_gr_obj28",
			"mpd_gr_obj29",
			"mpd_gr_obj30",
			"mpd_gr_obj31",
			"mpd_gr_obj32",
			"mpd_gr_tsd_mmap",
			"mpd_gr_tsd_base",
			"mpd_pr_tsd_mmap",
			"mpd_pr_tsd_base",
			"pod_m260_1",
			"pod_m260_2",
			"pod_m260_3",
			"pod_m260_4",
			"rail_m299_1",
			"rail_m299_2",
			"rail_m299_3",
			"rail_m299_4",
			"mpd_pr_tsd_gspd1",
			"mpd_pr_tsd_gspd2",
			"mpd_pr_tsd_gspd3",
			"mpd_pl_tsd_gspd1",
			"mpd_pl_tsd_gspd2",
			"mpd_pl_tsd_gspd3",
			"mpd_pr_fcraa_wiper",
			"mpd_pr_fcrag_wiper",
			"mpd_pr_fcrag_tnum1",
			"mpd_pr_fcrag_tnum2",
			"mpd_pr_mpd_had_apos",
			"mpd_pr_mpd_had_apos2",
			"mpd_pr_mpd_had_msg1",
			"mpd_pr_mpd_had_msg2",
			"mpd_pr_mpd_had_msg3",
			"mpd_pr_mpd_had_msg4",
			"mpd_pr_mpd_had_msg5",
			"mpd_pr_ase_autpg",
			"mpd_pr_ase_cc1",
			"mpd_pr_ase_cc2",
			"mpd_pr_ase_csel",
			"mpd_pr_ase_dist1",
			"mpd_pr_ase_dist2",
			"mpd_pr_ase_ijaut",
			"mpd_pr_ase_ijoff",
			"mpd_pr_ase_ijon",
			"mpd_pr_ase_rjaut",
			"mpd_pr_ase_rjoff",
			"mpd_pr_ase_rjon",
			"mpd_pr_ase_salvo",
			"mast",
			"longbow",
			"skin_pnvs",
			"skin_hstab",
			"twsus",
			"skin_alq1",
			"skin_alq2",
			"skin_cockpit",
			"skin_cockpitglass",
			"skin_fuse",
			"skin_fuse_ld",
			"skin_lefab",
			"skin_lelight",
			"skin_leng",
			"skin_lgear",
			"skin_lwing",
			"skin_m230",
			"skin_mainrotor",
			"skin_nose",
			"skin_pylon1",
			"skin_pylon2",
			"skin_pylon3",
			"skin_pylon4",
			"skin_refab",
			"skin_relight",
			"skin_reng",
			"skin_rgear",
			"skin_rwing",
			"skin_tads1",
			"skin_tads2",
			"skin_tads3",
			"skin_tailboom",
			"skin_tailboom_ld",
			"skin_tailrotor",
			"skin_vtail",
			"skin_refab_d_heavy",
			"skin_refab_d_cata",
			"skin_lefab_d_heavy",
			"skin_lefab_d_cata",
			"mpd_brt",
			"in_backlight",
			"in_backlight2",
			"in_lt_fire1",
			"in_lt_fire1rdy",
			"in_lt_fire2",
			"in_lt_fire2rdy",
			"in_lt_fireapu",
			"in_lt_fireapurdy",
			"in_lt_firepdis",
			"in_lt_firerdis",
			"in_lt_mstrcau",
			"in_lt_mstrwrn",
			"dam_fuse",
			"dam_gdoor",
			"dam_hstab",
			"dam_lefab",
			"dam_leng",
			"dam_lgear",
			"dam_lwing",
			"dam_nose",
			"dam_pdoor",
			"dam_pnvs",
			"dam_pylon1",
			"dam_pylon2",
			"dam_pylon3",
			"dam_pylon4",
			"dam_refab",
			"dam_reng",
			"dam_rgear",
			"dam_rwing",
			"dam_tads",
			"dam_tailboom",
			"dam_vtail",
			"mdam_fuse",
			"mdam_gdoor",
			"mdam_hstab",
			"mdam_lefab",
			"mdam_leng",
			"mdam_lgear",
			"mdam_lwing",
			"mdam_nose",
			"mdam_pdoor",
			"mdam_pnvs",
			"mdam_pylon1",
			"mdam_pylon2",
			"mdam_pylon3",
			"mdam_pylon4",
			"mdam_refab",
			"mdam_reng",
			"mdam_rgear",
			"mdam_rwing",
			"mdam_tads",
			"mdam_tailboom",
			"mdam_vtail",
			"tr_blades",
			"tr_blur",
			"mr_blades",
			"mr_blur",
			"mpd_pr_eng_back",
			"hdam_tr",
			"hdam_rtr",
			"skin_tailboom_tear"
};
		transportSoldier=2;
		cargoAction[]={"fza_ah64_leftcargo","fza_ah64_rightcargo"};
		accuracy=0.5;
		simulation=helicopterRTD;
		driverAction = "fza_ah64_pilot";
		//enableSweep=1;
		minMainRotorDive = 0;
		maxMainRotorDive = 0;
		neutralMainRotorDive = 0;
		minBackRotorDive = 0;
		maxBackRotorDive = 0;
		neutralBackRotorDive = 0;
		crewVulnerable = 0;
		gunnerUsesPilotView = false;
		commanderUsesPilotView = false;
		crew="B_Helipilot_F";
		memorypointdriveroptics[] = {"driverview", "pilot"};
		//driveropticsmodel = "A3\Weapons_F\Reticle\Optics_Commander_01_w_F.p3d";
		driveropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
		driverOpticsColor[] = {1,1,1,1};
		//driverOpticsColor[] = {0.231,0.914,0.184,1};
		laserScanner=1;
		nightVision=1;
		mainRotorSpeed = 1;
		threat[] = {1,1,0.700000};
		//ARMOR VALUES
		armor=60;
		armorHull=0.5;
		armorEngine=0.6;
		armorAvionics=1.4;
		armorVRotor=0.5;
		armorHRotor=0.7;
		armorMissiles=1.6;
		armorGlass=1.0;
		//memorypointcmdir[] = {"chaff_launcher1_dir"};
		memorypointcm[] = {"chaff_launcher1"};
		memorypointcmdir[] = {"flare_1_end"};
		weapons[] = {"fza_CMFlareLauncher"};
		magazines[] = {"60Rnd_CMFlareMagazine"};
		lockdetectionsystem = "8+4";
		incommingmissliedetectionsystem = 16;
		selectionHRotorStill = "velka vrtule staticka";
		selectionHRotorMove = "velka vrtule blur";
		selectionVRotorStill = "mala vrtule staticka";
		selectionVRotorMove = "mala vrtule blur";
		memoryPointLMissile = "l strela";
		memoryPointRMissile = "p strela";
		memoryPointLRocket = "l raketa";
		memoryPointRRocket = "p raketa";
		gunAimDown = 0;
		memoryPointsGetInDriver = "pos driver";
		memoryPointsGetInDriverDir = "pos driver dir";
		memoryPointsGetInCargo = "pos cargo";
		memoryPointsGetInCargoDir = "pos cargo dir";
		envelope[]=
		{
		0.0,0.6,1.6,3.2,3.8,5.0,5.25,5.4,5.6,5.7,5.8,5.9,6.0,4.0,1.5 // lift
		};
		/*
		class RenderTargets
		{
			class MFD1
			{
				rendertarget = "fza_ah64_pnvsrtarget0";
				class View01
				{
					fov = 0.2;
					pointdirection = "driverview_dir";
					pointposition = "driverview";
					renderquality = 0;
					rendervisionmode = 2;
				};
			};
		};
		*/

		class Turrets
		{
			class MainTurret: NewTurret
			{
				//gunnerAction = "fza_ah64_pilot";
				//gunnerInAction = "fza_ah64_pilot";
				gunnerAction = "fza_ah64_copilot";
				gunnerGetInAction = "GetInHigh";
				gunnerGetOutAction = "GetOutHigh";
				primary = 1;
				primaryGunner = 1;
				stabilizedInAxes = 3;
				//opticStabilized=1;
				//directionStabilized = 1;
				//horizontallyStabilized = 1;
				//weapons[] = {"fza_m230","fza_m261_14","fza_agm114_23_8"}; //DEFAULT LOADOUT 8xSAL2
				//magazines[] = {"fza_m230_1200","fza_m261_m151_14_38","fza_agm114k_23_8"}; //LOADOUT 4xRF + 4xSAL2
				//weapons[] = {"fza_m230","fza_m261_14","fza_atas_2","fza_agm114_3_4","fza_agm114_2_4"}; //LOADOUT 4xRF + 4xSAL2
				//magazines[] = {"fza_m230_1200","fza_m261_m151_14_38","fza_atas_2","fza_agm114k_3_4","fza_agm114l_2_4"}; //LOADOUT 4xRF + 4xSAL2
				//weapons[] = {"fza_m230","fza_m261_14","fza_atas_2","fza_agm114_3_ul","fza_agm114_3_ur","fza_agm114_3_ll","fza_agm114_3_lr","fza_agm114_2_ul","fza_agm114_2_ur","fza_agm114_2_ll","fza_agm114_2_lr"}; //LOADOUT DIAGONAL 4xRF + 4xSAL2
				//magazines[] = {"fza_m230_1200","fza_m261_m151_14_38","fza_atas_2","fza_agm114k_3_ul","fza_agm114k_3_lr","fza_agm114l_3_ur","fza_agm114l_3_ll","fza_agm114l_2_lr","fza_agm114l_2_ul","fza_agm114k_2_ll","fza_agm114k_2_ur"}; //LOADOUT DIAGONAL 4xRF + 4xSAL2
			    weapons[] = {"fza_ma_safe","fza_m230","fza_m261_14","fza_agm114_3_ul","fza_agm114_3_ur","fza_agm114_3_ll","fza_agm114_3_lr","fza_agm114_2_ul","fza_agm114_2_ur","fza_agm114_2_ll","fza_agm114_2_lr"};
				magazines[] = {"fza_safe","fza_m230_300","fza_m261_m151_14_38","fza_agm114k_3_ul","fza_agm114l_3_lr","fza_agm114k_3_ur","fza_agm114l_3_ll","fza_agm114l_2_lr","fza_agm114k_2_ul","fza_agm114l_2_ll","fza_agm114k_2_ur"};
				memoryPointsGetInGunner = "pos gunner";
			    memoryPointsGetInGunnerDir = "pos gunner dir";
			    memoryPointGun = "kulas";
				memoryPointGunnerOptics = "gunnerview";
				body = "mainTurret";
				gun = "mainGun";
				animationsourcebody = "tads_tur";
				animationsourcegun = "tads";
				gunnerOpticsModel = "";
				gunnerOpticsColor[] = {1,1,1,1};
				minElev = -60;
				maxElev = 30;
				initElev= 0;
				minTurn = -120;
				maxTurn = 120;
				initTurn = 0;
				minGunElev = -60;
				maxGunElev = 30;
				minGunTurn = -120;
				maxGunTurn = 120;
				minGunTurnAI = -120;
				maxGunTurnAI = 120;
				maxhorizontalrotspeed = 2;
				maxverticalrotspeed = 2;
				commanding = -1;
				gunnerForceOptics = 0;
				startEngine=0;
				outGunnerMayFire = 1;
				ejectdeadgunner = 0;
				viewgunnershadow = 1;
				viewgunnershadowamb = 1;
				viewgunnershadowdiff = 1;
				turretinfotype = "RscUnitInfoNoHUD";
				turretFollowFreeLook = 0;
				discretedistance[] = {1, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000};
				discretedistanceinitindex = 3;
				isCopilot = 1;
				usePiP=1;
				class HitPoints
				{
					class HitTurret
					{
						armor = 0.5;
						material = 51;
						name = "tads_tur";
						visual = "tads_tur";
						passThrough = 1;
					};
					class HitGun
					{
						armor = 1;
						material = 52;
						name = "tads";
						visual = "tads";
						passThrough = 1;
					};
				};
				class OpticsIn
				{
					class Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						//stabilizedInAxes = 3;
						opticStabilized=1;
						initanglex = 0;
						initangley = 0;
						initfov = 0.466;
						maxanglex = 30;
						maxangley = 120;
						maxfov = 0.466;
						minanglex = -60;
						minangley = -120;
						minfov = 0.466;
						opticsdisplayname = "W";
						thermalmode[] = {0,1};
						visionmode[] = {"Normal","Ti","NVG"};
					};
					class Medium: Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						stabilizedInAxes = 3;
						opticStabilized=1;
						initfov = 0.09;
						maxfov = 0.09;
						minfov = 0.09;
						opticsdisplayname = "M";
					};
					class Narrow: Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						stabilizedInAxes = 3;
						opticStabilized=1;
						initfov = 0.01;
						maxfov = 0.01;
						minfov = 0.01;
						opticsdisplayname = "N";
					};
				};
				class OpticsOut
				{
					class Monocular //FOV CPG
					{
						gunneropticseffect[] = {};
						gunneropticsmodel = "";
						initfov = 0.7;
						initanglex = 0;
						initangley = 0;
						minfov = 0.4;
						maxfov = 0.7;
						minanglex = -60;
						maxanglex = 30;
						minangley = -120;
						maxangley = 120;
						visionmode[] = {"Normal", "NVG"};
					};
				};
				class ViewGunner
				{
					initFov=0.7;
					minFov=0.400000;
					maxFov=0.7;
					initAngleX=0;
					minAngleX=-75;
					maxAngleX=75;
					initAngleY=0;
					minAngleY=-120;
					maxAngleY=120;
					maxmovex = 0.15;
					maxmovey = 0.1;
					maxmovez = 0.1;
					minmovex = -0.15;
					minmovey = -0.1;
					minmovez = -0.1;
				};
			};
		};
		class Library
		{
			libTextDesc = "The AH-64D Block II is an anti-tank attack helicopter. Defining characteristics are: Four bladed main rotor, X-shaped tail rotor, a boxy cockpit with two distinct bays on the sides, two stub wings with two pylons each, two main wheels and a tail wheel, a chin mounted turret, and a long rounded tailboom with a stabilizator at the rear. Production began in 1982 and the first unit was deployed in 1986. By 1993, the US Army had over 800 Apaches in service. It was firsted used in combat during Operation Just Cause, the invasion of Panama in 1989 where some drawbacks were encountered (primarily with the avionics). During Desert Storm in 1991, Apaches performed the first strike of that conflict by destroying Iraqi early warning radars. More drawbacks were encountered in Desert Storm, some of which were: limited navigation capabilities, high maintenance, and intolerance to desert conditions. AH-64As went through some modernization upgrades, but the AH-64A has been phased out of active US Army service in favor of the AH-64D, and now only National Guard and Reserve units operate the A model. The AH-64D has two General Electric T700-GE-701C engines producing a total of 3392shp, giving the aircraft a maximum clean speed of about 227mph (365kmh). This speed comes down to about 300kmh loaded. Combat endurance is about 2 hours with standard loads. It is armed with a M230 30mm Chain Gun cannon by default, with provisions for AGM-114 HELLFIRE missiles and 2.75in HYDRA-70 rockets. Experimentally it has used the Stinger missile, Sidearm missile, Sidewinder missile, and Starstreak missile. The US Army has not used any of these weapons operationally with the Apache.";
		};
		class HeadLimits
		{
			initanglex = 0;
			initangley = 0;
			maxanglex = 40;
			maxangley = 90;
			maxanglez = 45;
			minanglex = -40;
			minangley = -90;
			minanglez = -45;
			rotzradius = 0.2;
		};
		class ViewPilot
		{
			initFov=0.700000;
			minFov=0.400000;
			maxFov=0.850000;
			initAngleX=0;
			minAngleX=-75;
			maxAngleX=50;
			initAngleY=0;
			minAngleY=-150;
			maxAngleY=150;
			maxmovex = 0.15;
			maxmovey = 0.1;
			maxmovez = 0.1;
			minmovex = -0.15;
			minmovey = -0.1;
			minmovez = -0.1;
		};
		class ViewOptics
		{
			//aimingMarkElevSpeed = 0.5; //test
			//aimingMarkTurnSpeed = 0.5; //test
			stabilizedInAxes = 3;
			initAngleX=0;
			minAngleX=-90;
			maxAngleX=90;
			initAngleY=0;
			minAngleY=-45;
			maxAngleY=20;
			initFov=0.7;
			minFov=0.01; //test
			maxFov=0.7;
			thermalmode[] = {2};
			visionmode[] = {"Normal","Ti","NVG"};
		};
		class AnimationSources
		{
		class pnvs
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class pnvs_vert
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class tads_stow
		{
			source = "user";
			animPeriod = 1;
			initPhase=0;
		};
		class m230_recoil
		{
			source = "reload";
			weapon = "fza_m230";
		};
		//EXPERIMENTAL//
		class mainTurret
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class maingun
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class pylon1
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class pylon2
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class pylon3
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class pylon4
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		//ENDEXPERIMENTAL//
		class swashplate_up_tns
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swashplate_up_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swashplate_up_bank
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swashplate_dn_tns
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swashplate_dn_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swashplate_dn_bank
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class mr_act_tns
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm1
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm1_t
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm2
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm3
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm3_t
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class swup_arm4
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class trsw
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class tr_blade1_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class tr_blade2_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class tr_blade3_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class tr_blade4_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
		class blade1_pitch
		{
			source = "user";
			animPeriod = 0.1;
			initPhase=0;
		};
class blade1_flap
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
/*
class blade1_rise1
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade1_rise2
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade1_rise3
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade1_rise4
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade1_rise5
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
*/
class blade2_pitch
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade2_flap
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
/*
class blade2_rise1
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade2_rise2
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade2_rise3
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade2_rise4
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade2_rise5
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
*/
class blade3_pitch
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade3_flap
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
/*
class blade3_rise1
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade3_rise2
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade3_rise3
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade3_rise4
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade3_rise5
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
*/
class blade4_pitch
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade4_flap
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
/*
class blade4_rise1
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade4_rise2
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade4_rise3
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade4_rise4
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
class blade4_rise5
{
source = "user";
animPeriod = 0.1;
initPhase=0;
};
*/
//////weapons///////////
		class pod_m260_1
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class pod_m260_2
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class pod_m260_3
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class pod_m260_4
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class rail_m299_1
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class rail_m299_2
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class rail_m299_3
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		class rail_m299_4
		{
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
		};
		////////RADAR///////
		class longbow
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
			////////////////////////////////
			///////////COCKPIT//////////////
			////////////////////////////////
			class plt_eng1_start
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
				sound = "eng1_start_sound";
            };
			class plt_eng2_start
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
				sound = "eng2_start_sound";
            };
			class plt_rtrbrake
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
				sound = "rtrbrake_sound";
            };
			class plt_nvsmode
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class plt_batt
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class plt_apu
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class plt_eng1_throttle
            {
				source = "user";
				animPeriod = 1.5;
				initPhase=0;
            };
			class plt_eng2_throttle
            {
				source = "user";
				animPeriod = 1.5;
				initPhase=0;
            };
			class mpd_pl_obj1_v
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pl_obj1_h
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pl_obj1_z
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pl_obj2_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj2";
            };
			class mpd_pl_obj2_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj2";
            };
			class mpd_pl_obj2_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj2";
            };
			class mpd_pl_obj3_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj3";
            };
			class mpd_pl_obj3_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj3";
            };
			class mpd_pl_obj3_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj3";
            };
			class mpd_pl_obj4_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj4";
            };
			class mpd_pl_obj4_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj4";
            };
			class mpd_pl_obj4_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj4";
            };
			class mpd_pl_obj5_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj5";
            };
			class mpd_pl_obj5_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj5";
            };
			class mpd_pl_obj5_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj5";
            };
			class mpd_pl_obj6_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj6";
            };
			class mpd_pl_obj6_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj6";
            };
			class mpd_pl_obj6_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj6";
            };
			class mpd_pl_obj7_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj7";
            };
			class mpd_pl_obj7_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj7";
            };
			class mpd_pl_obj7_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj7";
            };
			class mpd_pl_obj8_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj8";
            };
			class mpd_pl_obj8_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj8";
            };
			class mpd_pl_obj8_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj8";
            };
			class mpd_pl_obj9_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj9";
            };
			class mpd_pl_obj9_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj9";
            };
			class mpd_pl_obj9_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj9";
            };
			class mpd_pl_obj10_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj10";
            };
			class mpd_pl_obj10_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj10";
            };
			class mpd_pl_obj10_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj10";
            };
			class mpd_pl_obj11_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj11";
            };
			class mpd_pl_obj11_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj11";
            };
			class mpd_pl_obj11_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj11";
            };
			class mpd_pl_obj12_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj12";
            };
			class mpd_pl_obj12_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj12";
            };
			class mpd_pl_obj12_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj12";
            };
			class mpd_pl_obj13_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj13";
            };
			class mpd_pl_obj13_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj13";
            };
			class mpd_pl_obj13_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj13";
            };
			class mpd_pl_obj14_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj14";
            };
			class mpd_pl_obj14_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj14";
            };
			class mpd_pl_obj14_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj14";
            };
			class mpd_pl_obj15_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj15";
            };
			class mpd_pl_obj15_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj15";
            };
			class mpd_pl_obj15_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj15";
            };
			class mpd_pl_obj16_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj16";
            };
			class mpd_pl_obj16_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj16";
            };
			class mpd_pl_obj16_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj16";
            };
			class mpd_pl_obj17_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj17";
            };
			class mpd_pl_obj17_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj17";
            };
			class mpd_pl_obj17_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj17";
            };
			class mpd_pl_obj18_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj18";
            };
			class mpd_pl_obj18_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj18";
            };
			class mpd_pl_obj18_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj18";
            };
			class mpd_pl_obj19_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj19";
            };
			class mpd_pl_obj19_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj19";
            };
			class mpd_pl_obj19_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj19";
            };
			class mpd_pl_obj20_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj20";
            };
			class mpd_pl_obj20_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj20";
            };
			class mpd_pl_obj20_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj20";
            };
			class mpd_pl_obj21_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj21";
            };
			class mpd_pl_obj21_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj21";
            };
			class mpd_pl_obj21_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj21";
            };
			class mpd_pl_obj22_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj22";
            };
			class mpd_pl_obj22_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj22";
            };
			class mpd_pl_obj22_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj22";
            };
			class mpd_pl_obj23_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj23";
            };
			class mpd_pl_obj23_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj23";
            };
			class mpd_pl_obj23_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj23";
            };
			class mpd_pl_obj24_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj24";
            };
			class mpd_pl_obj24_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj24";
            };
			class mpd_pl_obj24_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj24";
            };
			class mpd_pl_obj25_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj25";
            };
			class mpd_pl_obj25_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj25";
            };
			class mpd_pl_obj25_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj25";
            };
			class mpd_pl_obj26_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj26";
            };
			class mpd_pl_obj26_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj26";
            };
			class mpd_pl_obj26_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj26";
            };
			class mpd_pl_obj27_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj27";
            };
			class mpd_pl_obj27_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj27";
            };
			class mpd_pl_obj27_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj27";
            };
			class mpd_pl_obj28_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj28";
            };
			class mpd_pl_obj28_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj28";
            };
			class mpd_pl_obj28_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj28";
            };
			class mpd_pl_obj29_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj29";
            };
			class mpd_pl_obj29_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj29";
            };
			class mpd_pl_obj29_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj29";
            };
			class mpd_pl_obj30_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj30";
            };
			class mpd_pl_obj30_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj30";
            };
			class mpd_pl_obj30_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj30";
            };
			class mpd_pl_obj31_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj31";
            };
			class mpd_pl_obj31_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj31";
            };
			class mpd_pl_obj31_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj31";
            };
			class mpd_pl_obj32_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_obj32";
            };
			class mpd_pl_obj32_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_obj32";
            };
			class mpd_pl_obj32_z : mpd_pl_obj1_z
            {
                selection = "mpd_pl_obj32";
            };
			////LMPDOBJS//////
			class mpd_gr_obj1_v
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_obj1_h
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_obj1_z
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_obj2_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj2";
            };
			class mpd_gr_obj2_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj2";
            };
			class mpd_gr_obj2_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj2";
            };
			class mpd_gr_obj3_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj3";
            };
			class mpd_gr_obj3_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj3";
            };
			class mpd_gr_obj3_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj3";
            };
			class mpd_gr_obj4_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj4";
            };
			class mpd_gr_obj4_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj4";
            };
			class mpd_gr_obj4_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj4";
            };
			class mpd_gr_obj5_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj5";
            };
			class mpd_gr_obj5_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj5";
            };
			class mpd_gr_obj5_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj5";
            };
			class mpd_gr_obj6_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj6";
            };
			class mpd_gr_obj6_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj6";
            };
			class mpd_gr_obj6_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj6";
            };
			class mpd_gr_obj7_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj7";
            };
			class mpd_gr_obj7_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj7";
            };
			class mpd_gr_obj7_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj7";
            };
			class mpd_gr_obj8_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj8";
            };
			class mpd_gr_obj8_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj8";
            };
			class mpd_gr_obj8_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj8";
            };
			class mpd_gr_obj9_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj9";
            };
			class mpd_gr_obj9_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj9";
            };
			class mpd_gr_obj9_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj9";
            };
			class mpd_gr_obj10_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj10";
            };
			class mpd_gr_obj10_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj10";
            };
			class mpd_gr_obj10_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj10";
            };
			class mpd_gr_obj11_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj11";
            };
			class mpd_gr_obj11_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj11";
            };
			class mpd_gr_obj11_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj11";
            };
			class mpd_gr_obj12_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj12";
            };
			class mpd_gr_obj12_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj12";
            };
			class mpd_gr_obj12_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj12";
            };
			class mpd_gr_obj13_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj13";
            };
			class mpd_gr_obj13_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj13";
            };
			class mpd_gr_obj13_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj13";
            };
			class mpd_gr_obj14_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj14";
            };
			class mpd_gr_obj14_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj14";
            };
			class mpd_gr_obj14_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj14";
            };
			class mpd_gr_obj15_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj15";
            };
			class mpd_gr_obj15_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj15";
            };
			class mpd_gr_obj15_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj15";
            };
			class mpd_gr_obj16_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj16";
            };
			class mpd_gr_obj16_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj16";
            };
			class mpd_gr_obj16_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj16";
            };
			class mpd_gr_obj17_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj17";
            };
			class mpd_gr_obj17_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj17";
            };
			class mpd_gr_obj17_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj17";
            };
			class mpd_gr_obj18_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj18";
            };
			class mpd_gr_obj18_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj18";
            };
			class mpd_gr_obj18_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj18";
            };
			class mpd_gr_obj19_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj19";
            };
			class mpd_gr_obj19_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj19";
            };
			class mpd_gr_obj19_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj19";
            };
			class mpd_gr_obj20_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj20";
            };
			class mpd_gr_obj20_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj20";
            };
			class mpd_gr_obj20_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj20";
            };
			class mpd_gr_obj21_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj21";
            };
			class mpd_gr_obj21_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj21";
            };
			class mpd_gr_obj21_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj21";
            };
			class mpd_gr_obj22_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj22";
            };
			class mpd_gr_obj22_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj22";
            };
			class mpd_gr_obj22_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj22";
            };
			class mpd_gr_obj23_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj23";
            };
			class mpd_gr_obj23_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj23";
            };
			class mpd_gr_obj23_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj23";
            };
			class mpd_gr_obj24_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj24";
            };
			class mpd_gr_obj24_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj24";
            };
			class mpd_gr_obj24_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj24";
            };
			class mpd_gr_obj25_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj25";
            };
			class mpd_gr_obj25_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj25";
            };
			class mpd_gr_obj25_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj25";
            };
			class mpd_gr_obj26_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj26";
            };
			class mpd_gr_obj26_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj26";
            };
			class mpd_gr_obj26_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj26";
            };
			class mpd_gr_obj27_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj27";
            };
			class mpd_gr_obj27_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj27";
            };
			class mpd_gr_obj27_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj27";
            };
			class mpd_gr_obj28_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj28";
            };
			class mpd_gr_obj28_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj28";
            };
			class mpd_gr_obj28_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj28";
            };
			class mpd_gr_obj29_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj29";
            };
			class mpd_gr_obj29_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj29";
            };
			class mpd_gr_obj29_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj29";
            };
			class mpd_gr_obj30_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj30";
            };
			class mpd_gr_obj30_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj30";
            };
			class mpd_gr_obj30_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj30";
            };
			class mpd_gr_obj31_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj31";
            };
			class mpd_gr_obj31_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj31";
            };
			class mpd_gr_obj31_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj31";
            };
			class mpd_gr_obj32_v : mpd_gr_obj1_v
            {
                selection = "mpd_gr_obj32";
            };
			class mpd_gr_obj32_h : mpd_gr_obj1_h
            {
                selection = "mpd_gr_obj32";
            };
			class mpd_gr_obj32_z : mpd_gr_obj1_z
            {
                selection = "mpd_gr_obj32";
            };
			////ELMPDOBJS/////
			class mpd_pr_flt_wbear : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_wbear";
            };
			class mpd_pr_flt_rdr : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_rdr";
            };
			class mpd_pr_flt_wp_v : mpd_pl_obj1_v
            {
                selection = "mpd_pr_flt_wp";
            };
			class mpd_pr_flt_wp_h : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_wp";
            };
			class mpd_pr_flt_vvi_v : mpd_pl_obj1_v
            {
                selection = "mpd_pr_flt_vvi";
            };
			class mpd_pr_flt_vvi_h : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_vvi";
            };
			class mpd_pr_flt_turn : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_turn";
            };
			class mpd_pr_flt_slip : mpd_pl_obj1_h
            {
                selection = "mpd_pr_flt_slip";
            };
			class mpd_pl_flt_wbear : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_wbear";
            };
			class mpd_pl_flt_rdr : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_rdr";
            };
			class mpd_pl_flt_wp_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_flt_wp";
            };
			class mpd_pl_flt_wp_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_wp";
            };
			class mpd_pl_flt_vvi_v : mpd_pl_obj1_v
            {
                selection = "mpd_pl_flt_vvi";
            };
			class mpd_pl_flt_vvi_h : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_vvi";
            };
			class mpd_pl_flt_turn : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_turn";
            };
			class mpd_pl_flt_slip : mpd_pl_obj1_h
            {
                selection = "mpd_pl_flt_slip";
            };
			class mpd_pr_eng_ltrqbar : mpd_pl_obj1_v
            {
                selection = "mpd_pr_eng_ltrqbar";
            };
			class mpd_pr_eng_1tgt : mpd_pr_eng_ltrqbar
            {
                selection = "mpd_pr_eng_1tgt";
            };
			class mpd_pr_eng_e1trq : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_e1trq";
            };
			class mpd_pr_eng_e1np : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_e1np";
            };
			class mpd_pr_eng_2tgt : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_2tgt";
            };
			class mpd_pr_eng_e2trq : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_e2trq";
            };
			class mpd_pr_eng_e2np : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_e2np";
            };
			/*
			class mpd_pr_eng_rtrrpm : mpd_pr_eng_1tgt
            {
                selection = "mpd_pr_eng_rtrrpm";
            };
			*/
		//////////////DOORS//////////////////
		class pdoor
		{
			source = "user";
			animPeriod = 1;
			initPhase=0;
		};
		class gdoor
		{
			source = "user";
			animPeriod = 1;
			initPhase=0;
		};
		///////////////ADS//////////////////
		class l_ads_p
        {
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
        };
		class l_ads_b : l_ads_p
        {
			source = "user";
        };
		class l_ads_y : l_ads_p
        {
			source = "user";
        };
		class r_ads_p
        {
			source = "user";
			animPeriod = 0.001;
			initPhase=0;
        };
		class r_ads_b : r_ads_p
        {
			source = "user";
        };
		class r_ads_y : r_ads_p
        {
			source = "user";
        };
		////MOVING MAP TEST/////
			class mpd_gr_mmap_v
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_mmap_h
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_mmap_z
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_mmap_s1
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_mmap_s2
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_gr_mmap_s3
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };

			class mpd_pr_mmap_v
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pr_mmap_h
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pr_mmap_z
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pr_mmap_s1
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pr_mmap_s2
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };
			class mpd_pr_mmap_s3
            {
				source = "user";
				animPeriod = 0.001;
				initPhase=0;
            };

		////MOVING MAP/////
		class mpd_pr_fcraa_wiper
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class mpd_pr_fcrag_wiper
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class mpd_pr_mpd_had_apos_v
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class mpd_pr_mpd_had_apos_h
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
		class mpd_pr_mpd_had_apos2_h
		{
			source = "user";
			animPeriod = 0.01;
			initPhase=0;
		};
	};
		 class MarkerLights
		{
			class PositionWhite
			{
			name = "tail_light";
			ambient[] = {0.1,0.1,0.1};
			color[] = {1,1,1};
			drawLightSize = 0.50;
			drawLightCenterSize = 0.16;
			activeLight = 0;
			blinking = 0;
			dayLight = 0;
			drawLight = 1;
			intensity = 75;
			useFlare = 0;

			class Attenuation {
			constant = 0;
			hardLimitEnd = 1;
			hardLimitStart = 0.75;
			linear = 25;
			quadratic = 50;
			start = 0;
			};
			};

			class PositionGreen: PositionWhite
			{
			name = "zeleny pozicni";
			ambient[] = {0,0.08,0};
			color[] = {0,0.8,0};
			drawLightSize = 0.50;
			drawLightCenterSize = 0.16;
			};

			class PositionRed: PositionWhite
			{
			name = "cerveny pozicni";
			ambient[] = {0.08,0,0};
			color[] = {0.8,0,0};
			drawLightSize = 0.50;
			drawLightCenterSize = 0.16;
			};

			/*class plt_light
			{
			name="plt_light";
			//ambient[] = {0.1,0.1,0.1};
			//color[] = {1,1,1};
			color[]={0.306,0.878,0.349,1};
			ambient[]={0.306,0.878,0.349,1};
			intensity=40;
			drawLightSize = 0.01;
			drawLightCenterSize = 0.001;
			blinking = 0;
			class Attenuation {
			constant = 0;
			hardLimitEnd = 1;
			hardLimitStart = 0.20;
			linear = 25;
			quadratic = 50;
			start = 0;
        };
			}; */

			class ckpt_light
			{
			name="ckpt_light";
			//ambient[] = {0.1,0.1,0.1};
			//color[] = {1,1,1};
			color[]={0.306,0.878,0.349,1};
			ambient[]={0.306,0.878,0.349,1};
			intensity=20;
			drawLightSize = 0.01;
			drawLightCenterSize = 0.001;
			blinking = 0;
			class Attenuation {
			constant = 0;
			hardLimitEnd = 0.60;
			hardLimitStart = 0.20;
			linear = 25;
			quadratic = 50;
			start = 0;
			};
			};

			/*class RedBlinking
			{
				name="bily pozicni blik";
				color[]={0.89999998,0.15000001,0.1};
				ambient[]={0.090000004,0.015,0.0099999998};
				intensity=150;
				blinking=1;
				blinkingPattern[] = {0.1,1.3};
				blinkingPatternGuarantee=0;
				drawLightSize=0.50;
				drawLightCenterSize=0.039999999;
			};*/

			class WhiteBlinking1
			{
			name="cerveny pozicni blik_1";
			//ambient[] = {0.1,0.1,0.1};
			//color[] = {1,1,1};
			color[]={0.89999998,0.15000001,0.1};
			ambient[]={0.090000004,0.015,0.0099999998};
			intensity=2500;
			drawLightSize = 0.50;
			drawLightCenterSize = 0.16;
			blinking = 1;
			blinkingPattern[]={0.03,2.10};
			blinkingPatternGuarantee = 1;
			daylight = 1; //added
			};

			class WhiteBlinking2
			{
			name="cerveny pozicni blik_2";
			//ambient[] = {0.1,0.1,0.1};
			//color[] = {1,1,1};
			color[]={0.89999998,0.15000001,0.1};
			ambient[]={0.090000004,0.015,0.0099999998};
			intensity=2500;
			drawLightSize = 0.50;
			drawLightCenterSize = 0.16;
			blinking = 1;
			blinkingPattern[]={0.03,2};
			blinkingPatternGuarantee = 1;
			daylight = 1;		//added
			};
			};
		class Reflectors
		{

			class Right {

				position = "landing_light";
				direction = "Light_dir";
				hitpoint = "Light_hitpoint";
				selection = "Light";
				//direction = "light_1_dir";
				//hitpoint = "L svetlo";
				//selection = "L svetlo";
				color[] = {0.850000, 0.950000, 1.000000};
				ambient[] = {0.008500, 0.009500, 0.010000};
				intensity = 100000;
				size = 1;
				innerAngle = 15;
				outerAngle = 90;
				coneFadeCoef = 5;
				useFlare = 1;
				flareSize = 1.500000;
				flareMaxDistance = 500;
				daylight = 1;		//added

				/*color[] = {7000,7500,10000};
				ambient[] = {70,75,100};
				intensity = 50;
				size = 1;
				innerAngle = 15;
				outerAngle = 65;
				coneFadeCoef = 10;
				useFlare = 1;
				flareSize = 10;
				flareMaxDistance = 250;
				dayLight = 0;
				position = "landing_light";
				direction = "Light_dir";
				hitpoint = "Light_hitpoint";
				selection = "Light";*/

				class Attenuation {
					start = 0;
					constant = 0;
					linear = 1;
					quadratic = 1;
					hardLimitStart = 100;
					hardLimitEnd = 200;
				};
			};
		};

	};
	class fza_ah64d_b2e_nr: fza_ah64d_b2e
	{
		side=1;
		scope=2; //UNMASKED FROM EDITOR
		author="Franze, Nodunit, Sacha 'Voodoo' Oropeza, Zeitsev & Community";
		displayName="AH-64D Apache";
		hiddenselections[]=
		{
			"pod1_m151_1",
			"pod1_m151_2",
			"pod1_m151_3",
			"pod1_m151_4",
			"pod1_m151_5",
			"pod1_m151_6",
			"pod1_m151_7",
			"pod1_m151_8",
			"pod1_m151_9",
			"pod1_m151_10",
			"pod1_m151_11",
			"pod1_m151_12",
			"pod1_m151_13",
			"pod1_m151_14",
			"pod1_m151_15",
			"pod1_m151_16",
			"pod1_m151_17",
			"pod1_m151_18",
			"pod1_m151_19",
			"pod1_m229_1",
			"pod1_m229_2",
			"pod1_m229_3",
			"pod1_m229_4",
			"pod1_m229_5",
			"pod1_m229_6",
			"pod1_m229_7",
			"pod1_m229_8",
			"pod1_m229_9",
			"pod1_m229_10",
			"pod1_m229_11",
			"pod1_m229_12",
			"pod1_m229_13",
			"pod1_m229_14",
			"pod1_m229_15",
			"pod1_m229_16",
			"pod1_m229_17",
			"pod1_m229_18",
			"pod1_m229_19",
			"pod1_m261_1",
			"pod1_m261_2",
			"pod1_m261_3",
			"pod1_m261_4",
			"pod1_m261_5",
			"pod1_m261_6",
			"pod1_m261_7",
			"pod1_m261_8",
			"pod1_m261_9",
			"pod1_m261_10",
			"pod1_m261_11",
			"pod1_m261_12",
			"pod1_m261_13",
			"pod1_m261_14",
			"pod1_m261_15",
			"pod1_m261_16",
			"pod1_m261_17",
			"pod1_m261_18",
			"pod1_m261_19",
			"pod2_m151_1",
			"pod2_m151_2",
			"pod2_m151_3",
			"pod2_m151_4",
			"pod2_m151_5",
			"pod2_m151_6",
			"pod2_m151_7",
			"pod2_m151_8",
			"pod2_m151_9",
			"pod2_m151_10",
			"pod2_m151_11",
			"pod2_m151_12",
			"pod2_m151_13",
			"pod2_m151_14",
			"pod2_m151_15",
			"pod2_m151_16",
			"pod2_m151_17",
			"pod2_m151_18",
			"pod2_m151_19",
			"pod2_m229_1",
			"pod2_m229_2",
			"pod2_m229_3",
			"pod2_m229_4",
			"pod2_m229_5",
			"pod2_m229_6",
			"pod2_m229_7",
			"pod2_m229_8",
			"pod2_m229_9",
			"pod2_m229_10",
			"pod2_m229_11",
			"pod2_m229_12",
			"pod2_m229_13",
			"pod2_m229_14",
			"pod2_m229_15",
			"pod2_m229_16",
			"pod2_m229_17",
			"pod2_m229_18",
			"pod2_m229_19",
			"pod2_m261_1",
			"pod2_m261_2",
			"pod2_m261_3",
			"pod2_m261_4",
			"pod2_m261_5",
			"pod2_m261_6",
			"pod2_m261_7",
			"pod2_m261_8",
			"pod2_m261_9",
			"pod2_m261_10",
			"pod2_m261_11",
			"pod2_m261_12",
			"pod2_m261_13",
			"pod2_m261_14",
			"pod2_m261_15",
			"pod2_m261_16",
			"pod2_m261_17",
			"pod2_m261_18",
			"pod2_m261_19",
			"pod3_m151_1",
			"pod3_m151_2",
			"pod3_m151_3",
			"pod3_m151_4",
			"pod3_m151_5",
			"pod3_m151_6",
			"pod3_m151_7",
			"pod3_m151_8",
			"pod3_m151_9",
			"pod3_m151_10",
			"pod3_m151_11",
			"pod3_m151_12",
			"pod3_m151_13",
			"pod3_m151_14",
			"pod3_m151_15",
			"pod3_m151_16",
			"pod3_m151_17",
			"pod3_m151_18",
			"pod3_m151_19",
			"pod3_m229_1",
			"pod3_m229_2",
			"pod3_m229_3",
			"pod3_m229_4",
			"pod3_m229_5",
			"pod3_m229_6",
			"pod3_m229_7",
			"pod3_m229_8",
			"pod3_m229_9",
			"pod3_m229_10",
			"pod3_m229_11",
			"pod3_m229_12",
			"pod3_m229_13",
			"pod3_m229_14",
			"pod3_m229_15",
			"pod3_m229_16",
			"pod3_m229_17",
			"pod3_m229_18",
			"pod3_m229_19",
			"pod3_m261_1",
			"pod3_m261_2",
			"pod3_m261_3",
			"pod3_m261_4",
			"pod3_m261_5",
			"pod3_m261_6",
			"pod3_m261_7",
			"pod3_m261_8",
			"pod3_m261_9",
			"pod3_m261_10",
			"pod3_m261_11",
			"pod3_m261_12",
			"pod3_m261_13",
			"pod3_m261_14",
			"pod3_m261_15",
			"pod3_m261_16",
			"pod3_m261_17",
			"pod3_m261_18",
			"pod3_m261_19",
			"pod4_m151_1",
			"pod4_m151_2",
			"pod4_m151_3",
			"pod4_m151_4",
			"pod4_m151_5",
			"pod4_m151_6",
			"pod4_m151_7",
			"pod4_m151_8",
			"pod4_m151_9",
			"pod4_m151_10",
			"pod4_m151_11",
			"pod4_m151_12",
			"pod4_m151_13",
			"pod4_m151_14",
			"pod4_m151_15",
			"pod4_m151_16",
			"pod4_m151_17",
			"pod4_m151_18",
			"pod4_m151_19",
			"pod4_m229_1",
			"pod4_m229_2",
			"pod4_m229_3",
			"pod4_m229_4",
			"pod4_m229_5",
			"pod4_m229_6",
			"pod4_m229_7",
			"pod4_m229_8",
			"pod4_m229_9",
			"pod4_m229_10",
			"pod4_m229_11",
			"pod4_m229_12",
			"pod4_m229_13",
			"pod4_m229_14",
			"pod4_m229_15",
			"pod4_m229_16",
			"pod4_m229_17",
			"pod4_m229_18",
			"pod4_m229_19",
			"pod4_m261_1",
			"pod4_m261_2",
			"pod4_m261_3",
			"pod4_m261_4",
			"pod4_m261_5",
			"pod4_m261_6",
			"pod4_m261_7",
			"pod4_m261_8",
			"pod4_m261_9",
			"pod4_m261_10",
			"pod4_m261_11",
			"pod4_m261_12",
			"pod4_m261_13",
			"pod4_m261_14",
			"pod4_m261_15",
			"pod4_m261_16",
			"pod4_m261_17",
			"pod4_m261_18",
			"pod4_m261_19",
			"rail1_114l_1",
			"rail1_114l_2",
			"rail1_114l_3",
			"rail1_114l_4",
			"rail1_114k_1",
			"rail1_114k_2",
			"rail1_114k_3",
			"rail1_114k_4",
			"rail2_114l_1",
			"rail2_114l_2",
			"rail2_114l_3",
			"rail2_114l_4",
			"rail2_114k_1",
			"rail2_114k_2",
			"rail2_114k_3",
			"rail2_114k_4",
			"rail3_114l_1",
			"rail3_114l_2",
			"rail3_114l_3",
			"rail3_114l_4",
			"rail3_114k_1",
			"rail3_114k_2",
			"rail3_114k_3",
			"rail3_114k_4",
			"rail4_114l_1",
			"rail4_114l_2",
			"rail4_114l_3",
			"rail4_114l_4",
			"rail4_114k_1",
			"rail4_114k_2",
			"rail4_114k_3",
			"rail4_114k_4",
			"atas_1",
			"atas_2",
			"fim92_1",
			"fim92_2",
			"fim92_3",
			"fim92_4",
			"auxtank_1",
			"auxtank_2",
			"auxtank_3",
			"auxtank_4",
			"mpd_pl_obj1",
			"mpd_pl_obj2",
			"mpd_pl_obj3",
			"mpd_pl_obj4",
			"mpd_pl_obj5",
			"mpd_pl_obj6",
			"mpd_pl_obj7",
			"mpd_pl_obj8",
			"mpd_pl_obj9",
			"mpd_pl_obj10",
			"mpd_pl_obj11",
			"mpd_pl_obj12",
			"mpd_pl_obj13",
			"mpd_pl_obj14",
			"mpd_pl_obj15",
			"mpd_pl_obj16",
			"mpd_pl_obj17",
			"mpd_pl_obj18",
			"mpd_pl_obj19",
			"mpd_pl_obj20",
			"mpd_pl_obj21",
			"mpd_pl_obj22",
			"mpd_pl_obj23",
			"mpd_pl_obj24",
			"mpd_pl_obj25",
			"mpd_pl_obj26",
			"mpd_pl_obj27",
			"mpd_pl_obj28",
			"mpd_pl_obj29",
			"mpd_pl_obj30",
			"mpd_pl_obj31",
			"mpd_pl_obj32",
			"pl_mpd_back",
			"pr_mpd_back",
			"pl_aft_fuel_n0",
			"pl_aft_fuel_n1",
			"pl_aft_fuel_n2",
			"pl_aft_fuel_n3",
			"pl_aft_line",
			"pl_flow1_fuel_n0",
			"pl_flow1_fuel_n1",
			"pl_flow1_fuel_n2",
			"pl_flow2_fuel_n0",
			"pl_flow2_fuel_n1",
			"pl_flow2_fuel_n2",
			"pl_fwd_fuel_n0",
			"pl_fwd_fuel_n1",
			"pl_fwd_fuel_n2",
			"pl_fwd_fuel_n3",
			"pl_fwd_line",
			"pl_iafs_fuel_n0",
			"pl_iafs_fuel_n1",
			"pl_iafs_fuel_n2",
			"pl_iend_fuel_n0",
			"pl_iend_fuel_n1",
			"pl_iend_fuel_n2",
			"pl_int_fuel_n0",
			"pl_int_fuel_n1",
			"pl_int_fuel_n2",
			"pl_int_fuel_n3",
			"pl_tend_fuel_n0",
			"pl_tend_fuel_n1",
			"pl_tend_fuel_n2",
			"pl_tflow_fuel_n0",
			"pl_tflow_fuel_n1",
			"pl_tflow_fuel_n2",
			"pl_tot_fuel_n0",
			"pl_tot_fuel_n1",
			"pl_tot_fuel_n2",
			"pl_tot_fuel_n3",
			"pl_waux1",
			"pl_waux2",
			"pl_waux3",
			"pl_waux4",
			"pr_aft_fuel_n0",
			"pr_aft_fuel_n1",
			"pr_aft_fuel_n2",
			"pr_aft_fuel_n3",
			"pr_aft_line",
			"pr_flow1_fuel_n0",
			"pr_flow1_fuel_n1",
			"pr_flow1_fuel_n2",
			"pr_flow2_fuel_n0",
			"pr_flow2_fuel_n1",
			"pr_flow2_fuel_n2",
			"pr_fwd_fuel_n0",
			"pr_fwd_fuel_n1",
			"pr_fwd_fuel_n2",
			"pr_fwd_fuel_n3",
			"pr_fwd_line",
			"pr_iafs_fuel_n0",
			"pr_iafs_fuel_n1",
			"pr_iafs_fuel_n2",
			"pr_iend_fuel_n0",
			"pr_iend_fuel_n1",
			"pr_iend_fuel_n2",
			"pr_int_fuel_n0",
			"pr_int_fuel_n1",
			"pr_int_fuel_n2",
			"pr_int_fuel_n3",
			"pr_tend_fuel_n0",
			"pr_tend_fuel_n1",
			"pr_tend_fuel_n2",
			"pr_tflow_fuel_n0",
			"pr_tflow_fuel_n1",
			"pr_tflow_fuel_n2",
			"pr_tot_fuel_n0",
			"pr_tot_fuel_n1",
			"pr_tot_fuel_n2",
			"pr_tot_fuel_n3",
			"pr_waux1",
			"pr_waux2",
			"pr_waux3",
			"pr_waux4",
			"pr_iafs_line",
			"pl_iafs_line",
			"mpd_pr_tsd_wtdir1",
			"mpd_pr_tsd_wtdir2",
			"mpd_pr_tsd_wtdir3",
			"mpd_pr_tsd_eta1",
			"mpd_pr_tsd_eta2",
			"mpd_pr_tsd_eta3",
			"mpd_pr_tsd_eta4",
			"mpd_pr_tsd_hdg1",
			"mpd_pr_tsd_hdg2",
			"mpd_pr_tsd_hdg3",
			"mpd_pr_tsd_dist2",
			"mpd_pr_tsd_dist3",
			"mpd_pr_tsd_dist4",
			"mpd_pr_tsd_z1",
			"mpd_pr_tsd_z2",
			"mpd_pr_tsd_pfzs",
			"mpd_pr_tsd_filter",
			"mpd_pr_tsd_acq",
			"mpd_pr_tsd_wdir1",
			"mpd_pr_tsd_wdir2",
			"mpd_pr_tsd_wdir3",
			"mpd_pr_tsd_wv1",
			"mpd_pr_tsd_wv2",
			"mpd_pl_tsd_wtdir1",
			"mpd_pl_tsd_wtdir2",
			"mpd_pl_tsd_wtdir3",
			"mpd_pl_tsd_eta1",
			"mpd_pl_tsd_eta2",
			"mpd_pl_tsd_eta3",
			"mpd_pl_tsd_eta4",
			"mpd_pl_tsd_hdg1",
			"mpd_pl_tsd_hdg2",
			"mpd_pl_tsd_hdg3",
			"mpd_pl_tsd_dist2",
			"mpd_pl_tsd_dist3",
			"mpd_pl_tsd_dist4",
			"mpd_pl_tsd_z1",
			"mpd_pl_tsd_z2",
			"mpd_pl_tsd_pfzs",
			"mpd_pl_tsd_filter",
			"mpd_pl_tsd_acq",
			"mpd_pl_tsd_wdir1",
			"mpd_pl_tsd_wdir2",
			"mpd_pl_tsd_wdir3",
			"mpd_pl_tsd_wv1",
			"mpd_pl_tsd_wv2",
			"ufd_back",
			"in_lt_apu",
			"gl_tsd_end3",
			"gl_tsd_eta1",
			"gl_tsd_eta2",
			"gl_tsd_eta3",
			"gl_tsd_eta4",
			"gl_tsd_hdg1",
			"gl_tsd_hdg2",
			"gl_tsd_hdg3",
			"gl_tsd_rng1",
			"gl_tsd_rng2",
			"gl_tsd_rng3",
			"gl_tsd_scale1",
			"gl_tsd_scale2",
			"gl_tsd_typ1",
			"gl_tsd_typ2",
			"gl_tsd_typ3",
			"gl_tsd_winddir1",
			"gl_tsd_winddir2",
			"gl_tsd_winddir3",
			"gl_tsd_windspd1",
			"gl_tsd_windspd2",
			"gr_tsd_end1",
			"gr_tsd_end2",
			"gr_tsd_end3",
			"gr_tsd_eta1",
			"gr_tsd_eta2",
			"gr_tsd_eta3",
			"gr_tsd_eta4",
			"gr_tsd_hdg1",
			"gr_tsd_hdg2",
			"gr_tsd_hdg3",
			"gr_tsd_rng1",
			"gr_tsd_rng2",
			"gr_tsd_rng3",
			"gr_tsd_scale1",
			"gr_tsd_scale2",
			"gr_tsd_typ1",
			"gr_tsd_typ2",
			"gr_tsd_typ3",
			"gr_tsd_winddir1",
			"gr_tsd_winddir2",
			"gr_tsd_winddir3",
			"gr_tsd_windspd1",
			"gr_tsd_windspd2",
			"mpd_pl_chaff_qty_1",
			"mpd_pl_chaff_qty_2",
			"mpd_pl_flare1_qty_1",
			"mpd_pl_flare1_qty_2",
			"mpd_pl_flare2_qty_1",
			"mpd_pl_flare2_qty_2",
			"mpd_pl_gun_ammo_1",
			"mpd_pl_gun_ammo_2",
			"mpd_pl_gun_ammo_3",
			"mpd_pl_gun_ammo_4",
			"mpd_pl_gun_burst_1",
			"mpd_pl_gun_burst_2",
			"mpd_pl_gun_burst_3",
			"mpd_pl_gun_burst_4",
			"mpd_pl_gun_burst_5",
			"mpd_pl_gun_sel",
			"mpd_pl_hf_bracket",
			"mpd_pl_hf_desig",
			"mpd_pl_hf_salt",
			"mpd_pl_hf_traj",
			"mpd_pl_hf1_l1",
			"mpd_pl_hf1_l2",
			"mpd_pl_hf1_r1",
			"mpd_pl_hf1_r2",
			"mpd_pl_hf2_l1",
			"mpd_pl_hf2_l2",
			"mpd_pl_hf2_r1",
			"mpd_pl_hf2_r2",
			"mpd_pl_hf3_l1",
			"mpd_pl_hf3_l2",
			"mpd_pl_hf3_r1",
			"mpd_pl_hf3_r2",
			"mpd_pl_hf4_l1",
			"mpd_pl_hf4_l2",
			"mpd_pl_hf4_r1",
			"mpd_pl_hf4_r2",
			"mpd_pl_rg_base",
			"mpd_pl_rg_bracket",
			"mpd_pl_rkt_burst",
			"mpd_pl_rkt_sel_type_1",
			"mpd_pl_rkt_sel_type_2",
			"mpd_pl_rkt_sel_type_3",
			"mpd_pl_rkt_sel_type_4",
			"mpd_pl_rkt_tot_1",
			"mpd_pl_rkt_tot_2",
			"mpd_pl_rkt1_qty_1",
			"mpd_pl_rkt1_qty_2",
			"mpd_pl_rkt1_type",
			"mpd_pl_rkt2_qty_1",
			"mpd_pl_rkt2_qty_2",
			"mpd_pl_rkt2_type",
			"mpd_pl_rkt3_qty_1",
			"mpd_pl_rkt3_qty_2",
			"mpd_pl_rkt3_type",
			"mpd_pl_rkt4_qty_1",
			"mpd_pl_rkt4_qty_2",
			"mpd_pl_rkt4_type",
			"mpd_pl_rkt5_qty_1",
			"mpd_pl_rkt5_qty_2",
			"mpd_pl_rkt5_type",
			"mpd_pl_sight_acq",
			"mpd_pl_wpn_acq",
			"mpd_pl_wpn_ata_sel",
			"mpd_pl_wpn_gun_sel",
			"mpd_pl_wpn_hf_type",
			"mpd_pl_wpn_msl_sel",
			"mpd_pl_wpn_rkt_sel",
			"mpd_pl_wpn_sel",
			"mpd_pl_rkt1",
			"mpd_pl_rkt2",
			"mpd_pl_rkt3",
			"mpd_pl_rkt4",
			"pr_wca_pg",
			"pr_wca_1",
			"pr_wca_2",
			"pr_wca_3",
			"pr_wca_4",
			"pr_wca_5",
			"pr_wca_6",
			"pr_wca_7",
			"pr_wca_8",
			"pr_wca_9",
			"pr_wca_10",
			"pr_wca_11",
			"pr_wca_12",
			"pr_wca_13",
			"pr_wca_14",
			"pr_wca_15",
			"pr_wca_16",
			"pr_wca_17",
			"pr_wca_18",
			"pr_wca_19",
			"pr_wca_20",
			"pr_wca_21",
			"pr_wca_22",
			"pr_wca_23",
			"pr_wca_24",
			"pr_wca_25",
			"pr_wca_26",
			"pl_wca_pg",
			"pl_wca_1",
			"pl_wca_2",
			"pl_wca_3",
			"pl_wca_4",
			"pl_wca_5",
			"pl_wca_6",
			"pl_wca_7",
			"pl_wca_8",
			"pl_wca_9",
			"pl_wca_10",
			"pl_wca_11",
			"pl_wca_12",
			"pl_wca_13",
			"pl_wca_14",
			"pl_wca_15",
			"pl_wca_16",
			"pl_wca_17",
			"pl_wca_18",
			"pl_wca_19",
			"pl_wca_20",
			"pl_wca_21",
			"pl_wca_22",
			"pl_wca_23",
			"pl_wca_24",
			"pl_wca_25",
			"pl_wca_26",
			"gr_wca_pg",
			"gr_wca_1",
			"gr_wca_2",
			"gr_wca_3",
			"gr_wca_4",
			"gr_wca_5",
			"gr_wca_6",
			"gr_wca_7",
			"gr_wca_8",
			"gr_wca_9",
			"gr_wca_10",
			"gr_wca_11",
			"gr_wca_12",
			"gr_wca_13",
			"gr_wca_14",
			"gr_wca_15",
			"gr_wca_16",
			"gr_wca_17",
			"gr_wca_18",
			"gr_wca_19",
			"gr_wca_20",
			"gr_wca_21",
			"gr_wca_22",
			"gr_wca_23",
			"gr_wca_24",
			"gr_wca_25",
			"gr_wca_26",
			"gl_wca_pg",
			"gl_wca_1",
			"gl_wca_2",
			"gl_wca_3",
			"gl_wca_4",
			"gl_wca_5",
			"gl_wca_6",
			"gl_wca_7",
			"gl_wca_8",
			"gl_wca_9",
			"gl_wca_10",
			"gl_wca_11",
			"gl_wca_12",
			"gl_wca_13",
			"gl_wca_14",
			"gl_wca_15",
			"gl_wca_16",
			"gl_wca_17",
			"gl_wca_18",
			"gl_wca_19",
			"gl_wca_20",
			"gl_wca_21",
			"gl_wca_22",
			"gl_wca_23",
			"gl_wca_24",
			"gl_wca_25",
			"gl_wca_26",
			"mpd_pr_flt_balt1",
			"mpd_pr_flt_balt2",
			"mpd_pr_flt_balt3",
			"mpd_pr_flt_balt4",
			"mpd_pr_flt_bank",
			"mpd_pr_flt_gspd1",
			"mpd_pr_flt_gspd2",
			"mpd_pr_flt_gspd3",
			"mpd_pr_flt_hdg",
			"mpd_pr_flt_hdg2",
			"mpd_pr_flt_hi",
			"mpd_pr_flt_hor",
			"mpd_pr_flt_lo",
			"mpd_pr_flt_n20c",
			"mpd_pr_flt_p20c",
			"mpd_pr_flt_ralt1",
			"mpd_pr_flt_ralt2",
			"mpd_pr_flt_ralt3",
			"mpd_pr_flt_raltb",
			"mpd_pr_flt_rdr",
			"mpd_pr_flt_slip",
			"mpd_pr_flt_spd1",
			"mpd_pr_flt_spd2",
			"mpd_pr_flt_spd3",
			"mpd_pr_flt_trq1",
			"mpd_pr_flt_trq2",
			"mpd_pr_flt_trq3",
			"mpd_pr_flt_ttg1",
			"mpd_pr_flt_ttg2",
			"mpd_pr_flt_ttg3",
			"mpd_pr_flt_ttg4",
			"mpd_pr_flt_turn",
			"mpd_pr_flt_vsi",
			"mpd_pr_flt_vvi",
			"mpd_pr_flt_w",
			"mpd_pr_flt_wbear",
			"mpd_pr_flt_wp",
			"mpd_pr_flt_wr1",
			"mpd_pr_flt_wr2",
			"mpd_pr_flt_wr3",
			"mpd_pl_flt_balt1",
			"mpd_pl_flt_balt2",
			"mpd_pl_flt_balt3",
			"mpd_pl_flt_balt4",
			"mpd_pl_flt_bank",
			"mpd_pl_flt_gspd1",
			"mpd_pl_flt_gspd2",
			"mpd_pl_flt_gspd3",
			"mpd_pl_flt_hdg",
			"mpd_pl_flt_hdg2",
			"mpd_pl_flt_hi",
			"mpd_pl_flt_hor",
			"mpd_pl_flt_lo",
			"mpd_pl_flt_n20c",
			"mpd_pl_flt_p20c",
			"mpd_pl_flt_ralt1",
			"mpd_pl_flt_ralt2",
			"mpd_pl_flt_ralt3",
			"mpd_pl_flt_raltb",
			"mpd_pl_flt_rdr",
			"mpd_pl_flt_slip",
			"mpd_pl_flt_spd1",
			"mpd_pl_flt_spd2",
			"mpd_pl_flt_spd3",
			"mpd_pl_flt_trq1",
			"mpd_pl_flt_trq2",
			"mpd_pl_flt_trq3",
			"mpd_pl_flt_ttg1",
			"mpd_pl_flt_ttg2",
			"mpd_pl_flt_ttg3",
			"mpd_pl_flt_ttg4",
			"mpd_pl_flt_turn",
			"mpd_pl_flt_vsi",
			"mpd_pl_flt_vvi",
			"mpd_pl_flt_w",
			"mpd_pl_flt_wbear",
			"mpd_pl_flt_wp",
			"mpd_pl_flt_wr1",
			"mpd_pl_flt_wr2",
			"mpd_pl_flt_wr3",
			"mpd_gl_flt_balt1",
			"mpd_gl_flt_balt2",
			"mpd_gl_flt_balt3",
			"mpd_gl_flt_balt4",
			"mpd_gl_flt_bank",
			"mpd_gl_flt_gspd1",
			"mpd_gl_flt_gspd2",
			"mpd_gl_flt_gspd3",
			"mpd_gl_flt_hdg",
			"mpd_gl_flt_hdg2",
			"mpd_gl_flt_hi",
			"mpd_gl_flt_hor",
			"mpd_gl_flt_lo",
			"mpd_gl_flt_n20c",
			"mpd_gl_flt_p20c",
			"mpd_gl_flt_ralt1",
			"mpd_gl_flt_ralt2",
			"mpd_gl_flt_ralt3",
			"mpd_gl_flt_raltb",
			"mpd_gl_flt_rdr",
			"mpd_gl_flt_slip",
			"mpd_gl_flt_spd1",
			"mpd_gl_flt_spd2",
			"mpd_gl_flt_spd3",
			"mpd_gl_flt_trq1",
			"mpd_gl_flt_trq2",
			"mpd_gl_flt_trq3",
			"mpd_gl_flt_ttg1",
			"mpd_gl_flt_ttg2",
			"mpd_gl_flt_ttg3",
			"mpd_gl_flt_ttg4",
			"mpd_gl_flt_turn",
			"mpd_gl_flt_vsi",
			"mpd_gl_flt_vvi",
			"mpd_gl_flt_w",
			"mpd_gl_flt_wbear",
			"mpd_gl_flt_wp",
			"mpd_gl_flt_wr1",
			"mpd_gl_flt_wr2",
			"mpd_gl_flt_wr3",
			"mpd_gr_flt_balt1",
			"mpd_gr_flt_balt2",
			"mpd_gr_flt_balt3",
			"mpd_gr_flt_balt4",
			"mpd_gr_flt_bank",
			"mpd_gr_flt_gspd1",
			"mpd_gr_flt_gspd2",
			"mpd_gr_flt_gspd3",
			"mpd_gr_flt_hdg",
			"mpd_gr_flt_hdg2",
			"mpd_gr_flt_hi",
			"mpd_gr_flt_hor",
			"mpd_gr_flt_lo",
			"mpd_gr_flt_n20c",
			"mpd_gr_flt_p20c",
			"mpd_gr_flt_ralt1",
			"mpd_gr_flt_ralt2",
			"mpd_gr_flt_ralt3",
			"mpd_gr_flt_raltb",
			"mpd_gr_flt_rdr",
			"mpd_gr_flt_slip",
			"mpd_gr_flt_spd1",
			"mpd_gr_flt_spd2",
			"mpd_gr_flt_spd3",
			"mpd_gr_flt_trq1",
			"mpd_gr_flt_trq2",
			"mpd_gr_flt_trq3",
			"mpd_gr_flt_ttg1",
			"mpd_gr_flt_ttg2",
			"mpd_gr_flt_ttg3",
			"mpd_gr_flt_ttg4",
			"mpd_gr_flt_turn",
			"mpd_gr_flt_vsi",
			"mpd_gr_flt_vvi",
			"mpd_gr_flt_w",
			"mpd_gr_flt_wbear",
			"mpd_gr_flt_wp",
			"mpd_gr_flt_wr1",
			"mpd_gr_flt_wr2",
			"mpd_gr_flt_wr3",
			"mpd_pr_flt_dir1",
			"mpd_pr_flt_dir2",
			"mpd_pr_flt_dir3",
			"mpd_pr_flt_dirb",
			"mpd_pl_flt_dir1",
			"mpd_pl_flt_dir2",
			"mpd_pl_flt_dir3",
			"mpd_pl_flt_dirb",
			"mpd_gr_flt_dir1",
			"mpd_gr_flt_dir2",
			"mpd_gr_flt_dir3",
			"mpd_gr_flt_dirb",
			"mpd_gl_flt_dir1",
			"mpd_gl_flt_dir2",
			"mpd_gl_flt_dir3",
			"mpd_gl_flt_dirb",
			"mpd_pr_eng_1npb",
			"mpd_pr_eng_1tgt_1",
			"mpd_pr_eng_1tgt1",
			"mpd_pr_eng_1tgt2",
			"mpd_pr_eng_1tgt3",
			"mpd_pr_eng_1tgtb",
			"mpd_pr_eng_1tgtbg",
			"mpd_pr_eng_2npb",
			"mpd_pr_eng_2tgt_1",
			"mpd_pr_eng_2tgt1",
			"mpd_pr_eng_2tgt2",
			"mpd_pr_eng_2tgt3",
			"mpd_pr_eng_2tgtb",
			"mpd_pr_eng_2tgtbg",
			"mpd_pr_eng_1trq1",
			"mpd_pr_eng_1trq2",
			"mpd_pr_eng_1trqb",
			"mpd_pr_eng_1trqbg",
			"mpd_pr_eng_2trq1",
			"mpd_pr_eng_2trq2",
			"mpd_pr_eng_2trqb",
			"mpd_pr_eng_2trqbg",
			"mpd_pr_eng_ltrqbar",
			"mpd_pr_eng_accpsi1",
			"mpd_pr_eng_accpsi2",
			"mpd_pr_eng_accpsi3",
			"mpd_pr_eng_accpsi4",
			"mpd_pr_eng_utipsi1",
			"mpd_pr_eng_utipsi2",
			"mpd_pr_eng_utipsi3",
			"mpd_pr_eng_utipsi4",
			"mpd_pr_eng_pripsi1",
			"mpd_pr_eng_pripsi2",
			"mpd_pr_eng_pripsi3",
			"mpd_pr_eng_pripsi4",
			"mpd_pr_eng_e1ng1",
			"mpd_pr_eng_e1ng2",
			"mpd_pr_eng_e1ng3",
			"mpd_pr_eng_e2ng1",
			"mpd_pr_eng_e2ng2",
			"mpd_pr_eng_e2ng3",
			"mpd_pr_eng_e1np1",
			"mpd_pr_eng_e1np2",
			"mpd_pr_eng_e1np3",
			"mpd_pr_eng_e2np1",
			"mpd_pr_eng_e2np2",
			"mpd_pr_eng_e2np3",
			"mpd_pr_eng_oil1psi1",
			"mpd_pr_eng_oil1psi2",
			"mpd_pr_eng_oil1psi3",
			"mpd_pr_eng_oil2psi1",
			"mpd_pr_eng_oil2psi2",
			"mpd_pr_eng_oil2psi3",
			"mpd_pr_eng_rrpm1",
			"mpd_pr_eng_rrpm2",
			"mpd_pr_eng_rrpm3",
			"mpd_pr_eng_wca1",
			"mpd_pr_eng_wca2",
			"mpd_pr_eng_wca3",
			"mpd_pr_eng_wca4",
			"mpd_pr_eng_wca5",
			"mpd_pr_eng_wca6",
			"mpd_pr_eng_wca7",
			"mpd_pr_eng_wca8",
			"mpd_pr_eng_wca9",
			"mpd_pr_eng_wca10",
			"mpd_pr_eng_wca11",
			"mpd_pr_eng_wca12",
			"mpd_pr_eng_ifb",
			"mpd_pr_eng_ofb",
			"mpd_pr_eng_rtrrpmb",
			"mpd_pr_eng_hpa",
			"mpd_pr_eng_hpp",
			"mpd_pr_eng_hpu",
			"mpd_pr_eng_rbe1ng",
			"mpd_pr_eng_rbe1np",
			"mpd_pr_eng_rbe1op",
			"mpd_pr_eng_rbe2ng",
			"mpd_pr_eng_rbe2np",
			"mpd_pr_eng_rbe2op",
			"mpd_pr_eng_1accpsi1",
			"mpd_pr_eng_1accpsi2",
			"mpd_pr_eng_1accpsi3",
			"mpd_pr_eng_1accpsi4",
			"mpd_pr_eng_1utipsi1",
			"mpd_pr_eng_1utipsi2",
			"mpd_pr_eng_1utipsi3",
			"mpd_pr_eng_1utipsi4",
			"mpd_pr_eng_1pripsi1",
			"mpd_pr_eng_1pripsi2",
			"mpd_pr_eng_1pripsi3",
			"mpd_pr_eng_1pripsi4",
			"mpd_pl_eng_1npb",
			"mpd_pl_eng_1tgt_1",
			"mpd_pl_eng_1tgt1",
			"mpd_pl_eng_1tgt2",
			"mpd_pl_eng_1tgt3",
			"mpd_pl_eng_1tgtb",
			"mpd_pl_eng_1tgtbg",
			"mpd_pl_eng_2npb",
			"mpd_pl_eng_2tgt_1",
			"mpd_pl_eng_2tgt1",
			"mpd_pl_eng_2tgt2",
			"mpd_pl_eng_2tgt3",
			"mpd_pl_eng_2tgtb",
			"mpd_pl_eng_2tgtbg",
			"mpd_pl_eng_1trq1",
			"mpd_pl_eng_1trq2",
			"mpd_pl_eng_1trqb",
			"mpd_pl_eng_1trqbg",
			"mpd_pl_eng_2trq1",
			"mpd_pl_eng_2trq2",
			"mpd_pl_eng_2trqb",
			"mpd_pl_eng_2trqbg",
			"mpd_pl_eng_ltrqbar",
			"mpd_pl_eng_accpsi1",
			"mpd_pl_eng_accpsi2",
			"mpd_pl_eng_accpsi3",
			"mpd_pl_eng_accpsi4",
			"mpd_pl_eng_utipsi1",
			"mpd_pl_eng_utipsi2",
			"mpd_pl_eng_utipsi3",
			"mpd_pl_eng_utipsi4",
			"mpd_pl_eng_pripsi1",
			"mpd_pl_eng_pripsi2",
			"mpd_pl_eng_pripsi3",
			"mpd_pl_eng_pripsi4",
			"mpd_pl_eng_e1ng1",
			"mpd_pl_eng_e1ng2",
			"mpd_pl_eng_e1ng3",
			"mpd_pl_eng_e2ng1",
			"mpd_pl_eng_e2ng2",
			"mpd_pl_eng_e2ng3",
			"mpd_pl_eng_e1np1",
			"mpd_pl_eng_e1np2",
			"mpd_pl_eng_e1np3",
			"mpd_pl_eng_e2np1",
			"mpd_pl_eng_e2np2",
			"mpd_pl_eng_e2np3",
			"mpd_pl_eng_oil1psi1",
			"mpd_pl_eng_oil1psi2",
			"mpd_pl_eng_oil1psi3",
			"mpd_pl_eng_oil2psi1",
			"mpd_pl_eng_oil2psi2",
			"mpd_pl_eng_oil2psi3",
			"mpd_pl_eng_rrpm1",
			"mpd_pl_eng_rrpm2",
			"mpd_pl_eng_rrpm3",
			"mpd_pl_eng_wca1",
			"mpd_pl_eng_wca2",
			"mpd_pl_eng_wca3",
			"mpd_pl_eng_wca4",
			"mpd_pl_eng_wca5",
			"mpd_pl_eng_wca6",
			"mpd_pl_eng_wca7",
			"mpd_pl_eng_wca8",
			"mpd_pl_eng_wca9",
			"mpd_pl_eng_wca10",
			"mpd_pl_eng_wca11",
			"mpd_pl_eng_wca12",
			"mpd_pl_eng_ifb",
			"mpd_pl_eng_ofb",
			"mpd_pl_eng_rtrrpmb",
			"mpd_pl_eng_hpa",
			"mpd_pl_eng_hpp",
			"mpd_pl_eng_hpu",
			"mpd_pl_eng_rbe1ng",
			"mpd_pl_eng_rbe1np",
			"mpd_pl_eng_rbe1op",
			"mpd_pl_eng_rbe2ng",
			"mpd_pl_eng_rbe2np",
			"mpd_pl_eng_rbe2op",
			"mpd_pl_eng_1accpsi1",
			"mpd_pl_eng_1accpsi2",
			"mpd_pl_eng_1accpsi3",
			"mpd_pl_eng_1accpsi4",
			"mpd_pl_eng_1utipsi1",
			"mpd_pl_eng_1utipsi2",
			"mpd_pl_eng_1utipsi3",
			"mpd_pl_eng_1utipsi4",
			"mpd_pl_eng_1pripsi1",
			"mpd_pl_eng_1pripsi2",
			"mpd_pl_eng_1pripsi3",
			"mpd_pl_eng_1pripsi4",
			"p_ufd_clk1",
			"p_ufd_clk2",
			"p_ufd_clk3",
			"p_ufd_clk4",
			"p_ufd_clk5",
			"p_ufd_clk6",
			"p_ufd_fl1",
			"p_ufd_fl2",
			"p_ufd_fl3",
			"p_ufd_fl4",
			"p_ufd_adv1",
			"p_ufd_adv2",
			"p_ufd_adv3",
			"p_ufd_adv4",
			"p_ufd_adv5",
			"p_ufd_cau1",
			"p_ufd_cau2",
			"p_ufd_cau3",
			"p_ufd_cau4",
			"p_ufd_cau5",
			"p_ufd_wrn1",
			"p_ufd_wrn2",
			"p_ufd_wrn3",
			"p_ufd_wrn4",
			"p_ufd_wrn5",
			"g_ufd_clk1",
			"g_ufd_clk2",
			"g_ufd_clk3",
			"g_ufd_clk4",
			"g_ufd_clk5",
			"g_ufd_clk6",
			"g_ufd_fl1",
			"g_ufd_fl2",
			"g_ufd_fl3",
			"g_ufd_fl4",
			"g_ufd_adv1",
			"g_ufd_adv2",
			"g_ufd_adv3",
			"g_ufd_adv4",
			"g_ufd_adv5",
			"g_ufd_cau1",
			"g_ufd_cau2",
			"g_ufd_cau3",
			"g_ufd_cau4",
			"g_ufd_cau5",
			"g_ufd_wrn1",
			"g_ufd_wrn2",
			"g_ufd_wrn3",
			"g_ufd_wrn4",
			"g_ufd_wrn5",
			///NEWTSD///
			"mpd_pr_tsd_dist1",
			"mpd_pr_tsd_imap",
			"mpd_pr_tsd_map",
			"mpd_pr_tsd_phase",
			///LMPDTSD///
			"mpd_pl_tsd_dist1",
			"mpd_pl_tsd_imap",
			"mpd_pl_tsd_map",
			"mpd_pl_tsd_phase",
			////LMPDOBJS///
			"mpd_gr_obj1",
			"mpd_gr_obj2",
			"mpd_gr_obj3",
			"mpd_gr_obj4",
			"mpd_gr_obj5",
			"mpd_gr_obj6",
			"mpd_gr_obj7",
			"mpd_gr_obj8",
			"mpd_gr_obj9",
			"mpd_gr_obj10",
			"mpd_gr_obj11",
			"mpd_gr_obj12",
			"mpd_gr_obj13",
			"mpd_gr_obj14",
			"mpd_gr_obj15",
			"mpd_gr_obj16",
			"mpd_gr_obj17",
			"mpd_gr_obj18",
			"mpd_gr_obj19",
			"mpd_gr_obj20",
			"mpd_gr_obj21",
			"mpd_gr_obj22",
			"mpd_gr_obj23",
			"mpd_gr_obj24",
			"mpd_gr_obj25",
			"mpd_gr_obj26",
			"mpd_gr_obj27",
			"mpd_gr_obj28",
			"mpd_gr_obj29",
			"mpd_gr_obj30",
			"mpd_gr_obj31",
			"mpd_gr_obj32",
			"mpd_gr_tsd_mmap",
			"mpd_gr_tsd_base",
			"mpd_pr_tsd_mmap",
			"mpd_pr_tsd_base",
			"pod_m260_1",
			"pod_m260_2",
			"pod_m260_3",
			"pod_m260_4",
			"rail_m299_1",
			"rail_m299_2",
			"rail_m299_3",
			"rail_m299_4",
			"mpd_pr_tsd_gspd1",
			"mpd_pr_tsd_gspd2",
			"mpd_pr_tsd_gspd3",
			"mpd_pl_tsd_gspd1",
			"mpd_pl_tsd_gspd2",
			"mpd_pl_tsd_gspd3",
			"mpd_pr_fcraa_wiper",
			"mpd_pr_fcrag_wiper",
			"mpd_pr_fcrag_tnum1",
			"mpd_pr_fcrag_tnum2",
			"mpd_pr_mpd_had_apos",
			"mpd_pr_mpd_had_apos2",
			"mpd_pr_mpd_had_msg1",
			"mpd_pr_mpd_had_msg2",
			"mpd_pr_mpd_had_msg3",
			"mpd_pr_mpd_had_msg4",
			"mpd_pr_mpd_had_msg5",
			"mpd_pr_ase_autpg",
			"mpd_pr_ase_cc1",
			"mpd_pr_ase_cc2",
			"mpd_pr_ase_csel",
			"mpd_pr_ase_dist1",
			"mpd_pr_ase_dist2",
			"mpd_pr_ase_ijaut",
			"mpd_pr_ase_ijoff",
			"mpd_pr_ase_ijon",
			"mpd_pr_ase_rjaut",
			"mpd_pr_ase_rjoff",
			"mpd_pr_ase_rjon",
			"mpd_pr_ase_salvo",
			"mast",
			"longbow",
			"skin_pnvs",
			"skin_hstab",
			"twsus",
			"skin_alq1",
			"skin_alq2",
			"skin_cockpit",
			"skin_cockpitglass",
			"skin_fuse",
			"skin_fuse_ld",
			"skin_lefab",
			"skin_lelight",
			"skin_leng",
			"skin_lgear",
			"skin_lwing",
			"skin_m230",
			"skin_mainrotor",
			"skin_nose",
			"skin_pylon1",
			"skin_pylon2",
			"skin_pylon3",
			"skin_pylon4",
			"skin_refab",
			"skin_relight",
			"skin_reng",
			"skin_rgear",
			"skin_rwing",
			"skin_tads1",
			"skin_tads2",
			"skin_tads3",
			"skin_tailboom",
			"skin_tailboom_ld",
			"skin_tailrotor",
			"skin_vtail",
			"skin_refab_d_heavy",
			"skin_refab_d_cata",
			"skin_lefab_d_heavy",
			"skin_lefab_d_cata",
			"mpd_brt",
			"in_backlight",
			"in_backlight2",
			"in_lt_fire1",
			"in_lt_fire1rdy",
			"in_lt_fire2",
			"in_lt_fire2rdy",
			"in_lt_fireapu",
			"in_lt_fireapurdy",
			"in_lt_firepdis",
			"in_lt_firerdis",
			"in_lt_mstrcau",
			"in_lt_mstrwrn",
			"dam_fuse",
			"dam_gdoor",
			"dam_hstab",
			"dam_lefab",
			"dam_leng",
			"dam_lgear",
			"dam_lwing",
			"dam_nose",
			"dam_pdoor",
			"dam_pnvs",
			"dam_pylon1",
			"dam_pylon2",
			"dam_pylon3",
			"dam_pylon4",
			"dam_refab",
			"dam_reng",
			"dam_rgear",
			"dam_rwing",
			"dam_tads",
			"dam_tailboom",
			"dam_vtail",
			"mdam_fuse",
			"mdam_gdoor",
			"mdam_hstab",
			"mdam_lefab",
			"mdam_leng",
			"mdam_lgear",
			"mdam_lwing",
			"mdam_nose",
			"mdam_pdoor",
			"mdam_pnvs",
			"mdam_pylon1",
			"mdam_pylon2",
			"mdam_pylon3",
			"mdam_pylon4",
			"mdam_refab",
			"mdam_reng",
			"mdam_rgear",
			"mdam_rwing",
			"mdam_tads",
			"mdam_tailboom",
			"mdam_vtail",
			"tr_blades",
			"tr_blur",
			"mr_blades",
			"mr_blur",
			"mpd_pr_eng_back",
			"hdam_tr",
			"hdam_rtr",
			"skin_tailboom_tear"
		};
		class Turrets
		{
			class MainTurret: NewTurret
			{
				gunnerAction = "fza_ah64_copilot";
				gunnerGetInAction = "GetInHigh";
				gunnerGetOutAction = "GetOutHigh";
				primary = 1;
				primaryGunner = 1;
				//weapons[] = {"fza_m230","fza_m261_14","fza_agm114_23_8"};
				//magazines[] = {"fza_m230_1200","fza_m261_m151_14_38","fza_agm114k_23_8"};
				weapons[] = {"fza_ma_safe","fza_m230","fza_m261_14","fza_agm114_3_ul","fza_agm114_3_ur","fza_agm114_3_ll","fza_agm114_3_lr","fza_agm114_2_ul","fza_agm114_2_ur","fza_agm114_2_ll","fza_agm114_2_lr"};
				magazines[] = {"fza_safe","fza_m230_300","fza_m261_m151_14_38","fza_agm114k_3_ul","fza_agm114k_3_lr","fza_agm114k_3_ur","fza_agm114k_3_ll","fza_agm114k_2_lr","fza_agm114k_2_ul","fza_agm114k_2_ll","fza_agm114k_2_ur"};
				memoryPointsGetInGunner = "pos gunner";
				memoryPointsGetInGunnerDir = "pos gunner dir";
				memoryPointGun = "kulas";
				memoryPointGunnerOptics = "gunnerview";
				body = "mainTurret";
				gun = "mainGun";
				gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
				gunnerOpticsColor[] = {1,1,1,1};
				animationsourcebody = "tads_tur";
				animationsourcegun = "tads";
				minElev = -60;
				maxElev = 30;
				initElev= 0;
				minTurn = -120;
				maxTurn = 120;
				initTurn = 0;
				minGunElev = -60;
				maxGunElev = 30;
				minGunTurn = -120;
				maxGunTurn = 120;
				minGunTurnAI = -120;
				maxGunTurnAI = 120;
				maxhorizontalrotspeed = 3;
				maxverticalrotspeed = 3;
				commanding = -1;
				gunnerForceOptics = 0;
				startEngine=0;
				outGunnerMayFire = 1;
				ejectdeadgunner = 0;
				viewgunnershadow = 1;
				viewgunnershadowamb = 1;
				viewgunnershadowdiff = 1;
				turretinfotype = "RscUnitInfoNoHUD";
				discretedistance[] = {1, 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000};
				discretedistanceinitindex = 3;
				isCopilot = 1;
				usePiP=1;
				stabilizedInAxes=3;
				class HitPoints
				{
					class HitTurret
					{
						armor = 0.5;
						material = 51;
						name = "tads_tur";
						visual = "tads_tur";
						passThrough = 1;
					};
					class HitGun
					{
						armor = 1;
						material = 52;
						name = "tads";
						visual = "tads";
						passThrough = 1;
					};
				};
				class OpticsIn
				{
					class Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						//stabilizedInAxes = 3;
						opticStabilized=1;
						initanglex = 0;
						initangley = 0;
						initfov = 0.466;
						maxanglex = 30;
						maxangley = 120;
						maxfov = 0.466;
						minanglex = -60;
						minangley = -120;
						minfov = 0.466;
						opticsdisplayname = "W";
						thermalmode[] = {0,1};
						visionmode[] = {"Normal","Ti","NVG"};
					};
					class Medium: Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						stabilizedInAxes = 3;
						opticStabilized=1;
						initfov = 0.09;
						maxfov = 0.09;
						minfov = 0.09;
						opticsdisplayname = "M";
					};
					class Narrow: Wide
					{
						gunneropticsmodel = "\fza_ah64_us\fza_ah64_optics_empty";
						directionStabilized = 1;
						stabilizedInAxes = 3;
						opticStabilized=1;
						initfov = 0.01;
						maxfov = 0.01;
						minfov = 0.01;
						opticsdisplayname = "N";
					};
				};
				class OpticsOut
				{
					class Monocular //FOV CPG NR
					{
						gunneropticseffect[] = {};
						gunneropticsmodel = "";
						initanglex = 0;
						initangley = 0;
						initfov = 0.7;
						maxanglex = 75;
						maxangley = 120;
						maxfov = 0.85;
						minanglex = -75;
						minangley = -120;
						minfov = 0.4;
						visionmode[] = {"Normal", "NVG"};
					};
				};
				class ViewGunner
				{
					initFov=0.7;
					minFov=0.400000;
					maxFov=0.7;
					initAngleX=0;
					minAngleX=-75;
					maxAngleX=75;
					initAngleY=0;
					minAngleY=-120;
					maxAngleY=120;
					maxmovex = 0.15;
					maxmovey = 0.1;
					maxmovez = 0.1;
					minmovex = -0.15;
					minmovey = -0.1;
					minmovez = -0.1;
				};
			};
		};
	};

	/////////////////////////////////////////////////
	///////////////////JAMMERS///////////////////////
	/////////////////////////////////////////////////
	class Thing: All {};
	class ThingX: Thing {};
	class RoadCone_F: Thing {};
	class fza_ah64_ic: RoadCone_F
	{
		scope=1;
		irtarget=0;
		displayname="CONTROL";
		model="\fza_ah64_US\fza_ic_box";
		ladders[]={};
		//make it indestructable til we delete it
		armor=1000000000;
		side=3;
		simulation = "thing";
	};
	class Plane: Air {};
	class UAV: Plane {};
	class UAV_02_base_F: UAV {};
	class UAV_02_F: UAV_02_base_F {};
	class fza_ah64_jammer: UAV_02_F
	{
		class Turrets {};
		scope=1;
		model = "\fza_ah64_US\fza_ah64_fake.p3d";
		displayname="Helicopter";
		armor = 200;
		cost = 10000000;
		camouflage = 150;
		threat[] = {0.5, 1, 0.1};
		namesound = "veh_Helicopter";
		hasGunner = false;
		crew = "B_UAV_AI";
		typicalCargo[] = {"B_UAV_AI"};
	};
	////////////////////////////////////////////////
	///////////////////DEBRIS///////////////////////
	////////////////////////////////////////////////
	/*
	class ThingEffect: Thing {};
	class FxExploArmor1: ThingEffect {};
	*/
	class fza_ah64_tailboom_debris: RoadCone_F
	{
		scope=1;
		model = "\fza_ah64_us\prx\dam_tailboom_debris";
		displayName = "DEBRIS";
		submerged = 0;
		submergeSpeed = 0;
		timeToLive = 30;
		disappearAtContact = 0;
	};
	class fza_ah64_vtail_debris: fza_ah64_tailboom_debris
	{
		model = "\fza_ah64_us\prx\dam_vtail_debris";
	};
	class fza_ah64_tr_debris: fza_ah64_tailboom_debris
	{
		model = "\fza_ah64_us\prx\dam_tr_debris";
	};
	class fza_ah64_hstab_debris: fza_ah64_tailboom_debris
	{
		model = "\fza_ah64_us\prx\dam_hstab_debris";
	};
};
