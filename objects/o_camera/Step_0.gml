audio_listener_position(x,y,0);

if !instance_exists(o_endscreen) {
if instance_exists(target) {
    xtarg = target.x;
    ytarg = target.y;
}
else {
    if PLACING != -1
        dragdevice = -1;
    else {
        if dragdevice == -1 {
            var d;
            for (d = 0; d < 5 && dragdevice = -1; d++){
                if device_mouse_check_button_pressed(d,mb_left) {
                    var dx = device_mouse_x(d);
                    var dy = device_mouse_y(d);
                    if !on_button(dx,dy) && !CHOPPING && PLACING == -1 {
                        var soundplayed = false;
                        var pickups = 0;
                        with o_coin {
                            if point_distance(dx,dy,x,y) < 100 && z < 20{
                                
                                if !soundplayed
                                    audio_play_sound(snd_menuclick,10,false);
                                soundplayed = true;
                                if !gold {
                                    SILVER++;
                                    pickups++;                                    
                                }
                                instance_create(x,y,eff_sparkle)
                                instance_destroy()
                            }
                        }
                        if pickups > 0 {
                            show_popuptext(dx,dy,"+" + string(pickups) + " COINS",c_white)
                        }
                    
                    
                        dragdevice = d;
                        xbase = x;
                        ybase = y;
                        xanchor = dx;
                        yanchor = dy;
                    }
                }
            }
        }
        
        if dragdevice != -1 {
            if !device_mouse_check_button(dragdevice,mb_left) {
                dragdevice = -1;
            }
            else {
                var dx = device_mouse_x(dragdevice);
                var dy = device_mouse_y(dragdevice);
                //xtarg = clamp(xbase+4*(xanchor-dx),__view_get( e__VW.WView, 0 )*.5,room_width-__view_get( e__VW.WView, 0 )*.5);
                //ytarg = clamp(ybase+4*(yanchor-dy),__view_get( e__VW.HView, 0 )*.5,room_height-__view_get( e__VW.HView, 0 )*.5);
				xtarg = clamp(xbase+3*(xanchor-dx),__view_get( e__VW.WView, 0 )*.5,room_width-__view_get( e__VW.WView, 0 )*.5);
                ytarg = clamp(ybase+3*(yanchor-dy),__view_get( e__VW.HView, 0 )*.5,room_height-__view_get( e__VW.HView, 0 )*.5); 
            }
        }
    }
}

x += tween(x,xtarg,.4);
y += tween(y,ytarg,.4);

__view_set( e__VW.XView, 0, round(x-__view_get( e__VW.WView, 0 )*.5+random_range(-shake,shake)) );
__view_set( e__VW.YView, 0, round(y-__view_get( e__VW.HView, 0 )*.5+random_range(-shake,shake)) );

shake = max(0,shake-1*(30/room_speed))

x = round(clamp(x,__view_get( e__VW.WView, 0 )*.5,room_width-__view_get( e__VW.WView, 0 )*.5));
y = round(clamp(y,__view_get( e__VW.HView, 0 )*.5,room_height-__view_get( e__VW.HView, 0 )*.5));
}

