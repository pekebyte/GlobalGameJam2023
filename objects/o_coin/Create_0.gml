scale = .25;

// FIND A SPOT TO LAND!
var xgrid = real_to_grid(x);
var ygrid = real_to_grid(y);

var attempts = 0;
do {
    xtarg = clamp(xgrid + irandom_range(-3,3),0,GRIDWIDTH-1);
    ytarg = clamp(ygrid + irandom_range(-3,3),0,GRIDHEIGHT-1);

} until walkable_space(xtarg,ytarg) || attempts > 20


xtarg = grid_to_real(xtarg);
ytarg = grid_to_real(ytarg);

flydir = point_direction(x,y,xtarg,ytarg)
flyspeed = random_range(300,400)/room_speed;
zspeed = get_zspeed_for_dest(xtarg,ytarg,flyspeed);

z = .01;
gold = false;

timer = 5;

if attempts > 20
    instance_destroy();

