// General Settings
    init_fonts();
    init_audio();
    resolution_set();
    globalvar SOUND_ON; SOUND_ON = true;
    device_mouse_dbclick_enable(false);
    random_set_seed(date_get_second_of_year(date_current_datetime()));    
    globalvar MUSICID; MUSICID = -1;
    
// Grid management
    globalvar GRIDSIZE, WORLDGRID, GRIDWIDTH, GRIDHEIGHT, TILEDEPTH, BUILDGRID;
        GRIDSIZE = 50;       
        GRIDWIDTH = 30;
        GRIDHEIGHT = 30; 
        TILEDEPTH = 5000;
        BUILDGRID = ds_grid_create(20,20);
        WORLDGRID = ds_grid_create(20,20);

// Game Initialization
    globalvar TIMER; TIMER = 600;
    globalvar SPD; SPD = 1;
    globalvar GRAVITY; GRAVITY = 1.5;
    
    globalvar SCORE; SCORE = 0;
    globalvar LIFETIME_SCORE; LIFETIME_SCORE = 0;
    globalvar BEST_SCORE; BEST_SCORE = 0;
    
    globalvar KILLS; KILLS = 0;
    globalvar BEST_KILLS; BEST_KILLS = 0;
    globalvar LIFETIME_KILLS; LIFETIME_KILLS = 0;
    
    globalvar MODE; MODE = 1;
    globalvar WAVEMODE; WAVEMODE = 0;
    globalvar BUILDMODE; BUILDMODE = 1;
    globalvar MODE_TIMER; MODE_TIMER = 0;
    
    globalvar GOLD; GOLD = 0;
    globalvar SILVER; SILVER = 0;
    globalvar PLACING; PLACING = -1;
    globalvar CHOPCOST; CHOPCOST = 10;
    globalvar CHOPPING; CHOPPING = false;
    globalvar WAVE; WAVE = 1;
    
    init_towers();
    
// Environment stuff
    globalvar TILEDEPTH;
    TILEDEPTH = 50000;

load_progress();

room_goto(rm_mainmenu);

