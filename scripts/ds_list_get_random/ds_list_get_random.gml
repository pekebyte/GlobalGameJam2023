/// @description  ds_list_get_random(list)
/// @param list
function ds_list_get_random(argument0) {
	return ds_list_find_value(argument0, irandom(ds_list_size(argument0)-1))



}
