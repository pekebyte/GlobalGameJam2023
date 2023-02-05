draw_set_alpha(.75*scale);
    draw_rectangle_colour(-5,-5,GUIWIDTH+5,GUIHEIGHT+5,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);

font_set(BASICFONT,fa_center,fa_middle);
var tscale = .8;
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.HView, 0 )*.5-200,string_hash_to_newline("THE MONSTERS ESCAPED WITH THE SEED!"),45,__view_get( e__VW.WView, 0 )*.8/tscale,scale*tscale,scale*tscale,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_colour(__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.HView, 0 )*.5-100,string_hash_to_newline("But you defended it for " + seconds_to_time_string(SCORE,true) + "..."),scale*.7,scale*.7,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_transformed_colour(__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.HView, 0 )*.5-70,string_hash_to_newline("So you've got that going for you."),scale*.5,scale*.5,0,c_white,c_white,c_white,c_white,1);

draw_text_transformed_colour(__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.HView, 0 )*.5,string_hash_to_newline("BEST SEED PROTECTION:"),scale*.5,scale*.5,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_colour(__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.HView, 0 )*.5+40,string_hash_to_newline(seconds_to_time_string(BEST_SCORE,true)),scale*.8,scale*.8,0,c_lime,c_lime,c_lime,c_lime,1);

font_set(BASICFONT,fa_right,fa_top);
