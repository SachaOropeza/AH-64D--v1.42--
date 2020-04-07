class RscTitles
{
	class fza_ah64_mapfake
	{
		idd = 300;
		movingEnable = 1;
		enableSimulation = 1;
		enableDisplay = 1;
		duration     =  99999;
		fadein       =  0;
		fadeout      =  0;
		name = "fza_ah64_mapfake";
		//uiNameSpace setvariable ['fza_ah64_mapfake',_this select 0];
		onLoad = "_this call fza_ah64_perframe;";
		onunLoad = "((_this) displayCtrl 3001) ctrlSetEventHandler [""Draw"", '']; fza_ah64_pfsstate = false;";
		class controlsBackground
		{
			class fza_ah64_cMap: fza_ah64_mapControl
			{
				idc = 3001;
				moveOnEdges = 0;
				x = -100;
				y = -100;
				w = 0.01;
				h = 0.01;
			};
		};
		class controls {};
		class objects{};
	};
	class fza_ah64_click_helper
	{
		idd = 600;
		movingEnable =  1;
		duration     =  99999;
		fadein       =  0;
		fadeout      =  0;
		name = "fza_ah64_click_helper";
		onLoad = "with uiNameSpace do { fza_ah64_click_helper = _this select 0 }";
		class controls
		{
			class fza_ah64_click_helper_center
			{
				idc = 601;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\hdu\hmd_curs_ca.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.495;
				y = 0.491;
				w = 0.01;
				h = 0.015;
			};
			class fza_ah64_click_helper_txt
			{
				type = 13;
				idc = 602;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.25;
				y = 0.55;
				w = 0.5;
				h = 0.12;
				size = 0.02;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,0.5};
				text = "";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "center";
					shadow = false;
				};
			};
		};
	};
	class fza_ah64_raddisp
	{
		idd = 100;
		movingEnable =  1;
		duration     =  99999;
		fadein       =  0;
		fadeout      =  0;
		name = "fza_ah64_raddisp";
		onLoad = "uiNameSpace setvariable ['fza_ah64_raddisp',_this select 0];";
		class objects
		{
			/*class fza_ah64_ihadss_3Dbg_test
			{
				idc = 249;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ihadss_scope.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};*/
			class fza_ah64_ihadss_hor_c
			{
				idc = 250;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_c.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p1
			{
				idc = 251;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p1.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p2
			{
				idc = 252;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p2.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p3
			{
				idc = 253;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p3.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p4
			{
				idc = 254;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p4.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p5
			{
				idc = 255;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p5.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p6
			{
				idc = 256;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p6.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p7
			{
				idc = 257;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p7.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p8
			{
				idc = 258;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p8.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_p9
			{
				idc = 259;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_p9.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			//negs
			class fza_ah64_ihadss_hor_n1
			{
				idc = 260;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n1.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n2
			{
				idc = 261;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n2.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n3
			{
				idc = 262;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n3.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n4
			{
				idc = 263;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n4.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n5
			{
				idc = 264;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n5.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n6
			{
				idc = 265;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n6.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n7
			{
				idc = 266;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n7.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n8
			{
				idc = 267;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n8.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			class fza_ah64_ihadss_hor_n9
			{
				idc = 268;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_n9.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
			//trans
			class fza_ah64_ihadss_hor_d
			{
				idc = 269;
				type = 82;
				model = "\fza_ah64_us\prx\ihadss\fza_ah64_ihadss_hor_d.p3d";
				scale = 1;
				direction[] = {0, -0.35, -0.65};
				up[] = {0, 0.65, -0.35};
				position[] = {0.5,10,0.5};
				x = 0.5; y = 0.5; z = 0.2;
				xBack = 0.5;
				yBack = 0.5;
				zBack = 1.2;
				inBack = 1;
				enableZoom = 0;
				zoomDuration = 0.001;
			};
		};
		class controls
		{
			class fza_raddisp_container: RscControlsGroup // OFFSET OR EDIT WHOLE HUD CONTAINER
			{
				idc = 20052;
				x = 0;
				y = 0;
				w = ICE_HUD_Monocle_Size * 4;
				h = ICE_HUD_Monocle_Size * 4;
				class controls
				{
				/*
					//HDU WITH FLIR//
					class fza_ah64_raddisp_hdu_bg
					{
				idc = 119;
				type = 0;
				colorText[] = {-1, 1, 0, 0.5};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_us\prx\ihadss\fza_ihadss_scope.p3d";
				style = 48;
				sizeEx = 512;
				x = 0.25;
				y = 0.28;
				w = 1;
				h = 1;
					};
				*/
					//HDU PNVS WITH HDR OR NVG//
					class fza_ah64_raddisp_hdu_bg2
					{
				idc = 120;
				type = 0;
				colorText[] = {-1, 1, 0, 0.5};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "";
				style = 48;
				sizeEx = 1024;
				x = 0.12;
				y = 0.19;
				w = 0.78;
				h = 0.78;
					};
					///base///
					class fza_ah64_raddisp_radrange //ACTIVE SENSOR + RANGE
					{
				type = 13;
				idc = 121;
				style = 2 + 16;
				lineSpacing = 1;
				x = -0.075;//bak -0.055
				y = 0.73; //bak -0.72
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_targrange //SIGHT
					{
				type = 13;
				idc = 122;
				style = 2 + 16;
				lineSpacing = 1;
				x = -0.155; //bak -0.049
				y = 0.73; //bal 0.74
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_collective // TADS FLIR OR DTV
					{
				type = 13;
				idc = 123;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.31;
				y = 0.356;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_speed // IHADSS SPEED
					{
				type = 13;
				idc = 124;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.31;
				y = 0.5;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_radaralt // IHADSS RADAR ALTITUDE
					{
				type = 13;
				idc = 125;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.18;
				y = 0.5;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_weptype // WEAPON TYPE, _weapon, MSL RKT GUN
					{
				type = 13;
				idc = 126;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.58; //bak 0.56
				y = 0.73; //bak 0.72
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_wepstate // SELECTED WEAPON, _weaponstate, LOBL LOAL 6PD ROUNDS
					{
				type = 13;
				idc = 127;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.58; //bak 0.56
				y = 0.75; //bak 0.74
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_safemessage
					{

				type = 13;
				idc = 128;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.25;
				y = 0.65;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "center";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_waypoint
					{
				type = 13;
				idc = 129;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.29;
				y = 0.6;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
				font = "EtelkaMonospaceProBold";
						//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					//JHCMS
					class fza_ah64_raddisp_jhmcs
					{
				idc = 130;
				type = 0;
				colorText[] = {0.1, 1, 0, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\ihadss.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.2485;
				y = 0.16;
				w = 0.5;
				h = 0.68;
			};
					class fza_ah64_raddisp_jhmcs_trk
					{
				idc = 131;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\f16_rsc_jhmcs_targ.paa";
				style = 48;
				sizeEx = 64;
				x = 0;
				y = -50;
				w = 0.0734;
				h = 0.1;
			};
					class fza_ah64_raddisp_target
					{
				idc = 132;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\ah64_target.paa";
				style = 48;
				sizeEx = 64;
				x = 0;
				y = -50;
				w = 0.0734;
				h = 0.1;
			};
					class fza_ah64_raddisp_tadspos
					{
				idc = 133;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\tadspos.paa";
				style = 48;
				sizeEx = 256;
				x = 0.5;
				y = 0.7;
				w = 0.03845;
				h = 0.05;
			};
					class fza_ah64_raddisp_chevron
					{
				idc = 134;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_chev.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.3;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_vsi
					{
				idc = 135;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\alt_vsi.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.678;
				y = 0.49;
				w = 0.01;
				h = 0.02;
			};
					class fza_ah64_raddisp_radaltbar
					{
				idc = 136;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.708;
				y = 0.6325;
				w = 0.01;
				h = 0.0025;
			};
					class fza_ah64_raddisp_fcrdir
					{
				idc = 137;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_fcr.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.678;
				y = 0.3;
				w = 0.032;
				h = 0.04;
			};
					/*class fza_ah64_raddisp_hor_1
			{
				idc = 138;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.41;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_2
			{
				idc = 139;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.43;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_3
			{
				idc = 140;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.45;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_4
			{
				idc = 141;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.47;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_5
			{
				idc = 142;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.51;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_6
			{
				idc = 143;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.53;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_7
			{
				idc = 144;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.55;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};
			class fza_ah64_raddisp_hor_8
			{
				idc = 145;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.57;
				y = 0.6;
				w = 0.015;
				h = 0.0025;
			};*/
					/*class fza_ah64_raddisp_lase
					{
						idc = 138;
						type = 0;
						colorText[] = {0.1, 1, 0, 1};
						font = "EtelkaMonospaceProBold";
						colorBackground[] = {1, 1, 1, 1};
						text = "";
						style = 48;
						sizeEx = 1024;
						x = 0.2485;
						y = 0.16;
						w = 0.5;
						h = 0.68;
					};*/
					class fza_ah64_raddisp_hdg0_tickmark
					{
				idc = 146;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_360.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg30_tickmark
					{
				idc = 147;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_30.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg60_tickmark
					{
				idc = 148;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_60.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg90_tickmark
					{
				idc = 149;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_90.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg120_tickmark
					{
				idc = 150;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_120.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg150_tickmark
					{
				idc = 151;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_150.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg180_tickmark
					{
				idc = 152;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_180.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg210_tickmark
					{
				idc = 153;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_210.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg240_tickmark
					{
				idc = 154;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_240.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg270_tickmark
					{
				idc = 155;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_270.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg300_tickmark
					{
				idc = 156;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_300.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg330_tickmark
					{
				idc = 157;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\mark_330.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.05;
				h = 0.04;
			};
					class fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 158;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.003;
				h = 0.01;
			};
					class fza_ah64_raddisp_hdg20_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 159;
			};
					class fza_ah64_raddisp_hdg40_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 160;
			};
					class fza_ah64_raddisp_hdg50_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 161;
			};
					class fza_ah64_raddisp_hdg70_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 162;
			};
					class fza_ah64_raddisp_hdg80_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 163;
			};
					class fza_ah64_raddisp_hdg100_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 164;
			};
					class fza_ah64_raddisp_hdg110_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 165;
			};
					class fza_ah64_raddisp_hdg130_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 166;
			};
					class fza_ah64_raddisp_hdg140_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 167;
			};
					class fza_ah64_raddisp_hdg160_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 168;
			};
					class fza_ah64_raddisp_hdg170_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 169;
			};
					class fza_ah64_raddisp_hdg190_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 170;
			};
					class fza_ah64_raddisp_hdg200_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 171;
			};
					class fza_ah64_raddisp_hdg220_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 172;
			};
					class fza_ah64_raddisp_hdg230_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 173;
			};
					class fza_ah64_raddisp_hdg250_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 174;
			};
					class fza_ah64_raddisp_hdg260_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 175;
			};
					class fza_ah64_raddisp_hdg280_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 176;
			};
					class fza_ah64_raddisp_hdg290_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 177;
			};
					class fza_ah64_raddisp_hdg310_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 178;
			};
					class fza_ah64_raddisp_hdg320_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 179;
			};
					class fza_ah64_raddisp_hdg340_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 180;
			};
					class fza_ah64_raddisp_hdg350_tickmark: fza_ah64_raddisp_hdg10_tickmark
					{
				idc = 181;
			};
					class fza_ah64_raddisp_pnvspos
					{
				idc = 182;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\headpos.paa";
				style = 48;
				sizeEx = 256;
				x = 0.49;
				y = 0.5;
				w = 0.03845;
				h = 0.05;
			};
					class fza_ah64_raddisp_fcr_for
					{
				idc = 183;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\horizon_bar.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.27;
				w = 0.002;
				h = 0.054;
			};
					class fza_ah64_raddisp_waypoint_gspd
					{

				type = 13;
				idc = 184;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.29;
				y = 0.62;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_velvect
					{
				idc = 185;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\MPD\cue_ca.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.5;
				w = 0.03;
				h = 0.04;
			};
					class fza_ah64_raddisp_slipball
					{
				idc = 186;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\hmd_slip.paa";
				style = 48;
				sizeEx = 1024;
				x = 0.5;
				y = 0.7;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_bobup
					{

				idc = 187;
				type = 0;
				colorText[] = {0.1, 1, 0, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\bobup.paa";
				style = 48;
				sizeEx = 256;
				x = 0.49;
				y = 0.5;
				w = 0.03845;
				h = 0.05;
			};
					class fza_ah64_raddisp_baroalt
					{

				type = 13;
				idc = 188;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.18;
				y = 0.35;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_cscope1
					{
				idc = 190;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope2
					{
				idc = 191;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope3
					{
				idc = 192;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope4
					{
				idc = 193;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope5
					{
				idc = 194;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope6
					{
				idc = 195;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope7
					{
				idc = 196;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope8
					{
				idc = 197;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope9
					{
				idc = 198;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope10
					{
				idc = 199;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope11
					{
				idc = 200;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope12
					{
				idc = 201;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope13
					{
				idc = 202;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope14
					{
				idc = 203;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope15
					{
				idc = 204;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_cscope16
					{
				idc = 205;
				type = 0;
				colorText[] = {1, 1, 1, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\ICONS\f16_rsc_fcr_ac.paa";
				style = 48;
				sizeEx = 1024;
				x = -100;
				y = -100;
				w = 0.018;
				h = 0.024;
			};
					class fza_ah64_raddisp_fov
					{
				idc = 206;
				type = 0;
				colorText[] = {0.1, 1, 0, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "\fza_ah64_US\tex\HDU\FOV-W.paa";
				style = 48;
				sizeEx = 1024;
				x = (safezoneX + safezoneW * 0.4);
				y = (safezoneY + safezoneH * 0.4);
				w = (safezoneW * 0.2);
				h = (safezoneH * 0.2);
			};
					class fza_ah64_raddisp_rcd // RECORD
					{
				type = 13;
				idc = 802;
				style = 2 + 16;
				lineSpacing = 1;
				x = -0.076;
				y = 0.75;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_lsrcode // LASER CODE
					{
						type = 13;
						idc = 803;
						style = 2 + 16;
						lineSpacing = 1;
						x = -0.138; //bak -0.049
						y = 0.71; //bak -0.72
						w = 0.5;
						h = 0.12;
						size = 0.024;
						colorBackground[] = {0,0,0,0};
						colorText[] = {0.1,1,0,1};
						text = "0";
						font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "right";
					shadow = false;
				};
			};
					class fza_ah64_raddisp_acq // TADS ACQ, FCR TADS
					{
				type = 13;
				idc = 804;
				style = 2 + 16;
				lineSpacing = 1;
				x = 0.64;
				y = 0.73;
				w = 0.5;
				h = 0.12;
				size = 0.024;
				colorBackground[] = {0,0,0,0};
				colorText[] = {0.1,1,0,1};
				text = "0";
				font = "EtelkaMonospaceProBold";
				class Attributes
				{
					font = "EtelkaMonospaceProBold";
					//color = "1EFF00";
					align = "left";
					shadow = false;
				};
			};
				};
			};
		};
	};
	class fza_ah64_monocleinbox
	{
		idd = 500;
		movingEnable =  1;
		duration     =  99999;
		fadein       =  0;
		fadeout      =  0;
		name = "fza_ah64_monocleinbox";
		onLoad = "uiNameSpace setvariable ['fza_ah64_monocleinbox',_this select 0];";
		
		class controls
		{
			class fza_ah64_monocle
			{
                idc = 501;
                type = 0;
                colorText[] = {1,1,1,1};
                font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
                text = "\fza_ah64_US\tex\HDU\monocle_solid.paa";
                style = 48;
                sizeEx = 1;
                x = (ICE_HUD_SCX-ICE_HUD_Monocle_Size)*0.2 + 0.15;
                y = (ICE_HUD_SCY-ICE_HUD_Monocle_Size)*0.2;
				w = ICE_HUD_Monocle_Size*0.707;
                h = ICE_HUD_Monocle_Size;
			};
		};
	};
	class fza_ah64_laseit
	{
		idd = 700;
		movingEnable =  1;
		duration     =  99999;
		fadein       =  0;
		fadeout      =  0;
		name = "fza_ah64_laseit";
		onLoad = "uiNameSpace setvariable ['fza_ah64_laseit',_this select 0];";
		class controls
		{
			class fza_ah64_laseonoff
			{
                idc = 701;
				type = 0;
				colorText[] = {0.1, 1, 0, 1};
				font = "EtelkaMonospaceProBold";
				colorBackground[] = {1, 1, 1, 1};
				text = "";
				style = 48;
				sizeEx = 1024;
				x = 0.2485;
				y = 0.16;
				w = 0.5;
				h = 0.68;
			};
		};
	};
};
