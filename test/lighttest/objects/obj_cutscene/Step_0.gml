if(object_exists(obj_player)&&obj_text.txtnum = 0&&obj_text.xp = 0){
		time1 += 1
		if (time1 == timer1) {
			obj_text.txtnum = txtcount
			for (i = 0; i < txtcount; i++;){
				obj_text.txtsort[i] = 1
				obj_text.txt[i] = index[i]
			}
			move = true
		}
		if (move == true){
			time2 += 1
			if (time2 == timer2) {
				room_goto(rm_town1)
			}
		}
}