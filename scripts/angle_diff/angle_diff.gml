/// @description  angle_diff(final_angle,start_angle)
/// @param final_angle
/// @param start_angle
function angle_diff(argument0, argument1) {
	return ((((argument0 - argument1) mod 360) + 540) mod 360) - 180;



}
