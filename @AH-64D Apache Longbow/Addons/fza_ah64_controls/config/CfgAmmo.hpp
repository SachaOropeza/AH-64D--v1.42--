class CfgAmmo
{
	class BulletCore;
	class B_30mm_HE: BulletCore {};
	class Bulletbase;
	class MissileCore;
	class MissileBase;
	class Missile_AGM_02_F: MissileBase
	{
		class Components;
	};
	class RocketCore;
	class RocketBase;
	class Grenade;
	class GrenadeBase;
	class FlareCore;
	class SmokeShell;
	class SubmunitionBase;
	class B_9x21_Ball;
	class M_PG_AT;
	class M_AT;
	
	class fza_ah64_flare_shot: FlareCore 
	{
		hit = 1;
		indirectHit = 0;
		indirectHitRange = 0;
		timeToLive = 6;
		thrustTime = 4;
		airFriction = -0.01;
		simulation = "shotCM";
		effectsSmoke = "fza_cmflare";
		weaponLockSystem = 2;
		model = "\A3\weapons_f\empty";
		maxControlRange = -1;
		initTime = 0;
		aiAmmoUsageFlags = 8;	
	};
	class fza_master: Bulletbase
	{
		airLock=0;
		irLock=0;
		laserLock=0;
		nvLock=0;
		artilleryLock=0;
		weaponLockSystem=0;
		lockType=2;
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////M230/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_30x113: B_30mm_HE
	{
		access = 1;
		soundsetbulletfly[] = {"fza_sc_bullet_flyby_soundset"};
		soundsetsoniccrack[] = {"fza_sc_30x113_soundset"};
		soundsetexplosion[] = {"fza_20mm_explosion_soundset", "fza_explosion_echo_small_soundset"};		
		muzzleeffect = "fza_ah64_fx_30mm";		
		hit = 60;
		indirectHit = 10;
		indirectHitRange = 3.5;		
		maxspeed = 805;
		explosive = 0.50;
		airFriction = -0.00036;
		airlock = 0;
		irlock = 0;
		allowAgainstInfantry = 1;	
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////HELLFIRE/////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_agm114l : Missile_AGM_02_F
	{
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};			
		model = "\fza_ah64_US\fza_agm114l";
		proxyShape="\fza_ah64_US\fza_agm114l";
		simulation = "shotMissile";
		thrustTime=3.25;
		fuseDistance = 5;
		thrust = 60;
		trackOversteer = 1;
		trackLead = 1;
		simulationStep=0.01;
		sideairfriction = 0.2;
		effectsMissileInit = "MissileDAR1";
		effectsmissile = "fza_ah64_hellfiresmoke";
		muzzleEffect = "BIS_fnc_effectFiredRocket";
		whistledist = 300;
		explosionEffects = "BombExplosion";
		hit = 1400;
		indirectHit = 1000;
		indirectHitRange = 10;
		timetolive= 50;
		initTime = 0.0000;
		manualControl = 0;
		laserLock = 0;
		airLock = 0;
		irlock = 0;	
		nvLock=0;
		maneuvrability = 10;
		airfriction = -0.00001;
		maxSpeed = 1234;
		cost = 1000;	

		//MSL sensors definition
		missileLockMaxDistance = 8000;
		missileLockMinDistance = 500;
		missileLockMaxSpeed = 100;
		missileLockCone = 50;
		missileManualControlCone = 50;
		missileKeepLockedCone = 50;
		weaponLockSystem = 8;	

		/*
		flightProfiles[]	= {TopDown};
		class TopDown
		{
			ascendAngle		= 30;
			ascendHeight	= 518;
			minDistance		= 500;
			descendDistance	= 500;
		};
		*/
	};
	class fza_agm114k : Missile_AGM_02_F
	{
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};	
		model = "\fza_ah64_US\fza_agm114k";
		proxyShape="\fza_ah64_US\fza_agm114k";	
		thrustTime=3.25;
		fuseDistance = 5;
		thrust = 60;
		trackOversteer = 1;
		trackLead = 1;
		simulationStep=0.01;
		sideairfriction = 0.2;
		effectsMissileInit = "MissileDAR1";
		effectsmissile = "fza_ah64_hellfiresmoke";
		muzzleEffect = "BIS_fnc_effectFiredRocket";
		whistledist = 300;
		explosionEffects = "BombExplosion";
		hit = 1400;
		indirectHit = 1000;
		indirectHitRange = 10;
		timetolive= 50;
		initTime = 0.0000;
		manualControl = 0;
		laserLock = 1;
		airLock = 0;
		irlock = 0;	
		nvLock=0;
		maneuvrability = 10;
		cmimmunity = 1;
		airfriction = -0.00001;
		maxSpeed = 1234;
		cost = 1000;			
		
		//MSL sensors definition
		missileLockMaxDistance = 8000;
		missileLockMinDistance = 500;
		missileLockMaxSpeed = 100;
		missileLockCone = 50;
		missileManualControlCone = 50;
		missileKeepLockedCone = 50;
		weaponLockSystem = 4;

		/*
		flightProfiles[]	= {TopDown};
		class TopDown
		{
			ascendAngle		= 30;
			ascendHeight	= 518;
			minDistance		= 500;
			descendDistance	= 500;
		};
		*/
		
	};
	class fza_agm114a : fza_agm114k
	{	
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};		
		model = "\fza_ah64_US\fza_agm114c";
		proxyShape="\fza_ah64_US\fza_agm114c";
		effectsmissile = "missile3";	
		hit = 800;
		indirectHit = 400;
		indirectHitRange = 10;
		cost = 1000;
	};
	class fza_agm114c : fza_agm114k
	{
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};
		model = "\fza_ah64_US\fza_agm114c";
		proxyShape="\fza_ah64_US\fza_agm114c";		
		hit= 800;
		indirectHit = 400;
		indirectHitRange = 10;
		cost = 1000;
	};
	class fza_agm114m : fza_agm114k
	{
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};
		model = "\fza_ah64_US\fza_agm114k";
		proxyShape ="\fza_ah64_US\fza_agm114k";		
		hit = 900;
		indirectHit = 500;
		indirectHitRange = 20;
		cost = 1000;
	};
	class fza_agm114n : fza_agm114k
	{	
		soundsetsoniccrack[] = {"fza_sc_wire_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_missile_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};		
		model = "\fza_ah64_US\fza_agm114k";
		proxyShape = "\fza_ah64_US\fza_agm114k";	
		hit = 600;
		indirecthit = 600;
		indirecthitrange = 20;
		explosionEffects = "BombExplosion";
		cost = 1000;
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////ROCKETS//////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_275_base: MissileBase 
	{
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};	
		soundsetexplosion[]  = {"fza_rocket_explosion_soundset", "fza_rocket_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};
		model = "\fza_ah64_us\weps\fza_hydra_m151_wep";
		effectsmissile = "fza_ah64_rocketsmoke";
		effectsMissileInit = "MissileDAR1";
		muzzleEffect = "BIS_fnc_effectFiredRocket";
		hit=210;
		indirectHit=20;
		indirectHitRange=10;
		manualControl = 0;
		maxControlRange = 0;
		maneuvrability = 0;
		airLock = 0;
		irLock = 0;
		laserLock = 0;
		nvLock = 0;
		weaponLockSystem = 0;
		cmimmunity = 1;
		aiAmmoUsageFlags = "64+128";
		suppressionRadiusHit = 15;
		dangerRadiusHit = 40;
		initTime = 0.02;
		maxSpeed=700;
		thrustTime=1.07;
		thrust = 1060;
		fuseDistance = 75;
		airFriction = 0.1;
		sideAirFriction = 0.005;
		timeToLive=15;
		whistleDist=24;
		cost = 75;
		class CamShakeExplode
		{
			power = 16;
			duration = 1.8;
			frequency = 20;
			distance = 191.554;
		};
		class CamShakeHit
		{
			power = 80;
			duration = 0.6;
			frequency = 20;
			distance = 1;
		};
		class CamShakeFire
		{
			power = 2.9907;
			duration = 1.8;
			frequency = 20;
			distance = 71.5542;
		};
		class CamShakePlayerFire
		{
			power = 2;
			duration = 0.1;
			frequency = 20;
			distance = 1;
		};		
	};
	class fza_275_m151: fza_275_base
	{
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};			
		soundsetexplosion[]  = {"fza_rocket_explosion_soundset", "fza_rocket_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};	
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};		
		model = "\fza_ah64_us\weps\fza_hydra_m151_wep";
		explosionEffects = "GrenadeExplosion";
		//proxyShape = "";
		hit=200;
		indirectHit=100;
		indirectHitRange=10;
	};			
	class fza_275_m229: fza_275_base
	{
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};		
		soundsetexplosion[]  = {"fza_rocket_explosion_soundset", "fza_rocket_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};		
		model = "\fza_ah64_us\weps\fza_hydra_m229_wep";	
		explosionEffects = "GrenadeExplosion";
		//proxyShape = "";	
		hit=300;
		indirectHit=150;
		indirectHitRange=20;
		suppressionRadiusHit = 20;

	};
	class fza_275_m261: fza_275_base 
	{
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};	
		soundsetexplosion[] = {"fza_small_explosion_soundset", "fza_he_explosion_stereo_soundset", "fza_small_explosion_reverb_soundset"};	
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};	
		explosionEffects = "GrenadeExplosion";		
		//proxyShape = "";
		maxSpeed = 600;
		hit = 30;
		indirectHit = 5;
		indirectHitRange = 5;
		submunitionAmmo = "fza_m73mpsm";
		submunitionConeType[] = {"randomcenter",9};
		submunitionConeAngle = 2;
		triggerTime = 1;
		triggerSpeedCoef = 0.7;
	};
	class fza_275_m257: fza_275_base 
	{
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};	
		soundsetexplosion[] = {"fza_small_explosion_soundset", "fza_he_explosion_stereo_soundset", "fza_small_explosion_reverb_soundset"};	
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};		
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";
		CraterEffects = "ATMissileCrater";
		explosionEffects = "";
		//proxyShape = "";		
		hit = 30;
		indirectHit = 0;
		indirectHitRange = 0;
		submunitionAmmo = "fza_m257_flare";
		submunitionCount = 1;
		submunitionConeAngle = 0;
		triggerTime = 1.5;
		maxSpeed = 450;
		soundHit1[] = {"A3\sounds_f\dummysound",2.5118864,1,5};
		multiSoundHit[] = {"soundHit1",1};
		aiAmmoUsageFlags = 1;
		class CamShakeExplode
		{
			power = 1;
			duration = 1;
			frequency = 20;
			distance = 5;
		};			
	};
	class fza_275_m255: fza_275_base 
	{
		soundfly[]  = {"fza_ah64_us\audio\Flyby\SoundFly1.ogg", 1, 1, 400};	
		soundsetexplosion[] = {"fza_small_explosion_soundset", "fza_he_explosion_stereo_soundset", "fza_small_explosion_reverb_soundset"};	
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};		
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";	
		CraterEffects = "ATMissileCrater";
		explosionEffects = "";
		//proxyShape = "";		
		maxSpeed = 600;
		hit = 30;
		indirectHit = 0;
		indirectHitRange = 0;
		submunitionAmmo = "fza_flec_cluster";
		submunitionConeType[] = {"randomcenter",100};
		submunitionConeAngle = 12;
		triggerTime = 1;
		triggerSpeedCoef = 1;
		soundHit1[] = {"A3\sounds_f\dummysound",2.5118864,1,5};
		multiSoundHit[] = {"soundHit1",1};
		aiAmmoUsageFlags = 1;
		class CamShakeExplode
		{
			power = 1;
			duration = 1;
			frequency = 20;
			distance = 5;
		};
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////SUBMUNITIONS/////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_m73mpsm: GrenadeBase
	{
		soundsetexplosion[] = {"fza_small_explosion_soundset", "fza_he_explosion_stereo_soundset", "fza_small_explosion_reverb_soundset"};
		simulation = "shotShell";
		model = "\A3\weapons_f\ammo\UGL_slug"; //M73 model needed.
		explosionEffects = "ExploAmmoExplosion";
		CraterEffects = "ExploAmmoCrater";
		muzzleEffect = "BIS_fnc_effectFiredHeliRocket";
		hit = 300;
		indirectHit = 70;
		indirectHitRange = 20;
		visibleFire = 1;
		audibleFire = 30;
		visibleFireTime = 3;
		dangerRadiusHit = 60;
		suppressionRadiusHit = 30;
		explosive = 1;
		cost = 10;
		deflecting = 0;
		airFriction = -0.001;
		fuseDistance = 0.5;
		whistleDist = 16;
		typicalSpeed = 300;
		caliber = 3.7;
		soundHit1[] = {"A3\Sounds_F\arsenal\explosives\shells\30mm40mm_shell_explosion_01",1.7782794,1,1600};
		soundHit2[] = {"A3\Sounds_F\arsenal\explosives\shells\30mm40mm_shell_explosion_02",1.7782794,1,1600};
		soundHit3[] = {"A3\Sounds_F\arsenal\explosives\shells\30mm40mm_shell_explosion_03",1.7782794,1,1600};
		soundHit4[] = {"A3\Sounds_F\arsenal\explosives\shells\30mm40mm_shell_explosion_04",1.7782794,1,1600};
		multiSoundHit[] = {"soundHit1",0.25,"soundHit2",0.25,"soundHit3",0.25,"soundHit4",0.25};
		class CamShakeExplode
		{
			power = 7.74597;
			duration = 1.6;
			frequency = 20;
			distance = 23.2379;
		};
		class CamShakeHit
		{
			power = 60;
			duration = 0.6;
			frequency = 20;
			distance = 1;
		};
		class CamShakeFire
		{
			power = 2.51487;
			duration = 1.2;
			frequency = 20;
			distance = 50.5964;
		};
		class CamShakePlayerFire
		{
			power = 0.01;
			duration = 0.1;
			frequency = 20;
			distance = 1;
		};
	};	
	class fza_m257_flare: FlareCore
	{		
		timeToLive = 30;
		model = "\A3\Weapons_F\Ammo\UGL_Flare";
		lightColor[] = {1,0.8,0.7,0.5}; //gotta find the right color/illumination intensity.
		smokeColor[] = {1,1,1,0.4};
		effectFlare = "CounterMeasureFlare";
		brightness = 0.1;
		size = 3;
		triggerTime = 0.25;
		triggerSpeedCoef = 1;
		audibleFire = 20;
		intensity = 10000;
	};
	class fza_flec_cluster: B_9x21_Ball
	{
		hit = 6;
		indirectHit = 6;
		indirectHitRange = 4;
		deflecting = 0;
		cost = 1;
	};	

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////STINGERS/////////////////////////////////
	///////////////////////////////////////////////////////////////////////	

	class fza_fim92: MissileBase
	{
		soundsetexplosion[] = {"fza_rocket_explosion_soundset", "fza_rocket_explosion_stereo_soundset", "fza_shell_explosion_reverb_soundset"};		
		soundsetsoniccrack[] = {"fza_sc_rocket_flyby_soundset"};
		soundfly[]  = {"fza_ah64_us\audio\Flyby\soundfly1.ogg", 1, 1.500000, 400};
		airlock = 1;
		cmimmunity = 0.95;
		cratereffects = "AAMissileCrater";
		effectsmissile = "fza_ah64_stingersmoke";
		explosioneffects = "AAMissileExplosion";
		fusedistance = 5;
		hit = 700;
		indirecthit = 65;
		indirecthitrange = 4;
		inittime = 0.25;
		irlock = 1;
		maneuvrability = 4;
		maxspeed = 2400;
		model = "\fza_ah64_us\fza_fim92";
		sideairfriction = 0.25;
		airfriction = -0.00001;
		simulationstep = 0.01;
		thrust = 100;
		thrusttime = 3;
		timetolive = 17;
		tracklead = 0;
		trackoversteer = 0.85;
		weaponlocksystem = "16 + 2";
		whistledist = 16;
		cost = 5000;
	};

	///////////////////////////////////////////////////////////////////////
	/////////////////////////////////WIP///////////////////////////////////
	///////////////////////////////////////////////////////////////////////	

};
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////FLARES CM STYLE//////////////////////////
	///////////////////////////////////////////////////////////////////////	

class fza_cmflare
{
		class Cmeasures1
		{
			simulation = "particles";
			type = "Cmeasures1";
			position[] = {0,0,0};
			intensity = 1;
			interval = 1;
			lifeTime = 4.5;
			qualityLevel = 2;
		};
		class Cmeasures1M
		{
			simulation = "particles";
			type = "Cmeasures1M";
			position[] = {0,0,0};
			intensity = 1;
			interval = 1;
			lifeTime = 4.5;
			qualityLevel = 1;
		};
		class Cmeasures1L
		{
			simulation = "particles";
			type = "Cmeasures1L";
			position[] = {0,0,0};
			intensity = 1;
			interval = 1;
			lifeTime = 4.5;
			qualityLevel = 0;
		};
		class Cmeasures2
		{
			simulation = "particles";
			type = "Cmeasures2";
			position[] = {0,0,0};
			intensity = 1;
			interval = 1;
			lifeTime = 3.2;
		};
		class Light1
		{
			simulation = "light";
			type = "CmeasuresLight";
			position[] = {0,0,0};
			intensity = 1;
			interval = 1;
			lifeTime = 3;
		};
};
