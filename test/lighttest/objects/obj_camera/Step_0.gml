if(instance_exists(obj_player)){
	pvx = vx
	pvy = vy
	vx = min(max(obj_player.x - view_get_wport(0)/2 ,0),room_width-view_get_wport(0))
	vy = min(max(obj_player.y - view_get_hport(0)*2/3 ,0),room_height-view_get_hport(0))
	px = obj_player.x 
	py = obj_player.y
	camera_set_view_pos(view_camera[0],vx,vy)
}
//
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
	draw_set_alpha(0.03) //light alpha
	draw_set_color(c_white)
	draw_rectangle(0,0,view_get_wport(0),view_get_hport(0),0)
	draw_set_alpha(1)
	gpu_set_blendmode(bm_normal)
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
if(mouse_check_button_pressed(mb_left)){
	//global.k = !global.k
}
surface_set_target(suf5)
gpu_set_blendmode(bm_normal)
draw_clear_alpha(c_black,0)
draw_circle_color(obj_player.x-pvx,obj_player.y-pvy,140,c_white,c_white,0)
surface_reset_target()

surface_set_target(suf4)
gpu_set_blendmode(bm_normal)
draw_clear_alpha(c_black,0)
draw_surface(suf1,0,0)
gpu_set_blendmode_ext(bm_normal,bm_subtract)
draw_surface(suf5,0,0)
surface_reset_target()

surface_set_target(suf3)
gpu_set_blendmode(bm_normal)
draw_surface(suf4,pvx+view_get_wport(0),pvy+view_get_hport(0))
surface_reset_target()

surface_set_target(suf2)
draw_clear(c_black)
gpu_set_blendmode(bm_add)
draw_surface_ext(suf3,-vx-view_get_wport(0),-vy-view_get_hport(0),1,1,0,c_white,0.2)
gpu_set_blendmode_ext(bm_normal,bm_subtract)
draw_sprite(spr_plight,0,obj_player.x-vx,obj_player.y-vy)

for(i = 0; i < instance_number(obj_light);i+=1){
	a = instance_find(obj_light,i)
	draw_sprite(spr_light,0,a.x-vx,a.y-vy)
}
for(i = 0; i < instance_number(obj_blight);i+=1){
	a = instance_find(obj_blight,i)
	draw_sprite(spr_blight,0,a.x-vx,a.y-vy)
}

surface_reset_target()
gpu_set_blendmode(bm_normal)
game_set_speed(60,gamespeed_fps)

/*if(mouse_wheel_down()){
	viewsc *= 0.98
}
if(mouse_wheel_up()){
	viewsc *= 1.02	
}*/
if(viewsc>1){
	kx =  max(min(-(px - view_get_wport(0)/2 - vx)*viewsc-view_get_wport(0)*(viewsc-1)/2,0),view_get_wport(0)*(1-viewsc))
	ky =  max(min(-(py - view_get_hport(0)*2/3 - vy)*viewsc-view_get_hport(0)*(viewsc-1)*2/3,0),view_get_hport(0)*(1-viewsc))
}
else{
	kx = -view_get_wport(0)*(viewsc-1)/2
	ky = -view_get_hport(0)*(viewsc-1)*2/3
}

if(roomend = 0){
	squarsize = max(squarsize-1,0)
}
else{
	squarsize = min(squarsize+1,10)
}