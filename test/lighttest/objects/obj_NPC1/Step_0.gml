//talk system, 생성코드로 txt 지정해주어야 함
if(distance_to_object(obj_player)<50&&keyboard_check_pressed(vk_enter)&&obj_text.txtnum = 0&&obj_text.xp = 0){
		obj_text.txtnum = 1
		obj_text.txtsort[0] = 1
	if (talkcount < 5) {
		obj_text.txt[0] = index[0]
		talkcount += 1
	}
	else if (talkcount >= 5 && talkcount < 10) {
		obj_text.txt[0] = index[1]
		talkcount += 1
	}
	else if (talkcount >= 10) {
		obj_text.txt[0] = index[2]
		talkcount += 1
	}
	
	image_xscale = obj_player.image_xscale //플레이어를 바라보도록 함
	instance_create_depth(x-4*image_xscale,y+64,depth,obj_talk) //말풍선 띄우기
}

//대화 끝나면 플레이어 다시 안바라봄 & 말풍선 사라짐
if (obj_text.txtnum = 0) {
	image_xscale = 1
	instance_destroy(obj_talk)
}

if (talkcount >= 11) {
	talkcount = 10
}