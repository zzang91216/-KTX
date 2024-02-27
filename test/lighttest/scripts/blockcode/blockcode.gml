function blockcode() {
	vspeed = max(min(10,vspeed+0.7),-15)

if (!place_meeting(x,y,obj_block)) {
   if (place_meeting(x,y+vspeed,obj_block)) {
      b = instance_place(x,y+vspeed,obj_block)
      if (vspeed>=0) {
         y = b.y - 2
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale + sprite_height-2
      }
      vspeed = 0
   }
   
   if (place_meeting(x+hspeed,y,obj_block)) {
      b = instance_place(x+hspeed,y,obj_block)
      if (hspeed>=0) {
         x = b.x - sprite_width/2*image_xscale
      }
      else {
         x = b.x + sprite_get_width(b.mask_index)*b.image_xscale + sprite_width*image_xscale/2-1
      }
      hspeed = 0
   }
   
   if (place_meeting(x+hspeed,y+vspeed,obj_block)) {
      b = instance_place(x+hspeed,y+vspeed,obj_block)
      if (vspeed>=0) {
         y = b.y - 1
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale + sprite_height-2
      }
      vspeed = 0
   }
   
}
if (!place_meeting(x,y,obj_platform)) {
   
   if (place_meeting(x,y+vspeed,obj_platform)&&vspeed > 0) {
      b = instance_place(x,y+vspeed,obj_platform)
      if (vspeed>=0) {
         y = b.y - 1
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale + sprite_height
      }
      vspeed = 0
   }
}

}
