class Components: Components
{
  class SensorsManagerComponent
	{
    class Components
    {
      class ActiveRadarSensorComponent: SensorTemplateActiveRadar
      {
        componentType = "ActiveRadarSensorComponent";
        class AirTarget      // ranges for targets with sky background
        {
            minRange = 500;         // -1 if undef; in meters
            maxRange = 8000;       // -1 if undef; in meter
            viewDistanceLimitCoef = -1;      // -1 if undef; coefficient, multiplies current view distance as set in player's options. -1 means view distance is not used to limit sensor range.
            objectDistanceLimitCoef = -1;    // -1 if undef; coefficient, multiplies current object view distance as set in player's options. -1 means object view distance is not used to limit sensor range.

        };

        class GroundTarget      // ranges for targets with ground background
        {
          minRange = 250;         // -1 if undef; in meters
          maxRange = 8000;       // -1 if undef; in meters
          viewDistanceLimitCoef = -1;      // -1 if undef; coefficient, multiplies current view distance as set in player's options. -1 means view distance is not used to limit sensor range.
          objectDistanceLimitCoef = -1;    // -1 if undef; coefficient, multiplies current object view distance as set in player's options. -1 means object view distance is not used to limit sensor range.
        };

        typeRecognitionDistance = -1;
        angleRangeHorizontal = 120;
        angleRangeVertical = 60;
        nightRangeCoef = 1;
        maxFogSeeThrough= -1;
        groundNoiseDistanceCoef = -1;
        maxGroundNoiseDistance = -1;
        minSpeedThreshold = 0;
        maxSpeedThreshold = 10;
        minTrackableSpeed = -1e10;
        maxTrackableSpeed = 1500;
        minTrackableATL= -1e10;
        maxTrackableATL= 1e10;
        animDirection = "";
        aimDown = 5;
        allowsMarking= 1;
      };

      class VisualSensorComponent: SensorTemplateVisual
      {
        componentType = "VisualSensorComponent";
        class AirTarget      // ranges for targets with sky background
        {
            minRange = -1;         // -1 if undef; in meters
            maxRange = 6000;       // -1 if undef; in meter
            viewDistanceLimitCoef = -1;      // -1 if undef; coefficient, multiplies current view distance as set in player's options. -1 means view distance is not used to limit sensor range.
            objectDistanceLimitCoef = -1;    // -1 if undef; coefficient, multiplies current object view distance as set in player's options. -1 means object view distance is not used to limit sensor range.

        };

        class GroundTarget      // ranges for targets with ground background
        {
          minRange = -1;         // -1 if undef; in meters
          maxRange = 6000;       // -1 if undef; in meters
          viewDistanceLimitCoef = -1;      // -1 if undef; coefficient, multiplies current view distance as set in player's options. -1 means view distance is not used to limit sensor range.
          objectDistanceLimitCoef = -1;    // -1 if undef; coefficient, multiplies current object view distance as set in player's options. -1 means object view distance is not used to limit sensor range.
        };

        typeRecognitionDistance = -1;
        angleRangeHorizontal = 30;
        angleRangeVertical = 30;
        nightRangeCoef = 1;
        maxFogSeeThrough= 0.95;
        groundNoiseDistanceCoef = -1;
        maxGroundNoiseDistance = -1;
        minSpeedThreshold = 0;
        maxSpeedThreshold = 10;
        minTrackableSpeed = -1e10;
        maxTrackableSpeed = 1500;
        minTrackableATL= -1e10;
        maxTrackableATL= 1e10;
        animDirection = "mainTurret";
        aimDown = 0;
        allowsMarking= 1;
      };
      class IRSensorComponent: SensorTemplateIR {
					class AirTarget {
						minRange = -1;
						maxRange = 8000;
						objectDistanceLimitCoef = -1;
						viewDistanceLimitCoef = 1;
					};
					class GroundTarget {
						minRange = -1;
						maxRange = 8000;
						objectDistanceLimitCoef = 1;
						viewDistanceLimitCoef = 1;
					};
					angleRangeHorizontal = 30;
					angleRangeVertical = 30;
					maxTrackableSpeed = 400;
					componentType = "IRSensorComponent";
					typeRecognitionDistance = -1;
					maxFogSeeThrough = 0.995;
					color[] = {1, 0, 0, 1};
					allowsMarking = 1;
					groundNoiseDistanceCoef = -1;
					maxGroundNoiseDistance = -1;
					minSpeedThreshold = 0;
					maxSpeedThreshold = 0;
					aimDown = 0;
					minTrackableSpeed = -1e+010;
					minTrackableATL = -1e+010;
					maxTrackableATL = 1e+010;
          animDirection = "mainTurret";
				};
      class LaserSensorComponent: SensorTemplateLaser
      {
        componentType = "LaserSensorComponent";
      };

    };
  };
  class VehicleSystemsDisplayManagerComponentLeft
  {
    componentType = "VehicleSystemsDisplayManager";
    x = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFOLEFT_X"",	(safezoneX + 0.5 * (((safezoneW / safezoneH) min 1.2) / 40))])";
    y = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFOLEFT_Y"",	(safezoneY + safezoneH - 21 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25))])";
    left = 1;
    defaultDisplay = "EmptyDisplay";
    class Components
    {
      class SensorsDisplay   //Combined display showing sensors, detected and tracked targets, info about marked target and threats
  		{
  			componentType = "SensorsDisplayComponent";
  			range[] = {16000,8000,4000,2000};     //accepts an integer or an array of available ranges (submode)
  			showTargetTypes = 1+2+4+8+16+32+64+128+256+512+1024; // 1 - Sensor sectors, 2 - Threats, 4 - Marked tgt symbol, 8 - Own detection, 16 - Remote detection, 32 - Active detection, 64 - Passive detection, 128 - Ground tgts, 256 - Air tgts, 512 - Men, 1024 - Special (laser, NV)
  			resource = "RscCustomInfoSensors";
  		};
      class VehicleGunnerDisplay	// Camera feed from gunner's optics
      {
        componentType = "TransportFeedDisplayComponent";
        source = "PrimaryGunner";
      };
      class EmptyDisplay		// Empty display - hide panel
      {
        componentType = "EmptyDisplayComponent";
      };
      class MinimapDisplay	// GPS
      {
        componentType = "MinimapDisplayComponent";
        resource = "RscCustomInfoMiniMap";
      };
    };
  };
  class VehicleSystemsDisplayManagerComponentRight : VehicleSystemsDisplayManagerComponentLeft {
    left = 0;
    right = 1;
    x = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_X"",((safezoneX + safezoneW) - ((10 * (((safezoneW / safezoneH) min 1.2) / 40)) + 0.5 * (((safezoneW / safezoneH) min 1.2) / 40)))])";
    y = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_Y"",(safezoneY + safezoneH - 21 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25))])";
  };
};
