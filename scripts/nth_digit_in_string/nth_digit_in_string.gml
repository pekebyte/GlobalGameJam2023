/// @description  nth_digit_in_string(string,n)
/// @param string
/// @param n
function nth_digit_in_string(argument0, argument1) {
	var str = argument0, n = argument1, newstr = str;
	// Given a comma-separated string, get the Nth digit.
	// Go that number of commas.
	// Delete everything before the comma, then repeat. 
	while n > 0{
	      newstr = string_delete(newstr,1,string_pos(",",newstr))
	      n -= 1;
	}
	// Once we've arrived, delete everything after the comma.
	newstr = string_delete(newstr,string_pos(",",newstr),string_length(newstr)-string_pos(",",newstr)+1)
	return real(newstr)



}
