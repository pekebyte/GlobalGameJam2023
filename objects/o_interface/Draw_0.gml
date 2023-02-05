var i, spacing = 78, xpos = __view_get( e__VW.XView, 0 )+spacing*.5, ypos = view_center_y()-spacing*1.5;
for (i = 0; i < ds_list_size(buttonlist); i++){
    var b = ds_list_find_value(buttonlist,i);
    with b {
        x = xpos;
        y = ypos;
    }    
    ypos += spacing;
}


