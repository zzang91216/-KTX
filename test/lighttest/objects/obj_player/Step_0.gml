/*
스텝 이벤트는 이 object가 존재할 때, 게임의 매 step마다 작동하는 이벤트이다.
그냥 대부분의 동작을 여기서 진행하면 됨
*/

/*
cskill list
   1 : swing1
   2 : swing2
   3 : swing3
   4 : air swing 
   5 : upper swing
   6 : dash
   7 : hit
*/

if (keyboard_check_pressed(ord("L"))) {
   lighton += 1
   switch (lighton) {
      case 1:
         instance_create_depth(0,0,-100,obj_flash)
      break
      case 2:
         lighton = 0
      break
}   }


// 커멘드 관련 부분
if(canmove = 1){
   if (keyboard_check_pressed(vk_anykey)) {
   
      if(keyboard_check_pressed(vk_left)){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 0
         cdelay = 10
      }
      if(keyboard_check_pressed(vk_right)){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 1
         cdelay = 10
      }
      if(keyboard_check_pressed(vk_up)){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 2
         cdelay = 10
      }
      if(keyboard_check_pressed(vk_down)){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 3
         cdelay = 10
      }
      if(keyboard_check_pressed(vk_space)){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 4
         cdelay = 10
      }
      if(keyboard_check_pressed(ord("A"))){
         command[3] = command[2]
         command[2] = command[1]
         command[1] = command[0]
         command[0] = 5
         cdelay = 10
      }
   }
   if(cdelay = 0){
      command[0] = -1
      command[1] = -1
      command[2] = -1
      command[3] = -1
   }

// 스킬 사용 부분
   if(keyboard_check_pressed(ord("A"))){
   
      if(command[1] = 2 && djump > 0){ //커맨드 후 점프 할 수 있게 해줌
         commanded = 2 //upper swing
         djump = 0
      }
   
      else if((place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))){
         if((sprite_index = spr_player_skill_swing1)||(sprite_index = spr_player_skill_swing2)){
            commanded = 1
         }
         else if(ctime = 0){
            cskill = 1
            ctime = swing1time //swing1 motion time
         }
      }
   
      else if(ctime = 0){
         cskill = 4
         ctime = airswtime //air swing motion time
      }
      command[0] = -1
      command[1] = -1
      command[2] = -1
      command[3] = -1
   }
   else if((place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))&&((command[1] = 0 && command[0] = 0)||(command[1] = 1 && command[0] = 1))){
      if(command[1] = 1){cdir = 1}
      else{cdir = -1}
      commanded = 3
      command[0] = -1
      command[1] = -1
      command[2] = -1
      command[3] = -1
   }

   if(ctime = 0){
      if((place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))){
         if(commanded = 1){
            if(sprite_index = spr_player_skill_swing1){
               cskill = 2
               ctime = swing2time //swing2 motion time
            }
            else if(sprite_index = spr_player_skill_swing2){
               cskill = 3
               ctime = swing3time //swing3 motion time
            }
         }
         else if (commanded = 3){
            ctime = lungetime //lunge motion time
            cskill = 6
         }
      }
      if (commanded = 2){
         ctime = uppertime //upper motion time
         cskill = 5
      }
      commanded = 0
   }
   //스킬 사용할 때 움직임 부분 , 아직 움직임은 구현 안함 

   //skill on
   if(ctime != 0){
      if(cskill = 1){
         hspeed -= sign(hspeed)
         if(ctime = swing1time){
            if(keyboard_check(vk_right)){
               image_xscale = 1
               hspeed = 7
            }
            else if(keyboard_check(vk_left)){
               image_xscale = -1
               hspeed = -7
            }
            else{
               hspeed = 0
            }
         }
      }
      else if(cskill = 2){
         hspeed -= sign(hspeed)
         if(ctime = swing2time){
            if(keyboard_check(vk_right)){
               image_xscale = 1
               hspeed = 7
            }
            else if(keyboard_check(vk_left)){
               image_xscale = -1
               hspeed = -7
            }
            else{
               hspeed = 0
            }
         }
      }
      else if(cskill = 3){
         hspeed -= sign(hspeed)
         if(ctime = swing3time){
            if(keyboard_check(vk_right)){
               image_xscale = 1
               hspeed = 7
            }
            else if(keyboard_check(vk_left)){
               image_xscale = -1
               hspeed = -7
            }
            else{
               hspeed = 0
            }
         }
      }
      else if(cskill = 4){
         if((place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))) {
            sprite_index = spr_player_skill_seatswing
            hspeed = 0
         }
      }
      else if(cskill = 5){
         if(ctime = uppertime){
            if(keyboard_check(vk_right)){
               hspeed = 4
               image_xscale = 1
            }
            else if(keyboard_check(vk_left)){
               hspeed = -4
               image_xscale = -1
            }
            else{
               hspeed = 0
            }
            vspeed = -13
         }
      }
      else if(cskill = 6){
         if(ctime < 3){
            hspeed -= sign(hspeed)*min(5,abs(hspeed))
         }
         if(ctime = lungetime){
            hspeed = cdir*8
            image_xscale = cdir
         }
      }
   }
}
if (place_meeting(x,y,obj_enemy) && (cskill != 6 || ctime = 0) && mjtime = 0){
   image_alpha = 0.5
   hspeed = -4*image_xscale
   vspeed = -3
   ctime = 0
   cskill = 0
   sttime = hittime
   canmove = 0
   mjtime = hittime + 10
   obj_status.HP -= 1
}
if(canmove = 0){
   sttime = max(sttime - 1,0)
   if(sttime = 0){
      canmove = 1
   }
}
mjtime = max(mjtime - 1, 0)
if(mjtime = 0){
   image_alpha = 1
}
   //이미지 바꾸는 부분 
