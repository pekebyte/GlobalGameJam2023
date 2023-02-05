/// @description  ds_list_contains(list_to_check,thing_in_question)
/// @param list_to_check
/// @param thing_in_question
function ds_list_contains(argument0, argument1) {
	if ds_list_empty(argument0)
	    return false;
	if ds_list_find_index(argument0, argument1) == -1
	   return false;
	else return true;



}
