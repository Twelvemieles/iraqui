#define scr_menu
// All scripts for obj_menu
// obj_menu instanciates a bunch of obj_item Objects  

#define scr_menu_create
// Start Position
x = 340;

// Stop Position
stop = room_width/2;

// Instantiate menu items - If you cahnge distance you also must change Grid
// in scr_swipe_sensor_step / Snapping
item1 = instance_create(x,y, obj_item);
item2 = instance_create(x+68,y, obj_item);
item3 = instance_create(x+136,y, obj_item);
item4 = instance_create(x+204,y, obj_item);
item5 = instance_create(x+272,y, obj_item);
item6 = instance_create(x+340,y, obj_item);
item7 = instance_create(x+408,y, obj_item);
item8 = instance_create(x+476,y, obj_item);
item9 = instance_create(x+544,y, obj_item);

// Assign different sprites to menu items
item1.sprite_index = spr_item_1;
item2.sprite_index = spr_item_2;
item3.sprite_index = spr_item_3;
item4.sprite_index = spr_item_4;
item5.sprite_index = spr_item_5;
item6.sprite_index = spr_item_6;
item7.sprite_index = spr_item_7;
item8.sprite_index = spr_item_8;
item9.sprite_index = spr_item_9;

// Assign different names to items - Use this name for further selection processing 
item1.itemName = "mint";
item2.itemName = "lemon";
item3.itemName = "red";
item4.itemName = "yellow";
item5.itemName = "green";
item6.itemName = "blue";
item7.itemName = "purple";
item8.itemName = "orange";
item9.itemName = "chocolate";



#define scr_menu_step
// Moving menu + items
if(!global.stop) {
    x += global.movePixels;
}

if (item1.x >= (room_width/2) && global.movePixels > 0) {
     global.stop = true;
     x = room_width/2;
} else if (item9.x <= (room_width/2) && global.movePixels < 0) {
     global.stop = true;
     x = room_width/2 -544;
} else global.stop = false;

// Maintain distance between items
item1.x = x;
item2.x = x+68;
item3.x = x+136;
item4.x = x+204;
item5.x = x+272;
item6.x = x+340;
item7.x = x+408;
item8.x = x+476;
item9.x = x+544;

