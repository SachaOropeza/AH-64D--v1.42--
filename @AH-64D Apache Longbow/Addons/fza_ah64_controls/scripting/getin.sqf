_array = _this;
_heli = _this select 0;
_position = _this select 1;
_unit = _this select 2;

if(player == driver _heli || player == gunner _heli) then
{

fza_ah64_hfmode = _heli;
fza_ah64_guncontrol = 0;
fza_ah64_estarted = false;

if (_heli iskindof "fza_ah64d_b2e_nr") then
{
fza_ah64_agmode = 2;
} else {
fza_ah64_agmode = 0;
};


if(isNil "fza_ah64_crewweapons") then
{
	fza_ah64_crewweapons = ["SMG_01_F"];
};

if(isNil "fza_ah64_ihadssoff") then
{
	fza_ah64_ihadssoff = 1;
};

if(isNil "fza_ah64_monocleinbox") then
{
	fza_ah64_monocleinbox = 1;
};


if(isNil "fza_ah64_cem") then {fza_ah64_cem = true;};
if(fza_ah64_cem) then
{
		sleep 0.1;
		if(isengineon _heli) then
		{
			_fuelsave = fuel _heli;
			_heli setfuel 0;
			fza_ah64_fuelsave = 0;
			player action ["EngineOff",_heli];
			sleep 0.5;
			player action ["EngineOff",_heli];
			fza_ah64_fuelsave = _fuelsave;
		};

2 cutrsc ["fza_ah64_click_helper", "PLAIN",0.1];
//3 cutrsc ["fza_ah64_click_monocle", "PLAIN",0.1]; TO DISABLE
//3 cutrsc ["", "PLAIN",0.01]; TO DISABLE, RETURNS RSCTITLE ERROR
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlSetText "";
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlSetTextColor [1, 1, 1, 0]; //HIDING MONOCLE WHEN GET IN
((uiNameSpace getVariable "fza_ah64_click_monocle")displayCtrl 501) ctrlCommit 0;
};



//CREW OWN WEAPON CHECK
/*
if(!((primaryWeapon _unit) in fza_ah64_crewweapons) && !(primaryWeapon _unit == "")) then
{
_unit groupchat "Ah damn it. I forgot to stow my weapon. I'll drop it.";
_weaponholder = createVehicle [ "WeaponHolder_Single_limited_weapon_F", (_heli modelToWorld (_heli selectionposition "pos driver")), [], 0, "CAN_COLLIDE" ];
_weaponholder addweaponcargo [(primaryweapon _unit),1];
_unit removeweapon (primaryWeapon _unit);
};
if(!(secondaryWeapon _unit == "")) then
{
_unit groupchat "Rats I'm an idiot. I can't carry that or stow that here!";
_weaponholder = createVehicle [ "WeaponHolder_Single_limited_weapon_F", (_heli modelToWorld (_heli selectionposition "pos driver")), [], 0, "CAN_COLLIDE" ];
_weaponholders addweaponcargo [(secondaryweapon _unit),1];
_unit removeweapon (secondaryWeapon _unit);
};
*/
//END CREW OWN WEAPON CHECK
};
