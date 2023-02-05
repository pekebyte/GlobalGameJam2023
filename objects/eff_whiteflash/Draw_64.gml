alpha -= 3/room_speed;

draw_set_alpha(alpha);
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color,color,color,color,0);
draw_set_alpha(1);


if alpha < 0
    instance_destroy();

