image_alpha = 1
vspeed = max(min(10,vspeed+0.7),-15)

blockcode()

atkhit(4,3,1)

if (distance_to_object(obj_player) <= 150) {
	sprite_index = spr_dog_stand
	
	hspeed = 10
}