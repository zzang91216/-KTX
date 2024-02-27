sprite_index = spr_nothing

global.k = 0
suf1 = surface_create(view_get_wport(0),view_get_hport(0))
suf2 = surface_create(view_get_wport(0),view_get_hport(0))
suf3 = surface_create(room_width+2*view_get_wport(0),room_height+2*view_get_hport(0))
suf4 = surface_create(view_get_wport(0),view_get_hport(0))
suf5 = surface_create(view_get_wport(0),view_get_hport(0))
suflt[0] = surface_create(view_get_wport(0),view_get_hport(0))
suflt[1] = surface_create(view_get_wport(0),view_get_hport(0))
suflt[2] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[0] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[1] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[2] = surface_create(view_get_wport(0),view_get_hport(0))
if(view_camera[0] = -1){
	view_camera[0] = camera_create_view(0,0,room_width,room_height)
}
if(instance_exists(obj_player)){
	vx = (obj_player.x - view_get_wport(0)/2)
	vy = (obj_player.y - view_get_hport(0)*2/3)
	pvx = vx
	pvy = vy
	camera_set_view_pos(view_camera[0],vx,vy)
	px = obj_player.x 
	py = obj_player.y
}
view_surface_id[0] = suf1
depth = -1
surface_set_target(suf3)
draw_clear(c_black)
if(file_exists(room_get_name(room)+"suf.png")){
	a = sprite_add(room_get_name(room)+"suf.png",1,false,false,0,0)
	draw_sprite(a,0,0,0)
}
surface_reset_target()
viewsc = 1.5
lthingo[0] = obj_bulb //빛을 내는 obj
lthings[0] = spr_bulblight //빛 궤적 spr
lthingo[1] = obj_flash //빛을 내는 obj
lthings[1] = spr_flash //빛 궤적 spr
lthingo[2] = obj_bulb_back
lthings[2] = spr_bulblight

dthing[0] = obj_ftile //빛의 영향을 받는 obj
dthing[1] = obj_bulb //same

lnum = array_length_1d(lthingo) //lthingo number
dnum = array_length_1d(dthing) //dthing number

squarsize = 10
roomend = 0