if keyboard_check(vk_backspace)
    room_goto(rm_mainmenu);

pingtimer -= SPD/room_speed;
if pingtimer < 0 {
    pingtimer = 1;
    if MODE == BUILDMODE {
        var i;
        for (i = 0; i < ds_list_size(activespawners); i++){
            with ds_list_find_value(activespawners,i) instance_create(x,y,o_waveping);
        }
    }
}

MODE_TIMER -= SPD/room_speed;
if MODE_TIMER <= 0 {
    MODE = !MODE;
    if MODE == BUILDMODE {       
        set_spawner_active();
        MODE_TIMER = 10;
    }
    else {
        MODE_TIMER = 35+3*WAVE;
        WAVE++;        
        if WAVE == 3
            with o_interface ds_list_add(buttonlist,instance_create(-1000,-1000,button_chop));
        spawntimer = 0;        
    }
}

if MODE == WAVEMODE {
    spawntimer -= SPD/room_speed;
    if spawntimer <= 0 {
        spawntimer = 1.5+1.5*MODE_TIMER/45;
        spawn_bears();
    }
}

//===== PLACING TOWERS AND STUUFFFF
if CHOPPING {
    CHOPPING = max(CHOPPING-1,1);
    var dx, dy, d, treefound = false;        
    for (d = 0; d < 5 && !treefound; d++){
        if device_mouse_check_button_pressed(d,mb_left) {
            dx = device_mouse_x(d);
            dy = device_mouse_y(d);
            if !on_button(dx,dy) {
                with button_upgrade instance_destroy();
                var dinst = closest_instance(dx,dy,o_tree,50);
                if instance_exists(dinst) {
                    treefound = true;
                    if SILVER >= chop_cost() {
                        with dinst {
                            SILVER -= chop_cost();
                            audio_play_sound(snd_dig,10,false);
                            camera_shake(5)
                            show_popuptext(x,y,"-"+string(chop_cost()),c_white);
                            with instance_create(x,y,eff_ringplosion) scalemod = .5;
                            ds_grid_set(BUILDGRID,real_to_grid(x),real_to_grid(y),noone);
                            instance_destroy();
                        }                            
                        if SILVER < chop_cost()
                            CHOPPING = false;
                    }
                }
                else CHOPPING = false;                
            }
        }            
    }
    
}
else if PLACING != -1 {
    // SPAWN A TOWER!
    var dx, dy, d;
    if draginst == noone && dragdevice == -1{        
        for (d = 0; d < 5 && dragdevice == -1; d++){
            if device_mouse_check_button_pressed(d,mb_left) {
                dx = device_mouse_x(d);
                dy = device_mouse_y(d);
                dragdevice = d;
                if !on_button(dx,dy) {
                    with button_upgrade instance_destroy();
                    draginst = instance_create(snap_to_grid(dx),snap_to_grid(dy),TOWERS[PLACING,tower_obj])
                    with draginst dragging = true;
                }
                else {
                    PLACING = -1;
                    CHOPPING = -1;
                }
            }
        }
    }
    else {
        dx = device_mouse_x(dragdevice);
        dy = device_mouse_y(dragdevice);
        if !device_mouse_check_button(dragdevice,mb_left) {
            // CHECK IF IT CAN BE BUILT!
            with draginst {
                if buildable_space(real_to_grid(x),real_to_grid(y)) {                    
                    build_item(real_to_grid(x),real_to_grid(y),object_index);         
                    SILVER -= TOWERS[PLACING,tower_cost]   
                    audio_play_sound(snd_menuclick,10,false);
                            
                }
                instance_destroy();
            }
            dragdevice = -1;
            PLACING = -1;
            draginst = noone;
        }
        else {                        
            with draginst {
                x = snap_to_grid(dx);
                y = snap_to_grid(dy);
            }            
        }
    }    
}
else {
    if clickdevice == -1 {
        var d;
        for (d = 0; d < 5 && clickdevice == -1; d++){
            if device_mouse_check_button_pressed(d,mb_left) {
                var dx = device_mouse_x(d);
                var dy = device_mouse_y(d);
                if !on_button(dx,dy) {
                    clickdevice = d;
                    clicktime = .01;
                    with button_upgrade instance_destroy();
                }                
            }        
        }
    }
    
    if clickdevice != -1 {
        clicktime+=1/room_speed;
        
        var dx = device_mouse_x(clickdevice);
        var dy = device_mouse_y(clickdevice);
        
        if !device_mouse_check_button(clickdevice,mb_left) {
            if clicktime < .2*room_speed {
                var clicktarg = closest_instance(dx,dy,o_tower,30);
                if clicktarg != noone {
                    with instance_create(clicktarg.x,clicktarg.y-80,button_upgrade) {
                        mytarg = clicktarg;
                        event_user(0);
                    }
                }
            }
            clickdevice = -1;
            clicktime = 0;
        }
    }    
}

if !instance_exists(o_endscreen) {
    SCORE += 1/room_speed;
    BEST_SCORE = max(SCORE,BEST_SCORE);
}

