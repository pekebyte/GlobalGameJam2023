scale += tween(scale,1,.2);
var d;
for (d = 0; d < 5; d++){
    if device_mouse_check_button_pressed(d,mb_left) {
        var dx = device_mouse_x(d);
        var dy = device_mouse_y(d);
        if abs(x-dx) < width*.5 && abs(y-dy) < height*.5 {
            audio_play_sound(snd_menuclick,10,false);
            scale = 1.15;
            alarm[0] = .1*room_speed;
        }
    }
}

