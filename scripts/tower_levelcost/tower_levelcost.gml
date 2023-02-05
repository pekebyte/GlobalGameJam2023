/// @description  tower_levelcost(towertype,curlevel)
/// @param towertype
/// @param curlevel
function tower_levelcost(argument0, argument1) {
	return round(power(1.25,argument1-TOWERS[argument0,tower_metalevel])*TOWERS[argument0,tower_cost])



}
