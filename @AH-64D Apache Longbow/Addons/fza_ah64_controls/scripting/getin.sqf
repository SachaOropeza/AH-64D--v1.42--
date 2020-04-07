_array = _this;
_heli = _this select 0;
_position = _this select 1;
_unit = _this select 2;

if(player == driver _heli) then
{
	if (_heli iskindof "fza_ah64d_b2e_nr") then
	{
	fza_ah64_agmode = 2;
	} else {
	fza_ah64_agmode = 0;
	};
	
fza_ah64_hfmode = _heli;
fza_ah64_guncontrol = 0;

// COMPLEX ENGINE MODE (CEM)
/*
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
			fza_ah64_fuelsave = _fuelsave;
		};
};
*/
};
