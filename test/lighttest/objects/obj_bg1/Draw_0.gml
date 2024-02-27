xx = obj_camera.vx-obj_camera.kx/2
yy = obj_camera.vy-obj_camera.ky/2
draw_sprite_ext(spr_bg1,0,xx,yy,2,2,0,c_white,1)
draw_sprite_ext(spr_bg2,0,xx-(xx/10),yy-((yy-flr)/10),2,2,0,c_white,1)
draw_sprite_ext(spr_bg2,0,xx-(xx/10)+512,yy-((yy-flr)/10),2,2,0,c_white,1)
draw_sprite_ext(spr_bg3,0,xx-(xx/4),yy-((yy-flr)/4),2,2,0,c_white,1)
draw_sprite_ext(spr_bg3,0,xx-(xx/4)+512,yy-((yy-flr)/4),2,2,0,c_white,1)