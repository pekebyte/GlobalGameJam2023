

var i;
for (i = 0; i < 2; i++){
    xpos[i] += tween(xpos[i],xtarg[i],.03);
    ypos[i] += tween(ypos[i],ytarg[i],.03);
    rot[i] += tween(rot[i],rottarg[i],.03);
    
    if abs(xpos[i]-xtarg[i]) < 1
        xtarg[i] = random_range(-movement[i],movement[i]);
    if abs(ypos[i]-ytarg[i]) < 1
        ytarg[i] = random_range(-movement[i],movement[i]);
    if abs(rot[i]-rottarg[i]) < 1
        rottarg[i] = random_range(-rotation[i],rotation[i]);
}

if keyboard_check_pressed(vk_backspace)
    game_end();

