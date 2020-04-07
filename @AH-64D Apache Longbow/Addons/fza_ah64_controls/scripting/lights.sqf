_heli = _this select 0;

while{alive _heli} do{

    _floodlamps = round(_heli animationPhase "plt_floodlamps");

    if (_floodlamps == 1) then {
        _heli setHit ["plt_floodlamps",0];
    }else{
        _heli setHit ["plt_floodlamps",1];
    };
    sleep 0.01;
};