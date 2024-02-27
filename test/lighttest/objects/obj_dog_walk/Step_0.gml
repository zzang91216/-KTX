image_alpha = 1
vspeed = max(min(10,vspeed+0.7),-15)

blockcode()

atkhit(4,3,1)

if (!place_meeting(x,y,obj_block)) {
	if (place_meeting(x+hspeed+10*image_xscale,y,obj_block)) {
	hspeed = -7*image_xscale
	}
	
}

image_xscale = sign(hspeed)