function set_spawner_active() {
	if ds_list_size(activespawners) < instance_number(o_spawner) {
	    var spawnid = irandom(ds_list_size(spawners)-1);
    
	    ds_list_add(activespawners,ds_list_find_value(spawners,spawnid));
	    ds_list_delete(spawners,spawnid);
	}



}
