/// scr_move_state



len = spd *4;
 // Move
 hspd = lengthdir_x (len, dir)
 vspd = lengthdir_y (len ,dir)
 
 phy_position_x += hspd;
 phy_position_y += vspd;
/// dash state 

var dash = instance_create ( x, y, obj_dash);
dash.sprite_index = sprite_index;
dash.image_index  = image_index;
