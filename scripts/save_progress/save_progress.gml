function save_progress() {
	ini_open("SAVEFILE.ini");

	ini_write_real("Settings","Sound",SOUND_ON);

	ini_write_real("GM","DBB",LIFETIME_SCORE);
	ini_write_real("GM","DBM",BEST_SCORE);

	ini_write_real("GM","GD",GOLD);

	ini_write_real("GM","HBH",BEST_KILLS);
	ini_write_real("GM","DHB",LIFETIME_KILLS);

	var i;
	for (i = 0; i < array_height_2d(TOWERS); i++){
	    ini_write_real("T","TP"+string(i),TOWERS[i,tower_metalevel])
	}

	ini_close();



}
