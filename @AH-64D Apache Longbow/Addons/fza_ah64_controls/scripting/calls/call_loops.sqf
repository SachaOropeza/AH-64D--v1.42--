params["_heli"];

private _apu = "Land_ClutterCutter_small_F" createVehicle position _heli;
private _bat = "Land_ClutterCutter_small_F" createVehicle [0,0,0];
private _timed_apu = time + 24;
private _timed_bat = time + 0;


if(_heli animationphase "plt_apu" == 1) then
{
    _apu attachTo [_heli,[0,0,0]];
    hideObjectGlobal _apu; 

    while {_heli animationphase "plt_apu" == 1} do 
    {
        if (time > _timed_apu) then 
        {
            _timed_apu = time + 60;
			[_apu,["fza_ah64_apu_loop_3D", 100]] remoteExec ["say3d"];
        };
    };
    deleteVehicle _apu;
};

if(_heli animationphase "plt_batt" == 1) then
{
    _bat attachTo [_heli,[0,5,0]];
    hideObjectGlobal _bat;
	
    while {_heli animationphase "plt_batt" == 1} do 
    {
        if (time > _timed_bat) then 
        {
            _timed_bat = time + 13;
			[_bat,["fza_ah64_bat_loop_3D", 10]] remoteExec ["say3d"];
        };
    };
    deleteVehicle _bat;
};