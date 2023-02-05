animtime += SPD/room_speed;
if animtime > animspeed{
    animtime = 0;
    if image_index == sprite_get_number(sprite_index)-1
        instance_destroy()
    else image_index += 1;
}
scale += 2*SPD/room_speed;
if image_index >= sprite_get_number(sprite_index)-3
    image_alpha -= 4*SPD/room_speed

image_xscale = scale*scalemod;
image_yscale = scale*scalemod;

