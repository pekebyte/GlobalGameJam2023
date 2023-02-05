/// @description  draw_hp_bar()
function draw_hp_bar() {

	var width = 60, xbase = x, height;   

	if hp < hpmax {
	    if hp/hpmax > .7
	       color = make_color_rgb(115,200,55)
	    else if hp/hpmax > .3
	         color = make_color_rgb(240,204,0)
	    else color = make_color_rgb(221,34,34)
    
	    xbase = x;
	    height = 4;
	    color2 = make_color_rgb(color_get_red(color)*.85,color_get_green(color)*.85,color_get_blue(color)*.85)
	    var ybase = y-z-sprite_height;
	    draw_rectangle_color(xbase-width/2-2,ybase-height-2,xbase+width/2+2,ybase+2,c_black,c_black,c_black,c_black,0)    
	    draw_rectangle_color(xbase-width/2,ybase-height,xbase-width/2+(hp/hpmax)*width,ybase,color2,color,color,color2,0)
	}





}
