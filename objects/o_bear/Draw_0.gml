draw_shadow(x,.6)
update_facingright(movedir);

if flash > 0 {    
    shader_set(shad_flash)
    shader_set_uniform_f(flashpass,flash);
}

blinking = blink(blinking);

head_z += tween(head_z,z,.75);
head_z = clamp(head_z,z-5,z+5);

draw_sprite_ext(sprite_index,bodyimg,x,y-z,xscale,yscale,0,c_white,1);
draw_sprite_ext(sprite_index,2+isblinking(blinking),x,y-head_z,xscale,yscale,0,c_white,1)
shader_reset();

yscale += tween(yscale,1,.1)
flash -= 8/room_speed;

if hp < hpmax {
    draw_hp_bar();
}

