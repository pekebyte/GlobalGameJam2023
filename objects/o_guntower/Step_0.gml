event_inherited();
if !dragging {
    shootcool -= SPD/room_speed;
    
    if shootcool <= 0 {
        var closest_bear = noone;
        
        if instance_exists(o_seed.carried) {
            closest_bear = o_seed.carried;
            if point_distance(x,y,closest_bear.x,closest_bear.y) > attackrange*(1+level*TOWERS[towertype,tower_rangelvl])
                closest_bear = noone;
        }
        if closest_bear == noone closest_bear = closest_instance(x,y,o_bear,attackrange);
        
        if instance_exists(closest_bear){
            shootcool = shootcoolmax;
            
            var d = dps*shootcoolmax*(1+level*TOWERS[towertype,tower_dmglvl]);
            with instance_create(x,y,o_bullet) {
                targ = closest_bear;
                damage = d;
            }
        }
    }
}

