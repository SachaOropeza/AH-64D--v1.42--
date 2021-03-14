class Extended_PreInit_EventHandlers {
	class fza_ah64_PreInits {
		init = "call compile preprocessFileLineNumbers 'fza_ah64_controls\scripting\XEH_preInit.sqf';";
		clientInit = "call compile preprocessFileLineNumbers 'fza_ah64_controls\scripting\XEH_clientInit.sqf';";
	};
};

class Extended_Engine_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_engine_eh {
			engine = "_this call fza_fnc_engineEventHandler;";
		};
	};
};

class Extended_FiredBIS_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_fired_eh {
			firedBIS = "_this call fza_fnc_eventFired; _this call fza_fnc_fxMuzzle; _this call fza_fnc_weaponHellfireAlign; _this call fza_fnc_weaponRocketAlign; _this spawn fza_fnc_weaponSubmunition;";
		};
	};
};
class Extended_GetIn_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_getin_eh {
			getIn = "_this call fza_fnc_eventGetIn;";
		};
	};
};

class Extended_GetOut_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_getout_eh {
			getOut = "_this call fza_fnc_eventGetOut;";
		};
	};
};

class Extended_IncomingMissile_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_incomingMissile_eh {
			incomingMissile = "_this spawn fza_fnc_aseJammer; _this spawn fza_fnc_aseFlaredeploy;";
		};
	};
};

class Extended_Dammaged_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_Dammaged_eh {
			Dammaged = "if(alive (_this select 0) && !(surfaceiswater [getposasl (_this select 0) select 0,getposasl (_this select 0) select 1] && getpos (_this select 0)  select 2 < 0)) then {_this call fza_fnc_damageSystem;}; if(alive (_this select 0)) then {_this select 2};";
		};
	};
};

class Extended_Killed_EventHandlers {
	class fza_ah64base {
		class fza_ah64base_killed_eh {
			killed = "_this call fza_fnc_eventGetOut; _this call BIS_Effects_EH_Killed;";
		}; // helpes remove IHADSS upon dead
	};
};