function cap_first_letter(argument0) {
	var strang, i;
	strang = argument0;
	returnstrang = ""
	// Iterate through the string and capitalize the first letter of each word.
	for (i = 1; i <= string_length(strang); i += 1){
	    if i == 1
	       returnstrang = string_char_at(string_upper(strang), i)
	    else{
	       if string_char_at(strang, i-1) == " "
	          returnstrang += string_char_at(string_upper(strang), i)
	       else returnstrang += string_char_at(string_lower(strang), i)
	    }
	}
	return returnstrang;



}
