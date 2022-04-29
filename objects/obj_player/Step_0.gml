self.x = mouse_x;
self.y = mouse_y;

if (self.can_shoot && mouse_check_button(mb_left)) {
    self.can_shoot = false;
    self.alarm[0] = 10;
    
    var bullet = instance_create_depth(self.x, self.y, self.depth + 1, obj_bullet);
    bullet.xspeed = random_range(-2, 2);
    bullet.yspeed = -8;
}