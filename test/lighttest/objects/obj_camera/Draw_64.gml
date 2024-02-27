draw_surface_ext(suf1,kx,ky,viewsc,viewsc,0,c_white,1)
gpu_set_blendmode_ext(bm_one,bm_one)

draw_surface_ext(suflt[0],kx,ky,viewsc,viewsc,0,make_color_rgb(255,0,0),1)
draw_surface_ext(suflt[1],kx,ky,viewsc,viewsc,0,make_color_rgb(0,255,0),1)
draw_surface_ext(suflt[2],kx,ky,viewsc,viewsc,0,make_color_rgb(0,0,255),1)
gpu_set_blendmode(bm_normal)

if(global.k = 1){
	draw_surface_ext(suf2,kx,ky,viewsc,viewsc,0,c_white,1)
}
draw_set_color(c_black)
//draw_rectangle(0,0,1024,384*squarsize/30,0)
//draw_rectangle(0,768-384*squarsize/30,1024,768,0)
draw_set_alpha(squarsize/9)
draw_rectangle(0,0,1024,768,0)
draw_set_alpha(1)