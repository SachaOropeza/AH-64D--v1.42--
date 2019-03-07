class fza_CounterMeasureFlare
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

class CfgAmmo
{
	class Default {};
	class BulletCore : Default {};
	class BulletBase : BulletCore {};
	class B_30mm_HE: BulletBase {};
	class RocketCore: Default {};
	class RocketBase: RocketCore {};
	class 38Rnd_80mm_rockets: RocketBase {};
	class MissileCore : Default {};
	class MissileBase: MissileCore {};
	class CMflareAmmo: BulletBase {};
	class fza_ah64_flare_shot: CMflareAmmo 
	{
		hit = 1;
		indirectHit = 0;
		indirectHitRange = 0;
		timeToLive = 15.000000;
		thrustTime = 4.000000;
		airFriction = -0.010000;
		simulation = "shotCM";
		effectsSmoke = "fza_CounterMeasureFlare";
		weaponLockSystem = 2;
		model = "\A3\weapons_f\empty";
		maxControlRange = -1;
		initTime = 0;
		aiAmmoUsageFlags = 8;	
	};
	class fza_master: Default
	{
		airLock=1;
		irLock=0;
		laserLock=0;
		nvLock=0;
		artilleryLock=0;
		lockType=0;
		weaponLockSystem="0";

	};
	class fza_30x113: B_30mm_HE
	{
		maxspeed = 1620;
		muzzleeffect = "fza_ah64_fx_30mm";
		timeToLive = 6;
		supersonicCrackNear[] = {"\fza_ah64_us\audio\fakesound.ogg",1,1};
		supersonicCrackFar[] = {"\fza_ah64_us\audio\fakesound.ogg",1,1};
	};
	class fza_agm114l : MissileBase
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
		
		hit = 2500;
		indirectHit = 1000;
		indirectHitRange = 5;
		
		canLock = 0;
		laserLock = 0;
		irLock = 0;
		airLock= 0;
		
