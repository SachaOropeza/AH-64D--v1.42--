private ["_heli"];
_heli = _this select 0;
if(player == driver _heli && (vehicle player) isKindOf "fza_ah64base") then
{
		if(inputaction "nextCM" == 1 && fza_ah64_cmpressed == 0) then {fza_ah64_cmsel = fza_ah64_cmsel + 1; fza_ah64_cmpressed = 1;};
		if(inputaction "nextCM" == 0 && fza_ah64_cmpressed == 1) then {fza_ah64_cmpressed = 0;};
		if(fza_ah64_cmsel > 1 && count (_heli weaponsTurret [-1]) < 2) then {fza_ah64_cmsel = 0;};
		if(fza_ah64_cmsel > 3 && count (_heli weaponsTurret [-1]) > 1) then {fza_ah64_cmsel = 0;};

			if(player == driver _heli && (_heli animationphase "plt_apu" > 0.5 || isengineon _heli)) then
			{
			fza_ah64_headdir = (-0.0125*(inputaction "AimLeft" + (0.0125 * inputaction "LookLeft"))) + (0.0125*(inputaction "AimRight" + (0.0125 * inputaction "LookRight")));
			fza_ah64_headelev = (0.0125*(inputaction "AimUp" + (0.0125 * inputaction "LookUp"))) + (-0.0125*(inputaction "AimDown" + (0.0125 * inputaction "LookDown")));

			fza_ah64_pnvsgreff = ppEffectCreate ["colorCorrections",1500];
			fza_ah64_pnvsgreff ppEffectAdjust [1,1,0,[-2,2,-2,0.05],[-4.99,0.74,0.44,0.38],[0.33,0.33,0.33,-0.64],[0,0,0,0,0,0,4]]; //TEST PNVS OPTICS REWORK
			fza_ah64_pnvsgreff ppEffectCommit 0;
			fza_ah64_pnvsgreff ppEffectEnable true;
			fza_ah64_pnvsfgeff = ppEffectCreate ["filmGrain",2000];
			fza_ah64_pnvsfgeff ppEffectAdjust [0.2,1,1,0.5,0.5,true];
			fza_ah64_pnvsfgeff ppEffectCommit 0;
			fza_ah64_pnvsfgeff ppEffectEnable true;

			} else {

			fza_ah64_pnvsgreff = ppEffectCreate ["colorCorrections",1500];
			fza_ah64_pnvsgreff ppEffectAdjust [0, 0, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
			fza_ah64_pnvsgreff ppEffectCommit 0;
			fza_ah64_pnvsgreff ppEffectEnable true;
			fza_ah64_pnvsfgeff = ppEffectCreate ["filmGrain",2000];
			fza_ah64_pnvsfgeff ppEffectEnable true;
			fza_ah64_pnvsfgeff ppEffectAdjust [0, 0, 0, 0, 0, true];
			fza_ah64_pnvsfgeff ppEffectCommit 0;
			};

			if(cameraView == "EXTERNAL" || cameraView == "INTERNAL") then
			{
			fza_ah64_pnvsgreff ppEffectEnable false;
			fza_ah64_pnvsfgeff ppEffectEnable false;
			};
			
			if (vehicle player != _heli && !(vehicle player isKindOf "fza_ah64base") || !(alive _heli) && !(vehicle player isKindOf "fza_ah64base") || !(alive player)) then 
			{
			fza_ah64_pnvsgreff ppEffectEnable false;
			fza_ah64_pnvsfgeff ppEffectEnable false;
			};

			_headcenter = inputaction "LookCenter";
			if(_headcenter > 0) then
			{
				fza_ah64_pnvsdir = 0;
				fza_ah64_pnvselev = 0.5;
				fza_ah64_turdir = 0;
				fza_ah64_turelev = 0;
			};

			fza_ah64_pnvsdir = fza_ah64_pnvsdir + fza_ah64_headdir;
			fza_ah64_pnvselev = fza_ah64_pnvselev + fza_ah64_headelev;
			if(fza_ah64_tiron) then {fza_ah64_pnvselev = (-5*(inputaction "LookDownCont")) + (5*(inputaction "LookUpCont")) + 0.5; fza_ah64_pnvsdir = (-1.5*(inputaction "LookLeftCont")) + (1.5*(inputaction "LookRightCont"));};

			if(missionNameSpace getVariable ["fza_ah64_headTrack", false] && (cameraView == "INTERNAL")) then {
				private _vectToTarget = [0,0,0] vectorFromTo (getCameraViewDirection player);
			  private _vectorModelSpace = _heli vectorWorldToModel _vectToTarget;
			  private _angleX = asin (_vectorModelSpace # 0);
			  private _angleY = (asin (_vectorModelSpace # 2) + 8); // 4.74764 is the vertical offset between helo and view dir
			  //player sideChat str [_angleX, _angleY];
			  fza_ah64_pnvsdir = _angleX * (0.75/90);
			  fza_ah64_pnvselev = if(_angleY < 0) then [{_angleY * (1/45)},{_angleY * (1/20)}];
			};

			fza_ah64_pnvsdir = fza_ah64_pnvsdir min 0.75 max -0.75;
			fza_ah64_pnvselev = fza_ah64_pnvselev min 1 max -1;
			
			if("fza_ah64_pnvs_fail" in (_heli magazinesturret [-1])) then {fza_ah64_pnvsdir = -1; fza_ah64_pnvselev = 1;};
			_heli animate ["pnvs",fza_ah64_pnvsdir];
			_heli animate ["pnvs_vert",fza_ah64_pnvselev];
};
