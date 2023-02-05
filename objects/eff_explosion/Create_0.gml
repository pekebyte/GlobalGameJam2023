
ps = part_system_create();

part_system_depth(ps,-5);

pt = part_type_create();
part_type_blend(pt,true);
part_type_shape(pt,pt_shape_explosion);
part_type_color2(pt,make_color_rgb(255,255,50),make_color_rgb(200,100,25));
part_type_alpha3(pt,1,1,0);
part_type_direction(pt,0,360,0,0);
part_type_speed(pt,25/room_speed,45/room_speed,0,0);
part_type_size(pt,.7,1,-.005,.05);
part_type_orientation(pt,0,360,1,0,0);
part_type_life(pt,.25*room_speed,.5*room_speed);

repeat(6)
    part_particles_create(ps,x+random_range(-15,15),y+random_range(-15,15),pt,1);

alarm[0] = .55*room_speed;

