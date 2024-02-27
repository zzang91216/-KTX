//talk system
if(distance_to_object(obj_player)<50&&keyboard_check_pressed(vk_enter)&&obj_text.txtnum = 0&&obj_text.xp = 0){
	obj_text.txtnum = 2
	obj_text.txtsort[0] = 1
	obj_text.txtsort[1] = 2
	obj_text.txt[0] = "you \n are \n a \n good \n boy\n .\n and I am a good boy, too."
	obj_text.txt[1] = "League of Legends (LoL) is a multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and macOS.\n Inspired by Defense of the Ancients, the game follows a freemium model. \n The game was released on October 27, 2009.\n An abridged version of the game called League of Legends: Wild Rift for mobile and console, was announced on October 15, 2019.In League of Legends, players assume the role of a champion with unique abilities and battle against a team of other player- or computer-controlled champions.\n The goal is usually to destroy the opposing team's Nexus, a structure that lies at the heart of a base protected by defensive structures, although other distinct game modes exist as well with varying objectives, rules, and maps. Champions span a variety of roles and blend a variety of fantasy tropes, tied to a fictional universe developed by Riot Games through short stories, comics, cinematics, and books."
	image_xscale = obj_player.image_xscale //플레이어를 바라보도록 함
	instance_create_depth(x-4*image_xscale,y,depth,obj_talk) //말풍선 띄우기
}

if (obj_text.txtnum = 0) {
	image_xscale = 1
	instance_destroy(obj_talk)
}

if (talkcount >= 11) {
	talkcount = 10
}