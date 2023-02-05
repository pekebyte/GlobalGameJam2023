ps = part_system_create()
part_system_depth(ps, -room_height)

pt = part_type_create()

part_type_sprite(pt, sp_blood, 0, 0, true)
part_type_orientation(pt, 0, 0, 0, 0, true)
part_type_size(pt, 1, 1.2, 0, 0)
part_type_life(pt, room_speed*.4, room_speed*.5)
part_type_speed(pt, 500/room_speed, 600/room_speed, 0, 0)
part_type_direction(pt, 60, 120, 0, 0)
part_type_gravity(pt, 1, 270)
part_type_alpha3(pt, 1, 1, 0)

alarm[0] = .5*room_speed;

if in_view(x,y,50){
    for (i = 0; i < 10; i += 1){
        part_particles_create(ps, x+random_range(-10,10), y+random_range(-10,10), pt, 1)
    }
}



