/// Make bullet

    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
    case spr_player_up :
        xx = x;
        yy = y - 15;
        bulletdir = -y;
        break; 
        
        case spr_player_down :
            xx = x - 5;
            yy = y + 30;
            bulletdir = y;
        break;
        
        case spr_player_right : 
            xx = x + 35;
            yy = y + 5;
            bulletdir = x;
        break; 
        
        case spr_player_left :
            xx = x - 35;
            yy = y + 5;
            bulletdir = -x;
        break; 
        }
        var fire = instance_create (xx,yy,obj_bullet);
        fired = true;
        obj_player.state = scr_move_state;
        
