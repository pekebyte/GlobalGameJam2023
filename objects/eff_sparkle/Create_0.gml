ps = part_system_create()
pt = part_type_create()
part_system_depth(ps,-room_height)

part_type_shape(pt, pt_shape_flare)
part_type_blend(pt, true)
part_type_size(pt, .3,.4,-.01,0)
part_type_speed(pt, 100/room_speed,200/room_speed,0,0)
part_type_orientation(pt,0,360,1,0,0)
part_type_direction(pt,0,360,0,0)
part_type_color2(pt,make_color_rgb(202,149,50),c_black)
part_type_life(pt,room_speed*.3,.5*room_speed)

part_particles_create(ps,x,y,pt,20)

alarm[0] = room_speed;

