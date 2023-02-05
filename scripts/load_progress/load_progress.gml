function load_progress() {
	ini_open("SAVEFILE.ini");

	SOUND_ON = ini_read_real("Settings","Sound",SOUND_ON);

	LIFETIME_SCORE = ini_read_real("GM","DBB",LIFETIME_SCORE);
	BEST_SCORE = ini_read_real("GM","DBM",BEST_SCORE);
	GOLD = ini_read_real("GM","GD",GOLD);
	BEST_KILLS = ini_read_real("GM","HBH",BEST_KILLS);
	LIFETIME_KILLS = ini_read_real("GM","DHB",LIFETIME_KILLS);

	var i;
	for (i = 0; i < array_height_2d(TOWERS); i++){
	    TOWERS[i,tower_metalevel] = ini_read_real("T","TP"+string(i),TOWERS[i,tower_metalevel])
	}

	ini_close();



}
