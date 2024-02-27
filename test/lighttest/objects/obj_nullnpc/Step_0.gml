//txt 를 맵에서 생성코드로 설정해주어야 함
if(global.eventindex[eventnum] == true&&(place_meeting(x,y,obj_player)&&obj_text.txtnum == 0&&obj_text.xp = 0)){
	obj_text.txtnum = txtcount
	for (i = 0; i < txtcount; i++;){
		obj_text.txtsort[i] = 1
		obj_text.txt[i] = index[i]
	}
	eventchecker(eventnum)
	global.eventindex[eventnum] = false
}