sprite_index = spr_nothing

suflt[0] = surface_create(view_get_wport(0),view_get_hport(0))
suflt[1] = surface_create(view_get_wport(0),view_get_hport(0))
suflt[2] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[0] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[1] = surface_create(view_get_wport(0),view_get_hport(0))
sufdk[2] = surface_create(view_get_wport(0),view_get_hport(0))
depth = obj_player.depth +1
viewsc = 2
lthingo[0] = obj_bulb //빛을 내는 obj
lthings[0] = spr_bulblight //빛 궤적 spr
lthingo[1] = obj_flash //빛을 내는 obj
lthings[1] = spr_flash //빛 궤적 spr
lthingo[2] = obj_bulb_back
lthings[2] = spr_bulblight

dthing[0] = obj_btile //빛의 영향을 받는 obj
dthing[1] = obj_block //빛의 영향을 받는 obj


lnum = array_length_1d(lthingo) //lthingo number
dnum = array_length_1d(dthing) //dthing number