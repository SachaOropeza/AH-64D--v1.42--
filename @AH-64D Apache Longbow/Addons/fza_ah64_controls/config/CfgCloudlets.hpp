class CfgCloudlets
{
	class Default;
	class fza_burst_smoke: Default
	{
		interval = 0.06;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 12;
		particleFSFrameCount = 8;
		particleFSLoop = 1;
		angleVar = 1;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 1;
		lifeTime = 6;
		moveVelocity[] = {0,0,0};
		rotationVelocity = 0;
		weight = 7.5;
		volume = 6;
		rubbing = 0.05;
		size[] = {0.4,1.2,2,2.8,3.7,4.5,5.4,6.5};
		color[] = {{0.996, 0.992, 0.964,1},{0.996, 0.992, 0.964,0}};
		animationSpeed[] = {1};
		randomDirectionPeriod = 1;
		randomDirectionIntensity = 0;
		onTimerScript = "";
		beforeDestroyScript = "";
		lifeTimeVar = 4;
		positionVar[] = {0.1,0.2,0.1};
		MoveVelocityVar[] = {0.02,0.005,0.02};
		rotationVelocityVar = 20;
		sizeVar = 0.3;
		colorVar[] = {0,0,0,0};
		randomDirectionPeriodVar = 0;
		randomDirectionIntensityVar = 0;
	};
	class fza_trailhead: Default
	{
		interval = 0.002;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 13;
		particleFSFrameCount = 2;
		particleFSLoop = 0;
		angleVar = 1;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 0.07;
		lifeTime = 10;
		weight = 1.5;
		volume = 0.5;
		rubbing = 0.1;
		size[] = { 0.15, 0.075, 0 };
		color[] = { { 1, 0.2, 0.1, -500 }, { 1, 0.2, 0.1, -500 } };
		emissiveColor[] = { { 5000, 750, 350, 0 },{ 5000, 750, 350, 0 }, { 0, 0, 0, 0 } };
		colorVar[] = { 0.05, 0.05, 0.05, 5 };
		animationSpeed[] = {1000};
		onTimerScript = "";
		beforeDestroyScript = "";
		particleEffects = "fza_trailsmoke_small";
		postEffects = "fza_smoke_effect";
		lifeTimeVar = 1;
		positionVar[] = {1,1,1};
		sizeVar = 0;
		rotationVelocity = 0.75;
		rotationVelocityVar = 0.25;
		randomDirectionPeriod = 1.25;
		randomDirectionIntensity = 0.25;
		randomDirectionIntensityVar = 0.1;
		moveVelocity[] = { 0, -3, 30 };
		moveVelocityVar[] = { 5, 6, 5 };
		bounceOnSurface = 0;
		bounceOnSurfaceVar = 0;
	};
	class fza_trailsmoke_small: Default
	{
		interval = 0.02;
		circleRadius = 0;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 12;
		particleFSFrameCount = 8;
		particleFSLoop = 1;
		angleVar = 1;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 1;
		weight = 1.25;
		volume = 1;
		rubbing = 0.1;
		lifeTime = 15;
		lifeTimeVar = 5;
		size[] = {0.15,0.75,1,2,5,4.5,4.5};
		sizeCoef = 1;
		sizeVar = 0.05;
		colorVar[] = {0,0,0,0.1};
		color[] = {{0.949,0.941,0.750,0},{0.949,0.941,0.85,0.2},{0.949,0.941,0.941,0.2},{0.949,0.941,0.925,0.01},{0.949,0.941,0.925,0}};
		colorCoef[] = {1,1,1,1};
		animationSpeed[] = {1};
		animationSpeedCoef = 1;
		onTimerScript = "";
		beforeDestroyScript = "";
		positionVar[] = {0,0,0};
		rotationVelocity = 1.5;
		rotationVelocityVar = 1.5;
		randomDirectionPeriod = 0.4;
		randomDirectionIntensity = 0.1;
		randomDirectionIntensityVar = 0.1;
		moveVelocity[] = {0,0,0};
		moveVelocityVar[] = {0,0,0};
	};
	class fza_smoke: Default
	{
		interval = 0.8;
		circleRadius = 0.5;
		circleVelocity[] = {0,0,0};
		particleShape = "\A3\data_f\ParticleEffects\Universal\Universal";
		particleFSNtieth = 16;
		particleFSIndex = 12;
		particleFSFrameCount = 8;
		particleFSLoop = 1;
		angleVar = 1;
		animationName = "";
		particleType = "Billboard";
		timerPeriod = 1;
		lifeTime = 30;
		moveVelocity[] = {0.2,0,0.2};
		weight = 1.5;
		volume = 1.2;
		rubbing = 0.1;
		size[] = {6,9,12,16,20,25};
		color[] = {{0.996, 0.992, 0.85,0},{0.996, 0.992, 0.9,0.5},{0.996, 0.992, 0.964,1},{0.996, 0.992, 0.964,0.2},{0.996, 0.992, 0.964,0}};
		colorVar[] = {0,0,0,0.3};
		animationSpeed[] = {1};
		onTimerScript = "";
		beforeDestroyScript = "";
		lifeTimeVar = 4;
		position[] = {0,0,0};
		positionVar[] = {4,2,4};
		MoveVelocityVar[] = {0.4,0.2,0.4};
		rotationVelocity = 1.5;
		rotationVelocityVar = 1.5;
		randomDirectionPeriod = 0.4;
		randomDirectionIntensity = 0.1;
		randomDirectionIntensityVar = 0.1;
		sizeVar = 0.3;
	};
};

class fza_trail_smoke_small_effect
{
	class Trail_Smoke_Small
	{
		simulation = "particles";
		type = "fza_trailsmoke_small";
		position[] = {0,0,0};
		intensity = 1;
		interval = 0.1;
		lifeTime = 10;
	};
};

class fza_airburst_effect
{
	class Explosion
	{
		simulation = "particles";
		type = "GrenadeExp";
		position[] = { 0, 0, 0 };
		intensity = 0.5;
		interval = 1;
		lifeTime = 0.5;
	};
	class Explosion_Light
	{
		simulation = "light";
		type = "GrenadeExploLight";
		position[] = { 0, 0, 0 };
		intensity = 0.01;
		interval = 1;
		lifeTime = 0.2;
	};
	class Burst_Smoke
	{
		simulation = "particles";
		type = "fza_burst_smoke";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
	class Trail_Head
	{
		simulation = "particles";
		type = "fza_trailhead";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 0.1;
	};
};

class fza_smoke_effect
{
	class Smoke
	{
		simulation = "particles";
		type = "fza_smoke";
		position[] = {0,0,10};
		lifeTime = 120;
		qualityLevel = -1;
	};
};


class fza_ah64_rocketsmoke
{
	class Light1
	{
		simulation = "light";
		type = "RocketLight";
		position[] = {0,0,0};
		intensity = 0.01;
		interval = 1;
		lifeTime = 1;
	};
	class MissileEffects1
	{
		simulation = "particles";
		type = "Missile1";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
};
class fza_ah64_hellfiresmoke
{
	class Light1
	{
		simulation = "light";
		type = "RocketLight";
		  position[] = {0,0,0};
		  intensity = 0.01;
		  interval = 1;
		  lifeTime = 1;
	};
	class Missile2
	{
		simulation = "particles";
		type = "Missile2";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
};
class fza_ah64_stingersmoke
{
	class Light1
	{
		simulation = "light";
		type = "RocketLight";
		position[] = {0,0,0};
		intensity = 0.01;
		interval = 1;
		lifeTime = 1;
	};
	class Missile3
	{
		simulation = "particles";
		type = "Missile3";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
};

