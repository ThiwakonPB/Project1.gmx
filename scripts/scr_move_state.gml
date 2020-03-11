/// scr_move_state


scr_get_input(); 
 if (dash_key)
{
    state = scr_dash_state;
    alarm[0] = room_speed/8;
} 

if (attack_key)
{
image_index = 0
state = scr_attack_state;

}


/// Fireing
if (fire_key && alarm[1] <=0)
{
///  Facing Dir
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
    case spr_player_up :
        xx = x;
        yy = y - 15;
         bulletdir = 1;
        break; 
        
        case spr_player_down :
            xx = x - 5;
            yy = y + 40;
             bulletdir = 1;
        break;
        
        case spr_player_right : 
            xx = x + 25;
            yy = y + 5;
            bulletdir = 2;
            
        break; 
        
        case spr_player_left :
            xx = x - 25;
            yy = y + 5;
              bulletdir = 2;
        break; 
        }
        
/// Bullet Direction
        
      switch (sprite_index) {
    case spr_player_up :
     var fire = instance_create (xx,yy,obj_bullet);
        break; 
        
        case spr_player_down :
           var fire = instance_create (xx,yy,obj_bullet);
        break;
        
        case spr_player_right : 
    var fire = instance_create (xx,yy,obj_bullet2);
            
        break; 
        
        case spr_player_left :
    var fire = instance_create (xx,yy,obj_bullet2);
        break; 
        }
/// Delay between shots
        alarm[1] = 8;
       
   
        
}
 

/// Get Axis
        
 var xaxis = (right_key - left_key);
 var yaxis = (down_key - up_key);
 
 /// Get direction 
 dir = point_direction (0, 0, xaxis , yaxis);
 /// Get the lenght
 if (xaxis == 0 and yaxis == 0 ){
 len = 0;
 }
 else {
 scr_get_face ();
 len = spd;
 }
 /// Move
 hspd = lengthdir_x (len, dir)
 vspd = lengthdir_y (len ,dir)
 
 phy_position_x += hspd;
 phy_position_y += vspd;
 /// Control the sprite
 image_speed =  .5;
 if (len == 0) image_index =0;

 
 switch (face) {
 
 case RIGHT :
    sprite_index = spr_player_right;
    break;
 case LEFT :
    sprite_index = spr_player_left;
    break;
 case UP : 
    sprite_index = spr_player_up;
    break;
 case DOWN :
    sprite_index = spr_player_down;
    break;
    }
 

