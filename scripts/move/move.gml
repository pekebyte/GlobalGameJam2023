/// @description  move(mspeed,mdirection,ignore_collision)
/// @param mspeed
/// @param mdirection
/// @param ignore_collision
function move(argument0, argument1, argument2) {
	var mspeed = argument0, mdir = argument1, ignore_collision = argument2;

	var xt = x+lengthdir_x(mspeed*SPD,mdir);
	var yt = y+lengthdir_y(mspeed*SPD,mdir);

	x = xt;
	y = yt;



}
