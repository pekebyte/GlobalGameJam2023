function spawn_bears() {
	var minbears = ceil(ds_list_size(activespawners)*.5);
	var maxbears = ds_list_size(activespawners);

	var spawned = 0;
	var numspawn = irandom_range(minbears,maxbears);
	var spawnlocation = ds_list_create();
	ds_list_copy(spawnlocation,activespawners);

	while spawned < numspawn && !ds_list_empty(spawnlocation){
	    if instance_number(o_bear) > 35
	        break;
    
	    var spawnspot = irandom(ds_list_size(spawnlocation)-1);
    
	    with ds_list_find_value(spawnlocation,spawnspot) {
	        with instance_create(x,y,o_bear) {
	            if WAVE >= 3 && random(1) <= .13+.02*WAVE {
	                level = 2;
	                hpmax *= 2.5;
	                hp = hpmax;
	                movespeed *= 1.1;
	                sprite_index = sp_polarbear;
	            }
	            if WAVE >= 5 && random(1) <= .1+.01*WAVE {
	                level = 3;
	                hpmax *= 5;
	                hp = hpmax;
	                movespeed *= 1.15;
	                sprite_index = sp_honeybear;
	            }
	            if WAVE >= 9 && random(1) <= .005*WAVE {
	                level = 4;
	                hpmax *= 20;
	                hp = hpmax;
	                movespeed *= .4;
	                sprite_index = sp_cybearg;
	            }
	        }
	    }
	    ds_list_delete(spawnlocation,spawnspot)            
	    spawned++;
	}

	ds_list_destroy(spawnlocation)



}
