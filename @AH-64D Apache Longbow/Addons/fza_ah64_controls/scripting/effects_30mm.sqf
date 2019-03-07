private ["_heli"];
_array = _this;
_heli = _this select 0;
_selWeapon = currentWeapon (vehicle player);

// M230 SHAKE
if (_selWeapon == "fza_m230") 
then 
{
addCamShake [0.20,2,20];
};