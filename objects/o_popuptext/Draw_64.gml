vis -= 1/room_speed;
scale += tween(scale,1,.25)
x += tween(x,xtarg,.2)
y += tween(y,ytarg,.2)

font_set(BASICFONT,fa_center,fa_middle)
draw_text_transformed_color(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),string_hash_to_newline(mytext),scale*.5,scale*.5,angle,mycolor,mycolor,mycolor,mycolor,vis)

if vis < 0
    instance_destroy();

