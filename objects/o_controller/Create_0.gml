with (other) {
audio_listener_orientation(0,1,0,0,1,0);

GRIDWIDTH = round(room_width/GRIDSIZE);
GRIDHEIGHT = round(room_height/GRIDSIZE);
clicktime = 0;
clickdevice = -1;

ds_grid_resize(WORLDGRID,GRIDWIDTH,GRIDHEIGHT);
ds_grid_resize(BUILDGRID,GRIDWIDTH,GRIDHEIGHT);

ds_grid_clear(BUILDGRID,noone);
ds_grid_clear(WORLDGRID,map_walkable);
with o_nonwalkable {
    if x >= 0 && x < room_width && y >= 0 && y < room_height
        ds_grid_set(WORLDGRID,real_to_grid(x),real_to_grid(y),map_buildable);
    instance_destroy();
}

place_tiles();
//play_music(mus_gameplay,true);
instance_create(snap_to_grid(room_width/2+choose(-1,0,1)*GRIDSIZE),snap_to_grid(room_height/2)+choose(-1,0,1)*GRIDSIZE,o_seed);
instance_create(snap_to_grid(room_width/2)+choose(-1,0,1)*GRIDSIZE,snap_to_grid(room_height/2)+choose(-1,0,1)*GRIDSIZE,o_camera);

MODE = BUILDMODE;
MODE_TIMER = 10;
WAVE = 0;

pingtimer = 1;
spawner_update = 30;

spawners = ds_list_create();
activespawners = ds_list_create();
with o_spawner ds_list_add(o_controller.spawners,id);
set_spawner_active();

SILVER = 20;
SCORE = 0;

PLACING = -1;
CHOPPING = false;
dragdevice = -1;
draginst = noone;

instance_create(0,0,o_interface);

}
