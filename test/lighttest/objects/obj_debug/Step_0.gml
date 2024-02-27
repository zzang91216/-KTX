//디버그 오브젝트

if (keyboard_check_pressed(ord("R"))) {
	room_restart()
	obj_status.HP = 5 //체력도 같이리셋
}

if (keyboard_check_pressed(ord("0"))) {
	room_goto(rm_tutorial)
}

if (keyboard_check_pressed(ord("1"))) {
	room_goto(rm_town1)
}

if (keyboard_check_pressed(ord("2"))) {
	room_goto(rm_b)
}

if (keyboard_check_pressed(ord("3"))) {
	room_goto(rm_backstreet)
}

if (keyboard_check_pressed(ord("4"))) {
	room_goto(rm_boss1)
}

if (keyboard_check_pressed(ord("5"))) {
	room_goto(roomtest)
}

if (keyboard_check_pressed(ord("6"))) {
	room_goto(rm_subway)
}

if(keyboard_check_pressed(ord("M"))) {
	eventreset()
} //디버그용 이벤트리셋

/*
R(대소문자 상관 x)을 눌렀다 땔 때
현재 room(scene이라고 생각하면 됨) 재시작
*/