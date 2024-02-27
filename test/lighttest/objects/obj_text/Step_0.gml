x1 = lerp(x1Start,x1Target,xp)
x2 = lerp(x2Start,x2Target,xp)
y1 = lerp(y1Start,y1Target,yp)
y2 = lerp(y2Start,y2Target,yp)

if(txtnum > 0){
	tt = 1
	if(instance_exists(obj_player)){
		obj_player.canmove = 0
		obj_player.sttime = 2
	}
	xp = min(xp-(xp-1.1)/5,1)
	if(xp = 1){
		yp = min(yp-(yp-1.1)/5,1)
	}
	if(yp = 1){
		if(keyboard_check_pressed(vk_enter)){
			if(txtp = string_length(txt[0])){
				txtnum = max(0,txtnum-1)
				for(i = 0; i < txtnum; i += 1){
					txt[i] = txt[i+1]
					txtsort[i] = txtsort[i+1]
				}
				txtp = 0
				textSpeed = 0.75
			}
			else{
				textSpeed = 3
			}
		}
		str = string_copy(txt[0],1,txtp)
		lend = (txtsort[0]!=1) ? 0 : 200
		rend = (txtsort[0]!=2) ? 0 : 200
		surface_set_target(suf)
		draw_clear_alpha(c_black,0)
		draw_set_font(fText);
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_color(c_white)
		draw_text_ext(30+lend,0,str,35, 1024-60-rend-lend)
		surface_reset_target()
		h = string_height_ext(str,35, 1024-60-rend-lend)
		if(txtp < string_length(txt[0])){
			scroll = max(0,h-140)
		}
		else{
			if(mouse_wheel_up()){
				scroll = max(0,scroll-10)
			}
			else{
				if(mouse_wheel_down()){
					scroll = min(max(h-140,0),scroll+10)
				}
			}
		}
		txtp = min(string_length(txt[0]),txtp+textSpeed)
	}
	
}
else{
	if(instance_exists(obj_player) && tt = 1){
		obj_player.canmove = 1
		tt = 0
	}
	yp = max(yp-(yp+0.1)/5,0)
	if(yp = 0){
		xp = max(xp-(xp+0.1)/5,0)
	}
}