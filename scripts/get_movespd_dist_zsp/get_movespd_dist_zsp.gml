/// @description  get_movespd_dist_zsp(distance,zspeed)
/// @param distance
/// @param zspeed
function get_movespd_dist_zsp(argument0, argument1) {
	var dist = argument0, zsp = argument1;
	// Formula to calculate heightspeed to go a known distance:
	//         heightspeed = (gravity*(distance/movespeed))/2
	// How far you will go at a certain height speed:
	//         movespeed*heightspeed*2/gravity
	// movespeed is 1.67
	// At heightspeed of 17, you will go 34 pixels. 
	// zsp = (GRAVITY*(dist/movespeed))/2
	// 1/(((2*zsp)/GRAVITY)/dist) = movespeed
	return 1/(((2*zsp)/GRAVITY)/max(dist,1))



}
