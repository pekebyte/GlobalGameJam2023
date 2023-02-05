/// @description  get_meta_cost(towertype)
/// @param towertype
function get_meta_cost(argument0) {
	var ttype = argument0;
	return round(5*power(2,TOWERS[ttype,tower_metalevel]))



}
