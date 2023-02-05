/// @description  color_by_percent(percent)
/// @param percent
function color_by_percent(argument0) {
	var percent = argument0;
	if percent < .25
	   return c_red;
	if percent < .5
	   return c_orange;
	if percent < .75
	   return c_yellow;
	else return c_lime;



}
