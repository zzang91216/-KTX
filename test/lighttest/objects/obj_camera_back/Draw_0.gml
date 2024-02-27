gpu_set_blendmode(bm_normal)
for(j = 0; j< dnum; j+=1){
	for(i = 0; i < instance_number(dthing[j]);i+=1){
		a = instance_find(dthing[j],i)
		draw_sprite_part_ext(a.sprite_index,a.image_index,0,0,sprite_get_width(a.sprite_index)/2,sprite_get_height(a.sprite_index),a.x-sprite_get_xoffset(a.sprite_index),a.y-sprite_get_yoffset(a.sprite_index),a.image_xscale*2,a.image_yscale,c_white,a.image_alpha)
	}
}
gpu_set_blendmode_ext(bm_one,bm_one)
draw_surface_ext(suflt[0],vx,vy,1,1,0,make_color_rgb(255,0,0),1)
draw_surface_ext(suflt[1],vx,vy,1,1,0,make_color_rgb(0,255,0),1)
draw_surface_ext(suflt[2],vx,vy,1,1,0,make_color_rgb(0,0,255),1)
gpu_set_blendmode(bm_normal)