save_progress();
play_music(-1,true);
with button_parent instance_deactivate_object(id);
with o_interface instance_deactivate_object(id);
with o_camera instance_deactivate_object(id);
with o_controller instance_deactivate_object(id);

scale = 0;
alarm[0] = .5*room_speed;
instance_create(-1000,-1000,button_main)
instance_create(-1000,-1000,button_play)


