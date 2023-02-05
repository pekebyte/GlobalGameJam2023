var xdraw = x;
var yraw = y;

xdraw = clamp(x,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ));
ydraw = clamp(y,__view_get( e__VW.YView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ));

add_blend();
    draw_sprite_ext(sprite_index,0,xdraw-__view_get( e__VW.XView, 0 ),ydraw-__view_get( e__VW.YView, 0 ),scale,scale,0,c_red,alpha);
normal_blend();

