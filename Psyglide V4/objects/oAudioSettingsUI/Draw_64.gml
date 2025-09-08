event_inherited();

scribble("Audio Settings").draw(RES_W/2,32);

draw_text(RES_W/2,RES_H/2 - 32,global.masterVolume);
draw_text(RES_W/2,RES_H/2,global.musicVolume);
draw_text(RES_W/2,RES_H/2 + 32,global.sfxVolume);