if(ctime = 0){
   if (keyboard_check(vk_left) && canmove = 1) {
      if(canmove = 1){
         image_xscale = -1
      }
      //light on off
      if (instance_exists(obj_flash)) {
         sprite_index = spr_player_walk_light
      }
      else {
         sprite_index = spr_player_walk
      }
      image_speed = 0.25
   }
   else if (keyboard_check(vk_right) && canmove = 1) {
      if(canmove = 1){
         image_xscale = 1
      }
      //light on off
      if (instance_exists(obj_flash)) {
         sprite_index = spr_player_walk_light
      }
      else {
         sprite_index = spr_player_walk
      }
      image_speed = 0.25
   }
   else {
      //light on off
      if (instance_exists(obj_flash)) {
         sprite_index = spr_player_stop_light
      }
      else {
         sprite_index = spr_player_stop
      }
      image_speed = 0.03
   }
   if (keyboard_check(vk_down) && (place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))) {
      sprite_index = spr_player_seat
   }
   if!((place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))){
      if (vspeed > 4){
         sprite_index = spr_player_jump_down
      }
      else if (vspeed < -2){
         sprite_index = spr_player_jump_up
      }
      else{
         sprite_index = spr_player_jump_stop
      }
      image_speed = 0.3
   }
}
else{
   switch (cskill) {
      case 1:
         if(ctime = swing1time){
            sprite_index = spr_player_skill_swing1
            image_index = 0
            image_speed = 0.25
            instance_create_depth(x+50*image_xscale,y,-1,obj_attack)
         }
      break
      case 2:
         if(ctime = swing2time){
            sprite_index = spr_player_skill_swing2
            image_index = 0
            image_speed = 0.25
         }
      break
      case 3:
         if(ctime = swing2time){
            sprite_index = spr_player_skill_swing3
            image_index = 0
            image_speed = 0.25
         }
      break
      case 4:
         if(ctime = airswtime){ //air swing animation time
            sprite_index = spr_player_skill_airswing
            image_index = 0
            image_speed = 0.25
         }
      break
      case 5:
         if(ctime = uppertime){
            sprite_index = spr_player_skill_upperswing
            image_index = 0
            image_speed = 0.15
         }
      break
      case 6:
         if(ctime = lungetime){
            sprite_index = spr_player_skill_lunge
            image_index = 0
            image_speed = 0.25
         }
      break
   }
}

// 이동 부분
if(canmove = 1){
   if(ctime = 0){
      if (keyboard_check(vk_left)) {
         hspeed = -5
      }
      else if (keyboard_check(vk_right)) {
         hspeed = 5
      }
      else {
         hspeed = 0
      }
      
      if (keyboard_check(vk_down) && (place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform)))) {
         hspeed = 0
      }
   
      if(place_meeting(x,y+2,obj_block) || (place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform))){
         djump = 1 //double jump 횟수
         jdelay = 6
      }
      if(jdelay > 0){
         jdelay = max(0,jdelay-1)
         if (keyboard_check_pressed(vk_space)) {
            vspeed = -13
            jdelay = 0
            if((place_meeting(x,y+2,obj_platform)&&!place_meeting(x,y,obj_platform))&&keyboard_check(vk_down)&&(!place_meeting(x,y+2,obj_block))){
               vspeed = 2
               y += 2
            }
         }
      }
      if (keyboard_check_released(vk_space)) {
         vspeed = vspeed/2
      }
   }
}
else{
   if(ctime = 0 && (place_meeting(x,y+2,obj_platform) || place_meeting(x,y+2,obj_block)) && vspeed >= 0){hspeed = 0}
}
if (!place_meeting(x,y,obj_block)) {
   if (place_meeting(x,y+vspeed,obj_block)) {
      b = instance_place(x,y+vspeed,obj_block)
      if (vspeed>=0) {
         y = b.y - 1
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale+ player_height
      }
      vspeed = 0
   }
   
   if (place_meeting(x+hspeed,y,obj_block)) {
      b = instance_place(x+hspeed,y,obj_block)
      if (hspeed>=0) {
         x = b.x - player_length
      }
      else {
         x = b.x + sprite_get_width(b.mask_index)*b.image_xscale + player_length
      }
      hspeed = 0
   }
   
   if (place_meeting(x+hspeed,y+vspeed,obj_block)) {
      b = instance_place(x+hspeed,y+vspeed,obj_block)
      if (vspeed>=0) {
         y = b.y - 1
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale + player_height
      }
      vspeed = 0
   }
   
}
if (!place_meeting(x,y,obj_platform)) {
   
   if (place_meeting(x,y+vspeed,obj_platform)&&vspeed > 0) {
      b = instance_place(x,y+vspeed,obj_platform)
      if (vspeed>=0) {
         y = b.y - 1
      }
      else {
         y = b.y + sprite_get_height(b.mask_index)*b.image_yscale + player_height
      }
      vspeed = 0
   }
}