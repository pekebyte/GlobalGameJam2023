function update_pathfind() {
	if point_distance(x,y,next_xtarg,next_ytarg) <= movespeed*SPD*2 {
	    // Find the NEXT SPOT.
	    var pdir = point_direction(x,y,xtarg,ytarg);
	    var xg = xgrid;
	    var yg = ygrid;
    
	    var xtg = round(xg+lengthdir_x(1,pdir));
	    var ytg = round(yg+lengthdir_y(1,pdir));
	    if walkable_space(xtg,ytg) && !ds_list_contains(last_coords,xy_to_coords(xtg,ytg)) {
	        next_xtarg = grid_to_real(xtg);
	        next_ytarg = grid_to_real(ytg);
	    }
	    else {
	        var sweepdir = choose(-1,1);
	        var checkdir = -90*sweepdir;
	        var spacefound = false;
	        var sweeps = 0;
	        while !spacefound && sweeps < 8{
	            sweeps++;
	            var xtg = round(xg+lengthdir_x(1,pdir+checkdir));
	            var ytg = round(yg+lengthdir_y(1,pdir+checkdir));
	            if walkable_space(xtg,ytg) && !ds_list_contains(last_coords,xy_to_coords(xtg,ytg)) {                
	                next_xtarg = grid_to_real(xtg);
	                next_ytarg = grid_to_real(ytg);
	                spacefound = true;            
	            }
	            else {
	                checkdir += 45*sweepdir;
	            }
	        }
	    }
	}



}
