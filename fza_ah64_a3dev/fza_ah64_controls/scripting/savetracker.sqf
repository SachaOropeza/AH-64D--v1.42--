if(!(isNil "fza_ah64_nosave")) exitwith {};
sleep 1;

while{(alive player)} do
{

//reload resources if timestamp doesnt match up
if (time > (fza_ah64_missiontimestamp + 1)) then
{
	waituntil{!(isnull (findDisplay 46))};
	fza_ah64_pf_daytime = 0;
	fza_ah64_overallticker = diag_ticktime;
	sleep 1;
	//30 cutRsc ["fza_ah64_mapfake","PLAIN"];
	fza_ah64_pfsstate = true;
	if(fza_ah64_ihadssoff == 0 && (vehicle player iskindof "fza_ah64base" && (player == driver vehicle player || player == gunner vehicle player))) then
	{
		1 cutrsc ["fza_ah64_raddisp", "PLAIN",0.1];
		2 cutrsc ["fza_ah64_click_helper", "PLAIN",0.1];
		sleep 0.2;

		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 121) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 122) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 123) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 124) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 125) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 126) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 127) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 128) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 129) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 184) ctrlSetTextColor [0.1, 1, 0, 1];
		((uiNameSpace getVariable "fza_ah64_raddisp")displayCtrl 188) ctrlSetTextColor [0.1, 1, 0, 1];
	};
};
sleep 0.1;

};
