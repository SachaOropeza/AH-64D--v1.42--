#include "BIS_AddonInfo.hpp"
class CfgPatches
{
	class fza_ah64_US
	{
		units[] = {"fza_ah64base","fza_ah64d_b2e","fza_ah64d_b2e_nr"};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {"A3_Air_F_Beta"};
	};
};

#include "config\defines.hpp"
#include "config\misc.hpp"
#include "config\CfgAnimationSourceSounds.hpp"
#include "config\CfgSounds.hpp"
#include "config\CfgRadio.hpp"
#include "config\effects.hpp"
#include "config\CfgMoves.hpp"
#include "config\CfgAmmo.hpp"
#include "config\CfgWeapons.hpp"
#include "config\CfgMagazines.hpp"
#include "config\CfgVehicles.hpp"

#include "uiConfig\defines.hpp"
#include "uiConfig\baseClasses.hpp"
#include "uiConfig\loadout2.hpp"
#include "uiConfig\skinMenu.hpp"
#include "uiConfig\monocle.hpp"
#include "uiConfig\rscTitles.hpp"

/*extern*/ class SensorTemplateIR;
/*extern*/ class SensorTemplateVisual;
/*extern*/ class SensorTemplateActiveRadar;
/*extern*/ class SensorTemplatePassiveRadar;
/*extern*/ class SensorTemplateLaser;
/*extern*/ class SensorTemplateNV;

class DefaultVehicleSystemsDisplayManagerLeft {
	/*extern*/ class Components;
};

class DefaultVehicleSystemsDisplayManagerRight {
	/*extern*/ class Components;
};


//kept here in case needed//
/*class CfgNonAIVehicles
{
	class ProxyWeapon;
	class Proxyfza_agm114l: ProxyWeapon
	{
		model = "\fza_ah64_US\fza_agm114l";
		simulation = "maverickweapon";
	};
	class Proxyfza_agm114k: ProxyWeapon
	{
		model = "\fza_ah64_US\fza_agm114k";
		simulation = "maverickweapon";
	};
	class Proxyfza_agm114: ProxyWeapon
	{
		model = "\fza_ah64_US\fza_agm114c";
		simulation = "maverickweapon";
	};
};*/
