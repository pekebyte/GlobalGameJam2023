/// @description  get_dist_movspd_zspd(movespeed,zspeed)
/// @param movespeed
/// @param zspeed
function get_dist_movspd_zspd(argument0, argument1) {
	var movspd = argument0, zsp = argument1;
	// Formula to calculate heightspeed to go a known distance:
	//         heightspeed = (gravity*(distance/movespeed))/2
	// How far you will go at a certain height speed:
	//         movespeed*heightspeed*2/gravity
	// movespeed is 1.67
	// At heightspeed of 17, you will go 34 pixels. 
	return movspd*(2*zsp/GRAVITY)



}
