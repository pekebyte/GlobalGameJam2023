function damage_target(argument0, argument1) {
	var tg = argument0, dmg = round(argument1);

	with tg {
	    hp -= dmg;
	    flash = 1;
	    play_sound_at(snd_thud_hard,x,y,0,false,10);
	    //show_popuptext(x,y-15,string(dmg),c_red);
    
	    if hp <= 0 {        
	        with instance_create(x,y,eff_ringplosion) {            
	            image_blend = c_red;
	            scalemod = .5;
	        }
	        instance_create(x,y,eff_explosion);        
	        play_sound_at(snd_explode_organic,x,y,0,false,10);
	        if random(1) <= .95 {
	            var numcoin = round((1+.5*(level-1))*irandom_range(2,3));
	            repeat(numcoin) instance_create(x,y,o_coin)
	        } else with instance_create(x,y,o_coin) gold = true;
	        instance_destroy();
	    }
	}



}
