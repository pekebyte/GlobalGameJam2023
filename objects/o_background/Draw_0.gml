var bgwidth = background_get_width(background);
var bgheight = background_get_height(background);
var bgscale = 1.04*max(__view_get( e__VW.WView, 0 )/bgwidth,__view_get( e__VW.HView, 0 )/bgheight);

draw_background_ext(background,
    view_center_x()-bgwidth*bgscale*.5+random_range(-shake,shake),
    view_center_y()-bgheight*bgscale*.5+random_range(-shake,shake),
    bgscale,bgscale,0,c_white,.25)
    
shake = clamp(shake-.5,0,10);

