/// @description  get_zspeed_for_dest(destination_x,destination_y,movespeed)
/// @param destination_x
/// @param destination_y
/// @param movespeed
function get_zspeed_for_dest(argument0, argument1, argument2) {
	var destX = argument0, destY = argument1, movspd = argument2, zsp, dist_to_travel;
	// Formula to calculate heightspeed to go a known distance:
	//         heightspeed = (gravity*(distance/movespeed))/2
	// How far you will go at a certain height speed:
	//         movespeed*heightspeed*2/gravity
	// movespeed is 1.67
	// At heightspeed of 17, you will go 34 pixels. 
	airdir = point_direction(x,y,destX,destY)
	dist_to_travel = point_distance(x,y,destX,destY);
	zsp = (GRAVITY*(dist_to_travel/movspd))/2;
	return zsp;



}
