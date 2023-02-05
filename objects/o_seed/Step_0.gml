if instance_exists(carried) {
    x += tween(x,carried.x,.75);
    y += tween(y,carried.y,.75);
    depth = carried.depth-.5;
    z += tween(z,carried.z+carried.sprite_yoffset*carried.yscale,.5);    
}
else {
    carried = noone;
    zspeed = zspeed-GRAVITY*SPD;
    z = max(0,z+zspeed*SPD);
}

if x < 0 || x > room_width || y < 0 || y > room_height {
    if !instance_exists(o_endscreen)
        instance_create(0,0,o_endscreen);
}

