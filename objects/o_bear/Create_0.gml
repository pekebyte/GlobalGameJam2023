var btarg = instance_find(o_seed,0);

carrytarg = noone;
despawn = 15;

image_speed = 0;

level = 1;
hpmax = 500;
hp = hpmax;
blinking = 0;

escape_cooldown = 0;

xtarg = btarg.x;
ytarg = btarg.y;
next_xtarg = x;
next_ytarg = y;
yscale = 1;
depth = -y;

bodyimg = 0;

escaping = false;
flash = 0;

flashpass = shader_get_uniform(shad_flash,"flash_amt")

last_coords = ds_list_create();
movedir = 0;
movespeed = 80/room_speed;

xgrid = real_to_grid(x);
ygrid = real_to_grid(y);

z = 0;
head_z = z;
zspeed = 0;

spd = 1;
bouncespeed = 6*GRAVITY;

