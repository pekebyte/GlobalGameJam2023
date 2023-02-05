function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 10000; // o_background
	global.__objectDepths[1] = 0; // o_init
	global.__objectDepths[2] = 0; // button_mute
	global.__objectDepths[3] = 0; // o_mainmenu
	global.__objectDepths[4] = -10; // button_play
	global.__objectDepths[5] = -10; // button_main
	global.__objectDepths[6] = 0; // button_levelup_meta
	global.__objectDepths[7] = 0; // o_upgrade_meta
	global.__objectDepths[8] = 0; // o_splash
	global.__objectDepths[9] = 0; // o_splash_smooth
	global.__objectDepths[10] = 0; // o_splash_new
	global.__objectDepths[11] = 0; // o_controller
	global.__objectDepths[12] = 0; // o_camera
	global.__objectDepths[13] = 0; // o_enemy
	global.__objectDepths[14] = 0; // o_burger
	global.__objectDepths[15] = 0; // o_spawner
	global.__objectDepths[16] = 0; // o_tree
	global.__objectDepths[17] = 0; // o_bear
	global.__objectDepths[18] = 0; // o_tower
	global.__objectDepths[19] = 0; // o_guntower
	global.__objectDepths[20] = 0; // o_pulsetower
	global.__objectDepths[21] = 0; // o_lobtower
	global.__objectDepths[22] = 0; // o_bullet
	global.__objectDepths[23] = 0; // o_lobjectile
	global.__objectDepths[24] = 0; // button_upgrade
	global.__objectDepths[25] = 0; // o_interface
	global.__objectDepths[26] = 0; // button_towerbuild
	global.__objectDepths[27] = 0; // button_chop
	global.__objectDepths[28] = 0; // o_waveping
	global.__objectDepths[29] = 0; // o_coin
	global.__objectDepths[30] = 0; // o_damageping
	global.__objectDepths[31] = -1000; // eff_whiteflash
	global.__objectDepths[32] = 0; // eff_explosion
	global.__objectDepths[33] = 0; // eff_sparkle
	global.__objectDepths[34] = 0; // eff_blood
	global.__objectDepths[35] = 0; // eff_ringplosion
	global.__objectDepths[36] = 0; // button_parent
	global.__objectDepths[37] = 0; // o_nonwalkable
	global.__objectDepths[38] = 0; // o_popuptext
	global.__objectDepths[39] = 0; // o_endscreen


	global.__objectNames[0] = "o_background";
	global.__objectNames[1] = "o_init";
	global.__objectNames[2] = "button_mute";
	global.__objectNames[3] = "o_mainmenu";
	global.__objectNames[4] = "button_play";
	global.__objectNames[5] = "button_main";
	global.__objectNames[6] = "button_levelup_meta";
	global.__objectNames[7] = "o_upgrade_meta";
	global.__objectNames[8] = "o_splash";
	global.__objectNames[9] = "o_splash_smooth";
	global.__objectNames[10] = "o_splash_new";
	global.__objectNames[11] = "o_controller";
	global.__objectNames[12] = "o_camera";
	global.__objectNames[13] = "o_enemy";
	global.__objectNames[14] = "o_burger";
	global.__objectNames[15] = "o_spawner";
	global.__objectNames[16] = "o_tree";
	global.__objectNames[17] = "o_bear";
	global.__objectNames[18] = "o_tower";
	global.__objectNames[19] = "o_guntower";
	global.__objectNames[20] = "o_pulsetower";
	global.__objectNames[21] = "o_lobtower";
	global.__objectNames[22] = "o_bullet";
	global.__objectNames[23] = "o_lobjectile";
	global.__objectNames[24] = "button_upgrade";
	global.__objectNames[25] = "o_interface";
	global.__objectNames[26] = "button_towerbuild";
	global.__objectNames[27] = "button_chop";
	global.__objectNames[28] = "o_waveping";
	global.__objectNames[29] = "o_coin";
	global.__objectNames[30] = "o_damageping";
	global.__objectNames[31] = "eff_whiteflash";
	global.__objectNames[32] = "eff_explosion";
	global.__objectNames[33] = "eff_sparkle";
	global.__objectNames[34] = "eff_blood";
	global.__objectNames[35] = "eff_ringplosion";
	global.__objectNames[36] = "button_parent";
	global.__objectNames[37] = "o_nonwalkable";
	global.__objectNames[38] = "o_popuptext";
	global.__objectNames[39] = "o_endscreen";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
