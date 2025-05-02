

//configurando movimentação


if keyboard{
	left	= keyboard_check(ord("A"));
	right	= keyboard_check(ord("D"));
	andar(left, right)
}
if gamepad{
	right_gamepad	 = gamepad_button_check(0, gp_padr) 
	left_gamepad	 = gamepad_button_check(0, gp_padl) 
	andar(left_gamepad, right_gamepad)
}
		

			
		
	


//configudando gravidade
if !place_meeting(x, y+2, obj_ground_collision){
	
	velv = velv+gravidade;
	
	quantidade_pulos = 1;
	
}else{
	
	velv = 0;
	
	//pulo
	if( keyboard_check(vk_space) or keyboard_check(vk_up)or gamepad_button_check_pressed(0, gp_face1)) and quantidade_pulos > 0 {
		velv = velv-4;
		quantidade_pulos = 0
		
	}
	quantidade_pulos = 1;
	
}




