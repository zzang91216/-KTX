a += 1
if(a <= 60){
	if(x > px + 500){
		hspeed -= 1
	}
	if(x > px + 600){
		hspeed = 0
	}
}
else if(a <= 120){
	hspeed = min(hspeed+1,15)
}
else{instance_destroy()}
