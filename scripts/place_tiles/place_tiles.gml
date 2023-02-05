function place_tiles() {
	var xx, yy;
	for (xx = 0; xx < GRIDWIDTH; xx++){
	    for (yy = 0; yy < GRIDHEIGHT; yy++){
	        switch ds_grid_get(WORLDGRID,xx,yy) {
	            case map_walkable:
	                tile_add(bg_mud,irandom(background_get_width(bg_mud)/GRIDSIZE-1)*GRIDSIZE,
	                    0,GRIDSIZE,background_get_height(bg_mud),
	                    grid_to_real(xx)-GRIDSIZE*.5,
	                    grid_to_real(yy)-GRIDSIZE*.5-7,
	                    -grid_to_real(yy)+TILEDEPTH)
	                break;
	            case map_buildable:
	                var tilewidth = 60;
	                if random(1) <= .5
	                    build_item(xx,yy,o_tree);
	                tile_add(bg_buildabletile,irandom(background_get_width(bg_buildabletile)/tilewidth-1)*tilewidth,
	                    0,tilewidth,background_get_height(bg_buildabletile),
	                    grid_to_real(xx)-30,
	                    grid_to_real(yy)-GRIDSIZE*.5-6,
	                    -grid_to_real(yy)+TILEDEPTH*.5)
	                break;
	        }
	    }
	}



}
