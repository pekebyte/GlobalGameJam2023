if SILVER >= mycost {
    audio_play_sound(snd_smallpickup,10,false);
    with mytarg level++;
    SILVER -= mycost;
    show_popuptext(mytarg.x,mytarg.y-15,"LEVEL UP! (" + string(mytarg.level) + ")",c_lime);
}

instance_destroy();

