
if SILVER >= mycost
    tcol = c_lime;
else tcol = c_red;
if SILVER < mycost
    image_blend = c_red;
event_inherited();

font_set(BASICFONT,fa_center,fa_bottom);

var spacing = 22*scale;
var tscale = .4;

draw_text_transformed_colour(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-height*.5,string_hash_to_newline("+"+string(round(aoe*100)) + "% AOE Radius"),tscale*scale,tscale*scale,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-height*.5-spacing,string_hash_to_newline("+"+string(round(rng*100)) + "% ATK Range"),tscale*scale,tscale*scale,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-height*.5-2*spacing,string_hash_to_newline("+"+string(round(dmg*100)) + "% Damage/Sec"),tscale*scale,tscale*scale,0,c_white,c_white,c_white,c_white,1)

draw_text_transformed_colour(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-height*.5-3*spacing,string_hash_to_newline(string(mycost) + " Coins"),tscale*scale,tscale*scale,0,tcol,tcol,tcol,tcol,1)
draw_text_transformed_colour(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-height*.5-4*spacing,string_hash_to_newline("Level " + string(nextlevel)),.5*scale,.5*scale,0,tcol,tcol,tcol,tcol,1)

add_blend();
draw_sprite_ext(sp_selection,0,mytarg.x-__view_get( e__VW.XView, 0 ),mytarg.y-__view_get( e__VW.YView, 0 ),scale,scale,0,c_lime,1);
normal_blend();

