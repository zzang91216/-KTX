if(tel = 1){
	if(del > 180){
		if(del = 360){
			obj_player.sttime = 180
			obj_player.canmove = 0
			px = obj_player.x
			py = obj_player.y
			instance_create_depth(px-600,py,-2,obj_taxi)
		}
		if(del = 240){
			obj_camera.roomend = 1
		}
		if(instance_exists(obj_player)){
			if(del < 300){
				obj_player.image_yscale = 0
			}
			else{
				obj_player.image_yscale = 1
			}
		}
	}
	else {
		if(del = 180){
			room_goto(froom)
		}
		if(del = 120){
			instance_create_depth(fx-600,fy,-2,obj_taxi)
		}
		if(instance_exists(obj_player)){
			obj_player.x = fx
			obj_player.y = fy
			obj_player.vspeed = 0
			obj_player.hspeed = 0
			obj_player.image_yscale = 1
			
			if(del < 60){
				obj_player.image_yscale = 1
			}
			else{
				obj_player.image_yscale = 0
			}
		}
		if(del = 1){
			tel = 0
		}
	}

}
del = max(0,del-1)