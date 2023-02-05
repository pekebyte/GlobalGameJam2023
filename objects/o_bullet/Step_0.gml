depth = -y;
image_angle += spinspeed;
if instance_exists(targ) {  
    flydir = point_direction(x,y,targ.x,targ.y);
    
    x += lengthdir_x(flyspeed*SPD,flydir);
    y += lengthdir_y(flyspeed*SPD,flydir); 
    
    if point_distance(x,y,targ.x,targ.y) < max(flyspeed,25) {
        damage_target(targ,damage);
        instance_destroy();
    }   
} 
else instance_destroy();



