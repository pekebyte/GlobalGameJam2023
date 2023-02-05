buttonlist = ds_list_create();

var i;
for (i = 0; i < array_height_2d(TOWERS); i++){
    var b = instance_create(-1000,-1000,button_towerbuild);
    b.mytower = i;
    b.sprite_index = TOWERS[i,tower_sprite];
    ds_list_add(buttonlist,b);
}



