/// @description  color_change(start_color,amount)
/// @param start_color
/// @param amount
function color_change(argument0, argument1) {
	var col1 = argument0, amt = argument1;
	return make_color_rgb(clamp(color_get_red(col1)*amt,0,255),
	                      clamp(color_get_green(col1)*amt,0,255),
	                      clamp(color_get_blue(col1)*amt,0,255))



}
