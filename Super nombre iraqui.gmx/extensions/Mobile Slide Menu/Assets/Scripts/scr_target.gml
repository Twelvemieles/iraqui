#define scr_target
// All scripts for obj_target
// This object detects collision with selected item

#define scr_target_create
depth = 1000;
playSound = false;

#define scr_target_step
// Collision Detection of instance in center and sound
global.selectedInstance = instance_place(x, y, obj_item);
if (global.selectedInstance != noone) {
    global.selectedItem = global.selectedInstance.itemName;
} else {
    playSound = true;
}
if (place_meeting(x,y, obj_item) && playSound) {
    audio_play_sound(snd_tock,1,0);
    playSound = false;
}

