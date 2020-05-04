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
            maxRange = 16000;       // -1 if undef; in meter
            viewDistanceLimitCoef = -1;      // -1 if undef; coefficient, multiplies current view distance as set in player's options. -1 means view distance is not used to limit sensor range.
            objectDistanceLimitCoef = -1;    // -1 if undef; coefficient, multiplies current object view distance as set in player's options. -1 means object view distance is not used to limit sensor range.

        };

        class GroundTarget      // ranges for targets with ground background
        {
          minRange = 250;         // -1 if undef; in meters
          maxRange = 16000;       // -1 if undef; in meters
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

      class LaserSensorComponent: SensorTemplateLaser
      {
        componentType = "LaserSensorComponent";
      }

    };
  };
  class VehicleSystemsDisplayManagerComponentLeft: DefaultVehicleSystemsDisplayManagerLeft
  {
    class Components: Components
    {
      class SensorsDisplay   //Combined display showing sensors, detected and tracked targets, info about marked target and threats
  		{
  			componentType = "SensorsDisplayComponent";
  			range[] = {16000,8000,4000,2000};     //accepts an integer or an array of available ranges (submode)
  			showTargetTypes = 1+2+4+8+16+32+64+128+256+512+1024; // 1 - Sensor sectors, 2 - Threats, 4 - Marked tgt symbol, 8 - Own detection, 16 - Remote detection, 32 - Active detection, 64 - Passive detection, 128 - Ground tgts, 256 - Air tgts, 512 - Men, 1024 - Special (laser, NV)
  			resource = "RscCustomInfoSensors";
  		};
    };
  };
  class VehicleSystemsDisplayManagerComponentRight: DefaultVehicleSystemsDisplayManagerRight
  {
    class Components: Components
    {
      class SensorsDisplay   //Combined display showing sensors, detected and tracked targets, info about marked target and threats
  		{
  			componentType = "SensorsDisplayComponent";
  			range[] = {16000,8000,4000,2000};     //accepts an integer or an array of available ranges (submode)
  			showTargetTypes = 1+2+4+8+16+32+64+128+256+512+1024; // 1 - Sensor sectors, 2 - Threats, 4 - Marked tgt symbol, 8 - Own detection, 16 - Remote detection, 32 - Active detection, 64 - Passive detection, 128 - Ground tgts, 256 - Air tgts, 512 - Men, 1024 - Special (laser, NV)
  			resource = "RscCustomInfoSensors";
  		};
    };
  };
};
