draw_texture_flush();
save_progress();
instance_create(0,0,o_background);

//play_music(mus_mainmenu,true);
    
var i;
for (i = 0; i < 2; i++){
    movement[i] = 10;
    rotation[i] = 10;
    xpos[i] = random_range(-movement[i],movement[i]);
    xtarg[i] = random_range(-movement[i],movement[i]);
    ytarg[i] = random_range(-movement[i],movement[i]);
    ypos[i] = random_range(-movement[i],movement[i]);
    rot[i] = random_range(-rotation[i],rotation[i]);
    rottarg[i] = random_range(-rotation[i],rotation[i]);
}

blinking = 0;
instance_create(view_center_x(),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-100,button_play) 
instance_create(0,0,o_background);  

instance_create(-1000,-1000,button_mute);

with instance_create(0,0,eff_whiteflash) color = c_black;

var i;

