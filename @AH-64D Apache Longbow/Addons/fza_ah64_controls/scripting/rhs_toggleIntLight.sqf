/*
	Light toggle script - turns on search light

	_v - vehicle name
	_a - animation name
	_t - turret path, default [0]

	a: reyhard
*/

params["_v","_a",["_t",[0]]];

private _p		= call rhs_fnc_findPlayer;
private _delete	= false;
private _d		= objNull;

if(isnull (_v turretUnit _t))then{
	_delete = true;
	_d = createAgent ["VirtualMan_F", [0,0,0], [], 0, "FORM"];
	_d moveInTurret [_v,_t];
};

if(isLightOn [_v,_t])then{
	_v animateSource [_a,1,true];
	(_v turretUnit _t) action ["searchlightOff",_v];
}else{
	_v animateSource [_a,0,true];
	(_v turretUnit _t) action ["searchlightOn",_v];
};
if(_delete)then{deleteVehicle _d;};