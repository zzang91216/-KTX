if(tel = 1){
	if(del > 10){
		if(del = 20){
			obj_camera.roomend = 1
		}
		if(instance_exists(obj_player)){
			obj_player.sttime = 10
			obj_player.canmove = 0
			obj_player.image_yscale = 1
		}
	}
	else {
		if(del = 10){
			if(froom != room){room_goto(froom)}
			obj_camera.squarsize = 10
			obj_camera.roomend = 0
		}
		if(instance_exists(obj_player)){
			if(del = 9){
				obj_player.x = fx
				obj_player.y = fy
			}
		}
		if(del = 1){
			tel = 0
		}
	}

}
del = max(0,del-1)