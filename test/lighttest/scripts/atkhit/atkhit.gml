function atkhit(argument0, argument1, argument2) {
	/*
	argument0 = hspeed nuckback
	argument1 = vspeed nuckback
	argument2 = enemy type
	0 : breakable block
	1 : normal enemy
	*/
		if (ctime = 0) {
			if (place_meeting(x,y+2,obj_attack) && ctime = 0){
					cskill = 7
					ctime = hittime
					life = life-1
			}
		}
		if (ctime != 0) {
			image_alpha = 0.5
			if(cskill = 7){
				switch (argument2) {
					case 0:
					break
					case 1:
						image_xscale = obj_player.image_xscale
					break
				}
				if(ctime < 12){
					hspeed -= sign(hspeed)*min(5,abs(hspeed))*argument2
				}
				if(ctime = hittime){
					hspeed = argument0*argument2*obj_player.image_xscale
					vspeed = -argument1*argument2
				}
				if(ctime = 1){
					image_alpha = 1
				}
			}
		}
		if (life = 0) {
			instance_destroy()
		}
}