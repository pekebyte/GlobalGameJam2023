/// @description  blink(blink_variable)
/// @param blink_variable
function blink(argument0) {
	var blnk = argument0;
	if !blnk && random(1) <= .03*SPD
	   blnk = 1;
	if blnk > 0{
	   blnk += 1*SPD   
	   if blnk > room_speed
	      blnk = 0
	}
	return blnk;



}
