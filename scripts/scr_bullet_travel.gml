/// Bullet Fired Travaling

if (instance_exists(obj_player)) {
       phy_position_x -= sign(obj_player.x - x) *bulletspeed  ;
       phy_position_y -= sign(obj_player.y- y) *bulletspeed ;
       }
