private ["_heli"];
_heli = _this select 0;
if(player == driver _heli && (vehicle player) isKindOf "fza_ah64base") then
{
			if(player == driver _heli && (_heli animationphase "plt_apu" > 0.5 || isengineon _heli)) then
			{

				ppColor = ppEffectCreate ["ColorCorrections", 1999]; 
				ppColor ppEffectEnable true;
				ppColor ppEffectAdjust [1, 1, 0, [1.5,-1,-1.5,0.5], [5,3.5,-5,-0.5], [-3,5,-5,-0.5]]; 
				ppColor ppEffectCommit 1;

				ppChr = ppEffectCreate ["chromAberration", 1000];
				ppChr ppEffectEnable true;
				ppChr ppEffectAdjust [0.02,0.02,true]; 
				ppChr ppEffectCommit 1;

				ppBlur = ppEffectCreate ["RadialBlur", 500];
				ppBlur ppEffectEnable true;
				ppBlur ppEffectAdjust [0.02,0.02,0.15,0.15]; 
				ppBlur ppEffectCommit 1;

			};
};
