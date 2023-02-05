var drawcol = c_white;

if dragging { 
    xgrid = real_to_grid(x);
    ygrid = real_to_grid(y);

    var canplace = buildable_space(xgrid,ygrid);
    
    if !canplace drawcol = c_red;
    else drawcol = c_lime;
    
    add_blend();
    draw_set_alpha(.5);
    draw_circle_colour(x,y,attackrange,drawcol,c_black,0);
    draw_set_alpha(1);
    draw_circle_colour(x,y,attackrange,drawcol,drawcol,1);
    normal_blend();
    if !canplace drawcol = c_red;
}


draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,drawcol,1);



