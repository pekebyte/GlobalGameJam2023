/// @description  get_list_index_by_weight(list_of_weights)
/// @param list_of_weights
function get_list_index_by_weight(argument0) {
	var wtlist = argument0; // GIVE IT A LIST OF WEIGHTS!
	var wt = 0;
	var weights = ds_list_create();
	var chosenitem = -1;
	var i;
	for (i = 0; i < ds_list_size(wtlist); i++){
	    wt += ds_list_find_value(wtlist,i);
	    ds_list_add(weights,wt);
	}
	var roll = random(wt);
	for (i = ds_list_size(weights)-1; i >= 0; i--){
	    if roll < ds_list_find_value(weights,i){
	        chosen_item = i;        
	    }    
	}
	ds_list_destroy(weights);
	return chosen_item;
	// This will return



}
