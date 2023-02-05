update_pathfind();
movedir = point_direction(x,y,next_xtarg,next_ytarg);
move(min(movespeed*spd,point_distance(next_xtarg,next_ytarg,x,y)),movedir,false);

new_xgrid = real_to_grid(x);
new_ygrid = real_to_grid(y);

if new_xgrid != xgrid || new_ygrid != ygrid {
    ds_list_add(last_coords,xy_to_coords(new_xgrid,new_ygrid));
    if ds_list_size(last_coords) > 3 {
        ds_list_delete(last_coords,0)
    }
    var mytarg = o_seed;
    
    if escaping {
        mytarg = closest_instance(x,y,o_spawner,10000);        
    }
    
    if instance_exists(mytarg) {
        xtarg = mytarg.x;
        ytarg = mytarg.y;
    }
}

xgrid = real_to_grid(x);
ygrid = real_to_grid(y);

z = max(0,z+zspeed*spd*SPD);
zspeed -= GRAVITY*SPD*spd
if z <= 0 {
    bodyimg = !bodyimg;
    yscale = .85;
    zspeed = bouncespeed;
}

depth = -y;

spd += tween(spd,1,.03)

var bg = closest_instance(x,y,o_seed,50);
if bg != noone
    claim_seed();
    
escape_cooldown = max(0,escape_cooldown-1/room_speed);

