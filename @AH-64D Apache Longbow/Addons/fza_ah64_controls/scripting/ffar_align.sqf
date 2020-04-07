_array = _this;
_ah64 = _this select 0;
_weapon = _this select 1;
_muzzle = _this select 2;
_mode = _this select 3;
_ammotype = _this select 4;
_missobj = _this select 6;
_mags = magazines _ah64;

if(!(player == driver _ah64 || player == gunner _ah64)) exitwith{};

//MSL GUIDANCE STARTS HERE !

if (_missobj isKindOf "fza_agm114l" || _missobj isKindOf "fza_agm114k" || _missobj isKindOf "fza_fim92") then
{
sleep 0.1;
[_ah64,_missobj] execvm "\fza_ah64_controls\scripting\missile_guide.sqf";
};





if (_weapon == "fza_ah64_chaff30") then
{

fza_ah64_curchfln = fza_ah64_curchfln + 1;
fza_ah64_chaffcount = fza_ah64_chaffcount - 1;
if(_mode == "Single") then {fza_ah64_cmsel = 0;};
if(_mode == "Burst") then {fza_ah64_cmsel = 1;};
sleep 3;
fza_ah64_curchfln = fza_ah64_curchfln - 1;
};

if (_weapon == "fza_CMFlareLauncher") then
{
fza_ah64_curflrln = fza_ah64_curflrln + 2;
fza_ah64_flarecount = fza_ah64_flarecount - 1;
if(_mode == "Single") then {fza_ah64_cmsel = 2;};
if(_mode == "Burst") then {fza_ah64_cmsel = 3;};
sleep 3;
fza_ah64_curflrln = fza_ah64_curflrln - 2;
};

//SPECIAL SCRIPTS

//Damages any outside occupants if wing stores used

if(!(_weapon == "fza_m230")) then
{
{
_x setdamage ((damage _x) + 0.05);
} foreach (crew _ah64 - [gunner _ah64,driver _ah64]);
};

//Gun fault due to overheat

if (_weapon == "fza_m230" && (player == gunner _ah64 || local gunner _ah64 || isNull gunner _ah64)) then
{
if(time - fza_ah64_firekeypressed > 1) then {fza_ah64_burst = 0;};
if(fza_ah64_gunheat > 105) then {[_ah64] call fza_ah64_weaponfault;};
fza_ah64_burst = fza_ah64_burst + 1;
fza_ah64_gunheat = fza_ah64_gunheat + 1;
fza_ah64_firekeypressed = time;
};

//RKTs salvos

if(player == gunner _ah64 || local gunner _ah64 || isNull gunner _ah64) then
{
sleep 0.011;
if(fza_ah64_rocketsalvo > 0 && fza_ah64_salvofired < fza_ah64_rocketsalvo && (_weapon in fza_ah64_rocketweps14 || _weapon in fza_ah64_rocketweps23 || _weapon in fza_ah64_rocketweps1 || _weapon in fza_ah64_rocketweps2 || _weapon in fza_ah64_rocketweps3 || _weapon in fza_ah64_rocketweps4)) then
{
	if(_ah64 ammo _weapon <= 0) then {fza_ah64_salvofired = 0;};
	_weaponindex = 1;
	_wpncounter = 0;
	{if(_x == _weapon) then {_weaponindex = _wpncounter;}; _wpncounter = _wpncounter + 1;} foreach (weapons _ah64);
	_ah64 setWeaponReloadingTime [gunner _ah64, _weapon, 0];
	_ah64 action ["useWeapon",_ah64,gunner _ah64,_weaponindex];
};

if(fza_ah64_salvofired >= fza_ah64_rocketsalvo) then {sleep 0.1; fza_ah64_salvofired = 0;};
};