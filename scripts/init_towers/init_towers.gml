function init_towers() {
	globalvar TOWERS;

	var i = tower_gun;
	    TOWERS[i,tower_name] = "Gun Tower";
	    TOWERS[i,tower_obj] = o_guntower;
	    TOWERS[i,tower_sprite] = sp_guntower;
	    TOWERS[i,tower_cost] = 10;
	    TOWERS[i,tower_dmglvl] = .07; 
	    TOWERS[i,tower_rangelvl] = .03; 
	    TOWERS[i,tower_aoelvl] = 0; 
	    TOWERS[i,tower_metalevel] = 0;

}
