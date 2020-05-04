class CfgSoundShaders {

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////SONICCRACKS//////////////////////////////
	///////////////////////////////////////////////////////////////////////

	class fza_sc_bullet_flyby_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Flyby\20mm_Flyby_1.ogg", 1}, {"fza_ah64_us\audio\Flyby\20mm_Flyby_2.ogg", 1}, {"fza_ah64_us\audio\Flyby\20mm_Flyby_3.ogg", 1}, {"fza_ah64_us\audio\Flyby\20mm_Flyby_4.ogg", 1}, {"fza_ah64_us\audio\Flyby\20mm_Flyby_5.ogg", 1}, {"fza_ah64_us\audio\Flyby\20mm_Flyby_6.ogg", 1}};
		volume = 1.000000;
		range = 200;
	};
	class fza_sc_rocket_flyby_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Flyby\rocket_flyby_1.ogg", 1}, {"fza_ah64_us\audio\Flyby\rocket_flyby_2.ogg", 1}, {"fza_ah64_us\audio\Flyby\rocket_flyby_3.ogg", 1}, {"fza_ah64_us\audio\Flyby\rocket_flyby_4.ogg", 1}, {"fza_ah64_us\audio\Flyby\rocket_flyby_5.ogg", 1}, {"fza_ah64_us\audio\Flyby\rocket_flyby_6.ogg", 1}};
		volume = 1;
		range = 200;
		rangecurve = "fza_basic_vl_sin";
		frequency = "((speed factor [250, 990]) * 0.1) + 1.05";
		limitation = 1;
	};
	class fza_sc_wire_flyby_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Flyby\wire_flyby_1.ogg", 1}, {"fza_ah64_us\audio\Flyby\wire_flyby_2.ogg", 1}};
		volume = 1;
		range = 200;
		rangecurve = "fza_basic_vl_sin";
		frequency = "((speed factor [250, 990]) * 0.1) + 1.05";
		limitation = 1;
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////AMMO/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_sc_30x113_close_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_1", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_2", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_3", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_4", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_5", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_6", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_7", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_very_close_distance_8", 1}};
		volume = 2;
		range = 5;
		rangeCurve[] = {{0, 1.500000}, {10, 1}, {20, 0}};
	};	

	class fza_sc_30x113_medium_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_1", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_2", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_3", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_4", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_5", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_6", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_7", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_close_distance_8", 1}};
		volume = 1.500000;
		range = 20;
		rangeCurve[] = {{0, 0}, {20, 1}, {100, 0}};
	};

	class fza_sc_30x113_far_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_1", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_2", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_3", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_4", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_5", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_6", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_7", 1}, {"fza_ah64_us\audio\Soniccracks\soniccrack_medium_distance_8", 1}};
		volume = 1;
		range = 700;
		rangeCurve[] = {{0, 0}, {20, 0}, {100, 1}, {700, 0}};
	};	
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////EXPLOSIONS///////////////////////////////
	///////////////////////////////////////////////////////////////////////		

	class fza_20mm_explosion_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\close_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\close_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\close_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\close_distance_4.ogg", 1}};
		volume = 1;
		range = 100;
		rangeCurve[] = {{0, 1}, {50, 0}};
	};
	class fza_20mm_explosion_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\medium_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\medium_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\medium_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\medium_distance_4.ogg", 1}};
		volume = 1.500000;
		range = 400;
		rangeCurve[] = {{0, 0}, {50, 1.500000}, {400, 0}};
	};
	class fza_20mm_explosion_far_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\far_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\far_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\far_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\far_distance_4.ogg", 1}};
		volume = 1;
		range = 2000;
		rangeCurve[] = {{0, 0}, {50, 0}, {400, 1}, {2000, 0}};
	};
	
	class fza_rocket_explosion_stereo_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\rocket.ogg", 1}};
		volume = 1;
		range = 400;
		rangeCurve[] = {{0, 1}, {400, 0}};
		limitation = 1;
	};
	class fza_rocket_explosion_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\rocket_distance.ogg", 1}};
		volume = 1;
		range = 1000;
		rangeCurve[] = {{0, 0}, {400, 1}, {1000, 0}};
		limitation = 1;
	};	
	class fza_rocket_explosion_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Rockets\close_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\close_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\close_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\close_distance_4.ogg", 1}};
		volume = 1.500000;
		range = 100;
		rangeCurve[] = {{0, 1}, {50, 0}};
	};
	class fza_rocket_explosion_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Rockets\medium_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\medium_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\medium_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\medium_distance_4.ogg", 1}};
		volume = 1;
		range = 400;
		rangeCurve[] = {{0, 0}, {100, 1}, {400, 0}};
	};
	class fza_rocket_explosion_far_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Rockets\far_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\far_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\far_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\far_distance_4.ogg", 1}};
		volume = 1;
		range = 800;
		rangeCurve[] = {{0, 0}, {50, 0}, {400, 1}, {800, 0}};
	};
	class fza_rocket_explosion_very_far_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Rockets\very_far_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\very_far_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\very_far_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Rockets\very_far_distance_4.ogg", 1}};
		volume = 1;
		range = 3000;
		rangeCurve[] = {{0, 0}, {400, 0}, {800, 1}, {3000, 0}};
	};
	
	class fza_explosion_big_shockwave_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_4.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_5.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_6.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_7.ogg", 1}, {"fza_ah64_us\audio\Explosions\Shockwave\big_explosion_shockwave_8.ogg", 1}};
		volume = 1.500000;
		range = 65;
		limitation = 1;
	};	

	class fza_missile_explosion_stereo_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Missiles\missile.ogg", 1}};
		volume = 1;
		range = 700;
		rangeCurve[] = {{0, 1}, {700, 0}};
		limitation = 1;
	};
	class fza_missile_explosion_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Missiles\missile_distance.ogg", 1}};
		volume = 1;
		range = 1500;
		rangeCurve[] = {{0, 0}, {700, 1}, {1500, 0}};
		limitation = 1;
	};
	
	class fza_small_explosion_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Small\close_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\close_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\close_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\close_distance_4.ogg", 1}};
		volume = 1;
		range = 100;
		rangeCurve[] = {{0, 1}, {50, 0}};
	};
	class fza_small_explosion_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Small\medium_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\medium_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\medium_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\medium_distance_4.ogg", 1}};
		volume = 1.500000;
		range = 400;
		rangeCurve[] = {{0, 0}, {50, 1.500000}, {400, 0}};
	};
	class fza_small_explosion_far_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Small\far_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\far_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\far_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\far_distance_4.ogg", 1}};
		volume = 1;
		range = 800;
		rangeCurve[] = {{0, 0}, {50, 0}, {400, 1}, {800, 0}};
	};
	class fza_small_explosion_very_far_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\Small\very_far_distance_1.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\very_far_distance_2.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\very_far_distance_3.ogg", 1}, {"fza_ah64_us\audio\Explosions\Small\very_far_distance_4.ogg", 1}};
		volume = 1;
		range = 2000;
		rangeCurve[] = {{0, 0}, {400, 0}, {800, 1}, {2000, 0}};
	};	
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////DEBRIS///////////////////////////////////
	///////////////////////////////////////////////////////////////////////	

	class fza_small_debris_regular_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Debris\meadow_1.ogg", 1}, {"fza_ah64_us\audio\Debris\meadow_2.ogg", 1}, {"fza_ah64_us\audio\Debris\meadow_3.ogg", 1}, {"fza_ah64_us\audio\Debris\meadow_4.ogg", 1}};
		volume = "2*(1-houses)";
		range = 100;
		rangeCurve[] = {{0, 1}, {20, 0.250000}, {100, 0}};
		limitation = 1;
	};
	class fza_small_debris_houses_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Debris\houses_1.ogg", 1}, {"fza_ah64_us\audio\Debris\houses_2.ogg", 1}, {"fza_ah64_us\audio\Debris\houses_3.ogg", 1}, {"fza_ah64_us\audio\Debris\houses_4.ogg", 1}};
		volume = "2*houses";
		range = 100;
		rangeCurve[] = {{0, 1}, {20, 0.250000}, {100, 0}};
		limitation = 1;
	};
	
	class fza_big_debris_regular_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Debris\Big\meadow_1.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\meadow_2.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\meadow_3.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\meadow_4.ogg", 1}};
		volume = "2*(1-houses)";
		range = 100;
		rangeCurve[] = {{0, 1}, {20, 0.250000}, {100, 0}};
		limitation = 1;
	};
	class fza_big_debris_houses_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Debris\Big\houses_1.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\houses_2.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\houses_3.ogg", 1}, {"fza_ah64_us\audio\Debris\Big\houses_4.ogg", 1}};
		volume = "2*houses";
		range = 100;
		rangeCurve[] = {{0, 1}, {20, 0.250000}, {100, 0}};
		limitation = 1;
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////ECHO/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////		
	
	class fza_explosion_echo_small_soundshader 
	{
		samples[]  = {{"fza_ah64_us\audio\Echo\explo_s_1.ogg", 1}, {"fza_ah64_us\audio\Echo\explo_s_2.ogg", 1}, {"fza_ah64_us\audio\Echo\explo_s_3.ogg", 1}, {"fza_ah64_us\audio\Echo\explo_s_4.ogg", 1}, {"fza_ah64_us\audio\Echo\explo_s_5.ogg", 1}, {"fza_ah64_us\audio\Echo\explo_s_6.ogg", 1}};
		volume = 5.000000;
		range = 1000;
		rangeCurve[] = {{0, 0}, {30, 1}, {1000, 0}};
	};	
	class fza_explosion_echo_medium_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Medium\explo_m_1.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_2.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_3.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_4.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_5.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_6.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_7.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_8.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_9.ogg", 1}, {"fza_ah64_us\audio\Echo\Medium\explo_m_10.ogg", 1}};
		volume = 5.000000;
		range = 1000;
		rangeCurve[] = {{0, 0}, {30, 1}, {1000, 0}};
	};	
	class fza_explosion_echo_houses_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\houses_1.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_2.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_3.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_4.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_5.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_6.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_7.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_8.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_9.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_10.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_11.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_12.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_14.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_15.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_16.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_17.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_18.ogg", 1}, {"fza_ah64_us\audio\Echo\houses_19.ogg", 1}};
		volume = "5 * houses";
		range = 1000;
		rangeCurve[] = {{0, 0}, {30, 1}, {1000, 0}};
	};	

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////REVERB///////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_shell_explosion_reverb_houses_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\houses.ogg", 1}};
		volume = "houses";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};
	class fza_shell_explosion_reverb_meadow_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\meadow.ogg", 1}};
		volume = "meadows max sea";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};
	class fza_shell_explosion_reverb_forest_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\forest.ogg", 1}};
		volume = "forest";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};

	class fza_small_explosion_reverb_houses_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\Small\small\houses.ogg", 1}};
		volume = "houses";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};
	class fza_small_explosion_reverb_meadow_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\Small\small\meadow.ogg", 1}};
		volume = "meadows max sea";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};
	class fza_small_explosion_reverb_forest_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Echo\Reflections\Small\small\forest.ogg", 1}};
		volume = "forest";
		range = 500;
		limitation = 1;
		rangeCurve[] = {{0, 1}, {100, 0.500000}, {500, 0}};
	};	
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////M230/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////

	class fza_m230_close_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\Close_1.ogg", 1}};
		volume = "3.9810717*(1-interior/1.4)";
		range = 100;
		//rangeCurve[] = {{0, 1}, {20, 1}, {50, 0}};
		frequency = 1;
	};
	class fza_m230_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\Close_Distance.ogg", 1}};
		volume = "3.9810717*(1-interior/1.4)";
		range = 300;
		rangeCurve[] = {{0, 0}, {20, 0}, {50, 1}, {100, 1}, {300, 0}};
		frequency = 1;
	};
	class fza_m230_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\Medium_Distance.ogg", 1}};
		volume = 3.9810717;
		range = 600;
		rangeCurve[] = {{0, 0}, {100, 0}, {300, 1}, {600, 0}};
		frequency = 1;
	};
	class fza_m230_close_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\distance\shot_1.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_2.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_3.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_4.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_5.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_6.ogg", 1}};
		volume = 3.9810717;
		range = 1500;
		rangeCurve[] = {{0, 0}, {300, 0}, {600, 1}, {1500, 0}};
		frequency = 1;
	};
	class fza_m230_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\distance\shot_far_1.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_far_2.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_far_3.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_far_4.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_far_6.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_far_5.ogg", 1}};
		volume = 3.9810717;
		range = 2000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 1}, {2000, 0}};
		frequency = 1;
	};
	class fza_m230_very_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M230\distance\shot_very_far_1.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_very_far_2.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_very_far_3.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_very_far_4.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_very_far_6.ogg", 1}, {"fza_ah64_us\audio\M230\distance\shot_very_far_5.ogg", 1}};
		volume = 3.9810717;
		range = 4000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 0}, {3000, 1}, {4000, 0}};
		frequency = 1;
	};	
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////ROCKETS//////////////////////////////////
	///////////////////////////////////////////////////////////////////////	
	
	class fza_m261_close_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\M261_1", 0.5}, {"fza_ah64_us\audio\M261\M261_2", 0.5}};
		volume = "4*(1-interior/1.4)";
		range = 100;
		//rangeCurve[] = {{0, 1}, {20, 1}, {50, 0}};
		frequency = 1;
	};
	class fza_m261_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\Close_Distance.ogg", 1}};
		volume = "3.9810717*(1-interior/1.4)";
		range = 300;
		rangeCurve[] = {{0, 0}, {20, 0}, {50, 1}, {100, 1}, {300, 0}};
		frequency = 1;
	};
	class fza_m261_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\Medium_Distance.ogg", 1}};
		volume = 4;
		range = 600;
		rangeCurve[] = {{0, 0}, {100, 0}, {300, 1}, {600, 0}};
		frequency = 1;
	};
	class fza_m261_close_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\distance\shot_1.ogg", 1}, {"fza_ah64_us\audio\M261\distance\shot_2.ogg", 1}};
		volume = 4;
		range = 1500;
		rangeCurve[] = {{0, 0}, {300, 0}, {600, 1}, {1500, 0}};
		frequency = 1;
	};
	class fza_m261_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\distance\shot_far_1.ogg", 1}, {"fza_ah64_us\audio\M261\distance\shot_far_2.ogg", 1}};
		volume = 4;
		range = 2000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 1}, {2000, 0}};
		frequency = 1;
	};
	class fza_m261_very_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\M261\distance\shot_very_far_1.ogg", 1}, {"fza_ah64_us\audio\M261\distance\shot_very_far_2.ogg", 1}};
		volume = 4;
		range = 4000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 0}, {3000, 1}, {4000, 0}};
		frequency = 1;
	};		

	///////////////////////////////////////////////////////////////////////
	//////////////////////////////MPSM/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////	

	class fza_he_explosion_stereo_soundshader 
	{
		samples[]  = {{"fza_ah64_us\audio\Explosions\he.ogg", 1}};
		volume = 1;
		range = 150;
		rangeCurve[] = {{0, 1}, {150, 0}};
		limitation = 1;
	};	
	class fza_he_explosion_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\Explosions\he_distance.ogg", 1}};
		volume = 1;
		range = 500;
		rangeCurve[] = {{0, 0}, {150, 1}, {500, 0}};
		limitation = 1;
	};
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////ATAS/////////////////////////////////////
	///////////////////////////////////////////////////////////////////////		

	class fza_atas_close_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\Close_1.ogg", 1}};
		volume = "4*(1-interior/1.4)";
		range = 100;
		//rangeCurve[] = {{0, 1}, {20, 1}, {50, 0}};
		frequency = 1;
	};
	class fza_atas_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\Close_Distance.ogg", 1}};
		volume = "3.9810717*(1-interior/1.4)";
		range = 300;
		rangeCurve[] = {{0, 0}, {20, 0}, {50, 1}, {100, 1}, {300, 0}};
		frequency = 1;
	};
	class fza_atas_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\Medium_Distance.ogg", 1}};
		volume = 3.9810717;
		range = 600;
		rangeCurve[] = {{0, 0}, {100, 0}, {300, 1}, {600, 0}};
		frequency = 1;
	};
	class fza_atas_close_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_1.ogg", 1}};
		volume = 3.9810717;
		range = 1500;
		rangeCurve[] = {{0, 0}, {300, 0}, {600, 1}, {1500, 0}};
		frequency = 1;
	};
	class fza_atas_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_far_1.ogg", 1}};
		volume = 3.9810717;
		range = 2000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 1}, {2000, 0}};
		frequency = 1;
	};
	class fza_atas_very_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_very_far_1.ogg", 1}};
		volume = 3.9810717;
		range = 4000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 0}, {3000, 1}, {4000, 0}};
		frequency = 1;
	};		
	
	///////////////////////////////////////////////////////////////////////
	//////////////////////////////HELLFIRE/////////////////////////////////
	///////////////////////////////////////////////////////////////////////			

	class fza_agm114_close_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\AGM114\Missile_small_close_1.ogg", 1}};
		volume = "4*(1-interior/1.4)";
		range = 100;
		//rangeCurve[] = {{0, 1}, {20, 1}, {50, 0}};
		frequency = 1;
	};
	class fza_agm114_close_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\AGM114\Close_Distance.ogg", 1}};
		volume = "4*(1-interior/1.4)";
		range = 300;
		rangeCurve[] = {{0, 0}, {20, 0}, {50, 1}, {100, 1}, {300, 0}};
		frequency = 1;
	};		
	class fza_agm114_medium_distance_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\AGM114\distance\Missile_small_dist_1.ogg", 1},{"fza_ah64_us\audio\AGM114\distance\Missile_small_dist_2.ogg", 1},{"fza_ah64_us\audio\AGM114\distance\Missile_small_dist_3.ogg", 1}};
		volume = 3.9810717;
		range = 600;
		rangeCurve[] = {{0, 0}, {100, 0}, {300, 1}, {600, 0}};
		frequency = 1;
	};
	class fza_agm114_close_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_1.ogg", 1}};
		volume = 3.9810717;
		range = 1500;
		rangeCurve[] = {{0, 0}, {300, 0}, {600, 1}, {1500, 0}};
		frequency = 1;
	};
	class fza_agm114_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_far_1.ogg", 1}};
		volume = 3.9810717;
		range = 2000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 1}, {2000, 0}};
		frequency = 1;
	};
	class fza_agm114_very_far_distance_pool_soundshader 
	{
		samples[] = {{"fza_ah64_us\audio\ATAS\distance\shot_very_far_1.ogg", 1}};
		volume = 3.9810717;
		range = 4000;
		rangeCurve[] = {{0, 0}, {600, 0}, {1500, 0}, {3000, 1}, {4000, 0}};
		frequency = 1;
	};			
};