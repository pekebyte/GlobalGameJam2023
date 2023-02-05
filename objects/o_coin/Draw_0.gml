draw_shadow(x,.25);
draw_sprite_ext(sprite_index,image_index,x,y-z-sprite_height*.25*scale,scale,scale,0,c_white,timer);  
scale += tween(scale,1,.25);

if timer < 0
    instance_destroy();

