#define scr_item
// All Scripts for obj_item


#define scr_item_create
// Use this variable for selection detection
itemName = noone;

#define scr_item_step
// Zoom item if selected
if place_meeting(x,y, obj_target) {
    image_xscale = 1.2;
    image_yscale = 1.2;
} else {
    image_xscale = 1;
    image_yscale = 1;
}
