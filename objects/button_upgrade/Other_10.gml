if mytarg != noone {
    mycost = tower_levelcost(mytarg.towertype,mytarg.level);
    nextlevel = mytarg.level+1;
    dmg = TOWERS[mytarg.towertype,tower_dmglvl];
    rng = TOWERS[mytarg.towertype,tower_rangelvl];
    aoe = TOWERS[mytarg.towertype,tower_aoelvl];
}

