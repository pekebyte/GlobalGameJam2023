/// @description  in_view(x,y,margin)
/// @param x
/// @param y
/// @param margin
function in_view(argument0, argument1, argument2) {
	var xx = argument0, yy = argument1, margin = argument2;
	if xx < __view_get( e__VW.XView, 0 )-margin
	   return false;
	if yy < __view_get( e__VW.YView, 0 )-margin
	   return false;
	if xx > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+margin
	   return false;
	if yy > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+margin
	   return false;
	return true;



}