		cost = 10000;
		maxSpeed = 1200;
		timetolive=50;
		manualControl = 0;
		maxControlRange = 8000;
		initTime = 0.0000;
		thrustTime=4;
		thrust = 60;
		trackOversteer = 1;
		trackLead = 1;
		maneuvrability = 10;
		airfriction = -0.00001;
		simulationStep=0.01;
		muzzleeffect = "";
		cmimmunity = 0.8;
		fusedistance = 5;
		sideairfriction = 0.2;
		whistledist = 4;
		effectsmissile = "fza_ah64_hellfiresmoke";
		model = "\fza_ah64_US\fza_agm114l";
		soundfly[] = {"\fza_ah64_us\audio\fakesound.ogg",1,1,1};
		proxyShape="\fza_ah64_US\fza_agm114l";
		CraterEffects = "BombCrater";
		explosionEffects = "BombExplosion";
	};
	class fza_agm114k : fza_agm114l
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
		
		canLock = 1;
		laserLock= 1;
		airLock= 0;
		irLock= 0;
		
		hit = 2500;
		indirectHit = 1000;
		indirectHitRange = 5;

		model = "\fza_ah64_US\fza_agm114k";
		proxyShape="\fza_ah64_US\fza_agm114k";
	};
	class fza_agm114a : fza_agm114k
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
	
		hit=1200;
		indirectHit=700;
		indirectHitRange=5;
		
		model = "\fza_ah64_US\fza_agm114c";
		proxyShape="\fza_ah64_US\fza_agm114c";
		effectsmissile = "missile3";
	};
	class fza_agm114c : fza_agm114k
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
	
		hit=1200;
		indirectHit=700;
		indirectHitRange=5;
		
		model = "\fza_ah64_US\fza_agm114c";
		proxyShape="\fza_ah64_US\fza_agm114c";
	};
	class fza_agm114m : fza_agm114k
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
	
		hit=1000;
		indirectHit=1000;
		indirectHitRange=5;
		
		model = "\fza_ah64_US\fza_agm114k";
		proxyShape="\fza_ah64_US\fza_agm114k";
	};
	class fza_agm114n : fza_agm114m
	{
		ace_frag_enabled = 0;
		ace_frag_skip = 1;
		
		hit=1000;
		indirectHit=1000;
		indirectHitRange=5;
		
		model = "\fza_ah64_US\fza_agm114k";
		proxyShape="\fza_ah64_US\fza_agm114k";
	};
	class fza_275_m151: 38Rnd_80mm_rockets
	{
		model = "\fza_ah64_us\weps\fza_hydra_m151_wep";
		soundfly[] = {"\fza_ah64_us\audio\fakesound.ogg",1,1,1};
		muzzleeffect = "";
		effectsmissile = "fza_ah64_rocketsmoke";
		simulation="shotRocket";
		thrustTime=2;
		thrust=739;
		maxspeed = 739;
		sideairfriction = 0.1;
		CraterEffects = "HEShellCrater";
		ExplosionEffects = "HEShellExplosion";
	};
	class fza_275_m229: fza_275_m151
	{
		hit=220;
		indirectHit=110;
		indirectHitRange=10;
		simulation="shotRocket";
		simulationStep=0.050000;
		cost=10;
		maneuvrability=0;
		maxControlRange=0;
		thrustTime=1.3;
		thrust=1200;
		model = "\fza_ah64_us\weps\fza_hydra_m229_wep";
		airLock=false;
		fusedistance = 100;
		explosiontime = 0.1;
	};
	class fza_275_m261: fza_275_m151
	{
		hit=1;
		indirectHit=1;
		indirectHitRange=1;
		simulation="shotRocket";
		simulationStep=0.050000;
		cost=9;
		maneuvrability=0;
		maxControlRange=0;
		thrustTime=1.3;
		thrust=1200;
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";
		airLock=false;
		fusedistance = 100;
	};
	class fza_275_m255: fza_275_m151
	{
		hit=1;
		indirectHit=1;
		indirectHitRange=1;
		simulation="shotRocket";
		simulationStep=0.050000;
		cost=8;
		maneuvrability=0;
		maxControlRange=0;
		thrustTime=1.3;
		thrust=1200;
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";
		airLock=false;
		fusedistance = 100;
	};
	class fza_275_m257: fza_275_m151
	{
		hit=1;
		indirectHit=1;
		indirectHitRange=1;
		simulation="shotRocket";
		simulationStep=0.050000;
		cost=8;
		maneuvrability=0;
		maxControlRange=0;
		thrustTime=1.3;
		thrust=1200;
		model = "\fza_ah64_us\weps\fza_hydra_m261_wep";
		airLock=false;
		fusedistance = 100;
	};
	class fza_fim92: MissileBase
	{
		ace_frag_skip = 1;
		airlock = 1;
		cmimmunity = 0.95;
		cost = 10000;
		cratereffects = "AAMissileCrater";
		effectsmissile = "fza_ah64_stingersmoke";
		explosioneffects = "AAMissileExplosion";
		fusedistance = 5;
		hit = 120;
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
	};
	class fza_m73mpsm: B_30mm_HE
	{
		hit=120;
		indirectHit=50;
		indirectHitRange=6;
		timeToLive=60;
		thrust = 0;
		thrusttime = 0;
		explosive = true;
		typicalspeed = 1;
		CraterEffects = "ExploAmmoCrater";
		explosionEffects = "ExploAmmoExplosion";
	};
	class fza_flec_cluster: B_30mm_HE
	{
		hit=50;
		indirectHit=20;
		indirectHitRange=10;
		timeToLive=60;
		thrust = 0;
		thrusttime = 0;
		explosive = true;
		typicalspeed = 1;
		CraterEffects = "ExploAmmoCrater";
		explosionEffects = "ExploAmmoExplosion";
	};
	/*
	class fza_m257_flare: F_40mm_White
	{
		lightcolor[] = {0.5, 0.5, 0.5, 0};
		airfriction = -0.0050;
		timetolive = 100;
	};
	*/
};
