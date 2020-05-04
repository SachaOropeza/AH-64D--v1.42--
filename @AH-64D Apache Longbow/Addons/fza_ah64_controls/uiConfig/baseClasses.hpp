class fza_ah64_RscButton
{
	type = CT_BUTTON;
	idc = -1;
	style = ST_CENTER;
	colorText[] = {0, 0, 0, 1};
	colorFocused[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 0, 0, 0, 0.7 };
	colorBackground[] = { 1, 1, 1, 1 };
	colorBackgroundDisabled[] = { 1, 1, 1, 0.5 };
	colorBackgroundActive[] = { 1, 1, 1, 1 };
	font = FontM;
	sizeEx = 0.025;
	soundPush[] = {, 0.2, 1};
	soundClick[] = {"ui\ui_ok", 0.2, 1};
	soundEscape[] = {"ui\ui_cc", 0.2, 1};
	default = false;
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	colorShadow[] = { 0, 0, 0, 0 };
	colorBorder[] = { 0, 0, 0, 1 };
	borderSize = 0;
	soundEnter[] = { "", 0, 1 }; // no sound
	x = 0.4;
	y = 0.475;
	w = 0.2;
	h = 0.05;
	text = "Close";
	action = "";
};
class fza_ah64_wepbtn : fza_ah64_RscButton
{
    colorText[] = {0, 0, 0, 1};
	colorFocused[] = { 0, 0, 0, 0 };
	colorDisabled[] = { 0, 0, 0, 0 };
	colorBackground[] = { 0, 0, 0, 0 };
	colorBackgroundDisabled[] = { 0, 0, 0, 0 };
	colorBackgroundActive[] = { 0, 0, 0, 0 };
	colorShadow[] = { 0, 0, 0, 0 };
	colorBorder[] = { 0, 0, 0, 0 };
	sizeEx = 0.018;
	borderSize = 0;
	text = "";
	action = "";
};
class fza_ah64_RscText
{
	type = CT_STATIC;
	idc = -1;
	style = ST_LEFT;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	font = FontM;
	sizeEx = 0.04;
};
class fza_ah64_RscBlueText: fza_ah64_RscText
{
        type = CT_STATIC;
        idc = -1;
        style = 16;
	linespacing = 1;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {0, 0, 0.8, 1};
        font = FontM;
        sizeEx = 0.02;
};
class fza_ah64_RscYellowText: fza_ah64_RscText
{
	type = CT_STATIC;
	idc = -1;
	style = 16;
	linespacing = 1;
	colorBackground[] = {0.92, 0.7, 0, 1};
	colorText[] = {0, 0, 0, 1};
	font = FontM;
	sizeEx = 0.03;
};
class fza_ah64_RscLB_C
{
	style = ST_LEFT;
	idc = -1;
	colorSelect[] = {0.4, 0.4, 0.4, 1};
	colorSelectBackground[] = {0.2, 0.2, 0.2, 1};
	colorDisabled[] = { 0, 0, 1, 0.7 };
	colorText[] = {0.2, 0.2, 0.2, 1};
	colorBackground[] = {0.4, 0.4, 0.4, 1};
	font = FontM;
	sizeEx = 0.025;
	rowHeight = 0.04;
	soundPush[] = {, 0.2, 1};
	soundClick[] = {"", 0.2, 1};
	soundEscape[] = {"", 0.2, 1};
	soundEnter[] = { "", 0, 1 }; // no sound
	soundSelect[] = {"", 0.2, 1};
	soundExpand[] = {"", 0.2, 1};
	soundCollapse[] = {"", 0.2, 1};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	maxHistoryDelay = 0.1;
	scrollbar = 1;
};
class fza_ah64_RscCombo:fza_ah64_RscLB_C
{
	type = CT_COMBO;
	wholeHeight = 0.3;
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	maxHistoryDelay = 1.0;
	shadow = 0;
	class ScrollBar
	{
		color[] = {0.92, 0.73, 0, 1};
		colorActive[] = {0.92, 0.73, 0, 1};
		colorDisabled[] = {0.92, 0.73, 0, 0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
		shadow = 0;
	};
};
class fza_ah64_RscListbox:fza_ah64_RscLB_C
{
	type = CT_LISTBOX;
	wholeHeight = 0.3;
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	maxHistoryDelay = 1.0;
	shadow = 0;
	class ListScrollBar
	{
		color[] = {0.92, 0.73, 0, 1};
		colorActive[] = {0.92, 0.73, 0, 1};
		colorDisabled[] = {0.92, 0.73, 0, 0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
		shadow = 0;
	};
};
class fza_ah64_TEMPL_EDIT
{
	idc = -1;
	type = CT_EDIT;
	style = ST_LEFT;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	sizeEx = 0.025;
	font = FontM;
	text = "";
	colorText[] = {1, 0, 0, 1};
	autocomplete = false;
	colorSelection[] = {1, 1, 1, 1};
	colorDisabled[] = { 0, 0, 0, 0.7 };
};

/////////////////////////////////////////////////////////////
////////////////////////////IHADSS///////////////////////////
/////////////////////////////////////////////////////////////
class RscObject;
class fza_ah64_mapControl
{
	idc = -1;
	type = 100;
	style = 48;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	colorBackground[] = {1,1,1,0};
	colorText[] = {0,0,0,0};
	colorSea[] = {0.56,0.8,0.98,0};
	colorForest[] = {0.6,0.8,0.2,0};
	colorRocks[] = {0.5,0.5,0.5,0};
	colorCountlines[] = {0.65,0.45,0.27,0};
	colorMainCountlines[] = {0.65,0.45,0.27,0};
	colorCountlinesWater[] = {0,0.53,1,0};
	colorMainCountlinesWater[] = {0,0.53,1,0};
	colorForestBorder[] = {0.4,0.8,0,0};
	colorRocksBorder[] = {0.5,0.5,0.5,0};
	colorPowerLines[] = {0,0,0,0};
	colorNames[] = {0,0,0,0};
	colorInactive[] = {1,1,1,0};
	colorLevels[] = {0,0,0,0};
	colorRailWay[] = {0,0,0,0};
	colorOutside[] = {0.56,0.8,0.98,0};
	//a3compat//
	colorTracks[] = {0,0,0,0};
	colorRoads[] = {0,0,0,0};
	colorMainRoads[] = {0,0,0,0};
	colorTracksFill[] = {0,0,0,0};
	colorRoadsFill[] = {0,0,0,0};
	colorMainRoadsFill[] = {0,0,0,0};
	colorGrid[] = {0,0,0,0};
	colorGridMap[] = {0,0,0,0};
	////////////
	font = "TahomaB";
	sizeEx = 0;
	stickX[] = {0,{"Gamma",1,1.5 }};
	stickY[] = {0,{"Gamma",1,1.5 }};
	ptsPerSquareSea = 0;
	ptsPerSquareTxt = 0;
	ptsPerSquareCLn = 0;
	ptsPerSquareExp = 0;
	ptsPerSquareCost = 0;
	ptsPerSquareFor = "0f";
	ptsPerSquareForEdge = "0f";
	ptsPerSquareRoad = 0;
	ptsPerSquareObj = 0;
	fontLabel = "PuristaMedium";
	sizeExLabel = 0;
	fontGrid = "PuristaMedium";
	sizeExGrid = 0;
	fontUnits = "PuristaMedium";
	sizeExUnits = 0;
	fontNames = "PuristaMedium";
	sizeExNames = 0;
	fontInfo = "PuristaMedium";
	sizeExInfo = 0;
	fontLevel = "PuristaMedium";
	sizeExLevel = 0;
	scaleMax = 1;
	scaleMin = 0.125;
	text = "";
	maxSatelliteAlpha = 0;
	alphaFadeStartScale = 1;
	alphaFadeEndScale = 1.1;
	showCountourInterval = 1;
	scaleDefault = 2;
	class Task
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {1,0.537,0,0};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		iconCreated = "";
		iconCanceled = "";
		iconDone = "";
		iconFailed = "";
		colorCreated[] = {1,1,1,0};
		colorCanceled[] = {1,1,1,0};
		colorDone[] = {1,1,1,0};
		colorFailed[] = {1,1,1,0};
	};
	class CustomMark
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.6471,0.6706,0.6235,0};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Legend
	{
		x = "SafeZoneX";
		y = "SafeZoneY";
		w = 0.34;
		h = 0.152;
		font = "PuristaMedium";
		sizeEx = 0.03921;
		colorBackground[] = {0.906,0.901,0.88,0};
		color[] = {0,0,0,0};
	};
	class Bunker
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.55,0.64,0.43,0};
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Bush
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.45,0.64,0.33,0};
		size = 14;
		importance = "0.2 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class BusStop
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.15,0.26,0.87,0};
		size = 12;
		importance = "1 * 10 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Command
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.9,0,0};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Cross
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "0.7 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fortress
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Fuelstation
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "2 * 16 * 0.05";
		coefMin = 0.75;
		coefMax = 4;
	};
	class Fountain
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.2,0.45,0.7,0};
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Hospital
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.78,0,0.05,0};
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Chapel
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.55,0.64,0.43,0};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Church
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Lighthouse
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 14;
		color[] = {0,0.9,0,0};
		importance = "3 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Quay
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "2 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Rock
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.1,0.1,0.1,0};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Ruin
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 16;
		color[] = {0,0.9,0,0};
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
	};
	class SmallTree
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.45,0.64,0.33,0};
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Stack
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		size = 20;
		color[] = {0,0.9,0,0};
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Tree
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.45,0.64,0.33,0};
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Tourism
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.78,0,0.05,0};
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.7;
		coefMax = 4;
	};
	class Transmitter
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.9,0,0};
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class ViewTower
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.9,0,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Watertower
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0.2,0.45,0.7,0};
		size = 20;
		importance = "1.2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
	};
	class Waypoint
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class WaypointCompleted
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class PowerSolar
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class PowerWave
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class PowerWind
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class Shipwreck
	{
		icon = "\fza_ah64_us\tex\ICONS\f16_rsc_fcr_gen.paa";
		color[] = {0,0.35,0.7,0};
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
	};
	class ActiveMarker
	{
		color[] = {0.3,0.1,0.9,0};
		size = 50;
	};
};

class RscControlsGroup
{
	//type = CT_CONTROLS_GROUP;
	type = 15;
	idc = -1;
	//style = ST_MULTI;
	style = 16;
    x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow=0;
	class Controls{};
};
