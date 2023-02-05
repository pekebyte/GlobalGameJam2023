/// @description  y_from_coords(coordinate_string)
/// @param coordinate_string
function y_from_coords(argument0) {
	var key, xx, yy, comma;
	key = argument0;
	comma = string_pos(",", key)
	// "22,25"
	// 12345
	// Comma at 3
	// String length 5
	yy = real(string_delete(key, 1, comma))
	return yy;



}
