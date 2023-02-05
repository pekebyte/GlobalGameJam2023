function resolution_set() {
	// Sets the resolution

	// Get the display width and height (so we can match its aspect ratio)
	    dispH = display_get_height()
	    dispW = display_get_width()

	// This is for a landscape mode game.
	// We set the width at a fixed value, and the width will scale up appropriately.
	// The idea here is that we can scale the game up or down as much as we want, so long as
	// we match the device's aspect ratio. Then there will be no stretching.
	    view_width = 960;
	    wh_ratio = dispW/dispH // Here we get the aspect ratio
	    view_height = view_width/wh_ratio; // And now we scale the height to match the aspect ratio combined with our fixed width

	// Now set the size of the GUI to match the proper width/height
	    globalvar GUIWIDTH, GUIHEIGHT;
	    GUIWIDTH = view_width;
	    GUIHEIGHT = view_height
	    display_set_gui_size(view_width,view_height)

	// Iterate through the first 500 rooms. If they exist, set their resolution to match.
	    var i;
	    for (i = 0; i < 500; i += 1){    
	        if (room_exists(i)){        
	            room_set_view(i, 0, 1, 0, 0, view_width, view_height, 0, 0, view_width, view_height, -1, -1, -1, -1, noone)                       
	        }
	    }

	// Window functions for scaling/centering the window on PC/Mac
	    window_set_size(view_width, view_height)
	    window_set_position((dispW-GUIWIDTH)/2,(dispH-GUIHEIGHT)/2)
	// Scale the draw surface of the game to match the new resolution
	    surface_resize(application_surface, display_get_gui_width(), display_get_gui_height()); 



}
