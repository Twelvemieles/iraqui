#define scr_swipe_sensor
// All Scripts for obj_swipemenu
// This is the main object with all global variables and movement calculation


#define scr_swipe_sensor_create
depth = 10000;
global.movePixels = 0;
global.stop = false;
global.last_direction = "left"; //stores last moving direction for snapping item in focus
global.selectedInstance = noone; //stores the instance-ID of the selected item 
global.clickPosition = 0;
global.selectedItem = noone;
isClicked = false;







#define scr_swipe_sensor_step
// Moving
if (isClicked) {   
   global.movePixels = floor((mouse_x - global.clickPosition) /10);
   global.movePixels = clamp(global.movePixels, -8,8);  
}
    
if (global.movePixels > 0) {
    global.last_direction = "right";
    global.movePixels -= 1;
    }
if (global.movePixels < 0) {
    global.last_direction = "left";
    global.movePixels += 1;
    } 
    
// Snapping
if ((global.movePixels == 0) && !isClicked) {
    with (obj_menu) {
        if (!place_snapped(68, 68) && global.last_direction == "left") {
            x -= 1;
        }
        else if (global.last_direction == "left") move_snap(68, 68);
            
        if (!place_snapped(68, 68) && global.last_direction == "right") {
                x += 1;
        } 
        else if (global.last_direction == "right") move_snap(68, 68);  
    } 
}


#define scr_swipe_sensor_left_pressed
isClicked = true;
global.clickPosition = mouse_x;


#define scr_swipe_sensor_global_left_released
isClicked = false;


#define scr_swipe_sensor_draw
draw_self();

// For Debugging
draw_text(50,100, "global.movePixels: " + string(global.movePixels));
draw_text(50,115, "global.stop: " + string(global.stop));
draw_text(50,130, "global.last_direction: " + string(global.last_direction));
draw_text(50,145, "isClicked: " + string(isClicked));
draw_text(50,160, "global.selectedInstance: " + string(global.selectedInstance));
draw_text(50,175, "global.clickPosition: " + string(global.clickPosition));
draw_text(50,190, "global.selectedItem: " + string(global.selectedItem));