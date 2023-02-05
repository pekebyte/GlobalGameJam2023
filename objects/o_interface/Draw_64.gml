
if MODE == BUILDMODE
    modetext = "NEXT WAVE IN..."
else modetext = "INCOMING MONSTERS!"

font_set(BASICFONT,fa_center,fa_top);
draw_text_transformed_colour(GUIWIDTH*.5,0,string_hash_to_newline(modetext + " " + string(ceil(MODE_TIMER))),.4,.4,0,c_white,c_white,c_white,c_white,1)
draw_text_transformed_colour(GUIWIDTH*.5,23,string_hash_to_newline("WAVE " + string(WAVE)),.35,.35,0,c_red,c_red,c_red,c_red,1)

font_set(BASICFONT,fa_right,fa_top);
draw_text_transformed_colour(GUIWIDTH-15,0,string_hash_to_newline(string(SILVER) + " COINS"),.5,.5,0,c_white,c_white,c_white,c_white,1)


font_set(BASICFONT,fa_center,fa_bottom);
draw_text_transformed_colour(GUIWIDTH*.5,GUIHEIGHT-20,string_hash_to_newline(seconds_to_time_string(SCORE,true)),.5,.5,0,c_white,c_white,c_white,c_white,1)

