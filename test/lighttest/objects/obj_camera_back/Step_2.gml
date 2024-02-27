vx = obj_camera.vx
vy = obj_camera.vy
gpu_set_blendmode_ext(bm_normal,bm_subtract)
for(l = 0; l<3; l+= 1){
	surface_set_target(sufdk[l])
	draw_clear(c_black)
	for(j = 0; j< lnum; j+=1){
		for(i = 0; i < instance_number(lthingo[j]);i+=1){
			a = instance_find(lthingo[j],i)
			draw_sprite_ext(lthings[j],l,a.x-vx,a.y-vy,a.image_xscale,a.image_yscale,a.image_angle,c_white,1)
		}
	}
	surface_reset_target()
}


for(l = 0; l<3; l+= 1){
	surface_set_target(suflt[l])
	gpu_set_blendmode(bm_normal)
	draw_clear_alpha(c_black,0)
	for(j = 0; j< dnum; j+=1){
		for(i = 0; i < instance_number(dthing[j]);i+=1){
			a = instance_find(dthing[j],i)
			draw_sprite_part_ext(a.sprite_index,a.image_index,sprite_get_width(a.sprite_index)/2,0,sprite_get_width(a.sprite_index)/2,sprite_get_height(a.sprite_index),a.x-vx-sprite_get_xoffset(a.sprite_index),a.y-vy-sprite_get_yoffset(a.sprite_index),a.image_xscale*2,a.image_yscale,c_white,a.image_alpha)
		}
	}

	gpu_set_blendmode(bm_normal)
	draw_surface(sufdk[l],0,0)
	surface_reset_target()
}

//
