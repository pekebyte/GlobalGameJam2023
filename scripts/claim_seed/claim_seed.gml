function claim_seed() {
	var me = id, success = false;
	with o_seed {
	    if carried == noone {
	        carried = me;
	        success = true;
	    }
	}

	if success {
	    next_xtarg = x;
	    next_ytarg = y;
	    xtarg = x;
	    ytarg = y;
	    escaping = true;
	}



}
