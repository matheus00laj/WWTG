//pegando inputs

up		= keyboard_check(vk_up);
down	= keyboard_check(vk_down);
right	= keyboard_check(vk_right);
left	= keyboard_check(vk_left);


//velh	= (right - left) *vel;

//movimentação direita/esquerda

if keyboard_check(vk_right) or gamepad_button_check(0, gp_padr){
	sprite_index = spr_walking_witch;
	velh = 2;
	image_xscale = 1;
	
	
	
}else if keyboard_check(vk_left)or gamepad_button_check(0, gp_padl){
	sprite_index = spr_walking_witch;
	velh = -2;
	image_xscale = -1;
	
}else
{
	sprite_index = spr_idle_witch;
	velh=0;
}



//gravidade


if(!place_meeting(x, y + 1, obj_ground)){
	
	velv = velv + grav;

	
}
else{
	velv = 0
	//pulo
	if keyboard_check(vk_space) or keyboard_check(vk_up) or gamepad_button_check_pressed(0, gp_face1){
		velv = -4;
		
	}

}

y +=velv;
x += velh