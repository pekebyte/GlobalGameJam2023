/// @description  play_music(music_id,looping)
/// @param music_id
/// @param looping
function play_music(argument0, argument1) {

	var newmusic = argument0, looping = argument1;

	if newmusic != MUSICID {
	    audio_stop_sound(MUSICID);
	    if newmusic != -1
	        audio_play_sound(newmusic,100,looping);
	    MUSICID = newmusic;
	}

   



}
