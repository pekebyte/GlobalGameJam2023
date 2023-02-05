var drawcol = c_white, scalemod = 1;
if CHOPPING {
    drawcol = c_lime;
    scalemod = 1.2;
}
draw_sprite_ext(sprite_index,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),scale*scalemod,scale*scalemod,0,drawcol,1)

font_set(BASICFONT,fa_right,fa_bottom)
var tcol = c_red;
if chop_cost() <= SILVER
    tcol = c_white;
draw_text_transformed_colour(x+width*.5-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+height*.5,string_hash_to_newline(string(chop_cost())),.4,.4,0,tcol,tcol,tcol,tcol,1)

