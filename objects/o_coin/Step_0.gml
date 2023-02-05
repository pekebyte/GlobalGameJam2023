if z > 0 {
    x += lengthdir_x(flyspeed*SPD,flydir)
    y += lengthdir_y(flyspeed*SPD,flydir)
}
gold = false;
if gold sprite_index = sp_gold;

zspeed -= GRAVITY*SPD;
z += zspeed*SPD;
z = max(z,0);
if z <= 0 {
    if abs(zspeed) > 5
        zspeed *= -.15
    else zspeed = 0;   
}

depth = -y;

timer -= 1/room_speed;

