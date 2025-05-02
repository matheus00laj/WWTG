if instance_place(x, y, obj_player){
	x = obj_player.x;
	y = obj_player.y;
	if(keyboard_check(vk_right)){
		image_xscale = 0.7;
	}
	if(keyboard_check(vk_left)){
		image_xscale = -0.7;
	}

}