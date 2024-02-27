if(instance_exists(obj_player)){
	image_xscale = obj_player.image_xscale
	x = (obj_player.x + image_xscale*20) - 8*image_xscale
	y = obj_player.y - 27
	a += aspeed
	aspeed += ((min(max(-40,a + (obj_player.vspeed*5-10-a)/3),40) - a)/2 - aspeed)/3
	image_angle = a*image_xscale
	
	if (keyboard_check_pressed(ord("L"))) {
		instance_destroy()
	}
	
}