draw_sprite_ext(sp_title,0,
    __view_get( e__VW.XView, 0 )+sprite_get_width(sp_title)*.5+120,
    view_center_y()-170,1,1,0,c_white,1);


var xd = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5+45;


if os_type == os_ios
    xd = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5
else xd += 90;

var upgspacing = 100;

var ypos = view_center_y()-1.7*upgspacing;

with button_play {
    x = (__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))/2;
    y = ypos+335;
}

font_set(BASICFONT,fa_right,fa_middle)
draw_text_transformed_colour(button_play.x-button_play.width*.5-30,button_play.y,string_hash_to_newline("Best:#" + seconds_to_time_string(BEST_SCORE,true)),.6,.6,0,c_lime,c_lime,c_lime,c_lime,1)

