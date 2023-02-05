/// @description  walkable_space(xg,yg)
/// @param xg
/// @param yg
function walkable_space(argument0, argument1) {

	var xg = argument0, yg = argument1;

	if xg < 0 || yg < 0 || xg >= GRIDWIDTH || yg >= GRIDWIDTH
	    return true;

	if ds_grid_get(WORLDGRID,xg,yg) == map_walkable
	    return true;
	return false;



}
