if(place_meeting(x,y,obj_player)&&abs(obj_player.y-y)<3){
	if(obj_teleport.tel != 1 && keyboard_check_pressed(ord("T"))){
		obj_teleport.tel = 1
		obj_teleport.del = 360
		obj_teleport.froom = room01 
		obj_teleport.fx = 232
		obj_teleport.fy = 734
		obj_player.sprite_index = spr_player_stop
	}
}
