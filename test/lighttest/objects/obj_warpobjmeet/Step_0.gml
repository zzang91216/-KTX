if ((place_meeting(x,y+2,obj_player))) {
	if(obj_warp.tel != 1){
		obj_warp.tel = 1
		obj_warp.del = 20
		obj_warp.froom = froom
		obj_warp.fx = fx
		obj_warp.fy = fy
	}
}