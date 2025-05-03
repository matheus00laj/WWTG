//função de movimentação

function scr_andar(){
	left	= keyboard_check(ord("A")) or keyboard_check(vk_left);
	right	= keyboard_check(ord("D")) or keyboard_check(vk_right);
	
	if(left||right){
		velh = (right-left)*velocidade
	}else{
		velh=0;
	}
	
	
	
}



//função de configuração da colisão
function scr_colisao(colisaoy, colisaox){
	


	//para não atravessar a colisão das paredes
	if(colisaox){
		if (velh>0) x = colisaox.bbox_left+(x-bbox_right);
		if(velh<0)	x = colisaox.bbox_right+(x-bbox_left);
		velh = 0
	}

	



	if(colisaoy){
		if (velv>0) x = colisaoy.bbox_top + (x	- bbox_bottom);
		if(velv<0)	x = colisaoy.bbox_bottom + (x - bbox_top);
		velv = 0
	}



}

//função de criação da gravidade
function scr_gravidade(obj){
	if !place_meeting(x, y+2, obj){
	
		velv = velv+gravidade;
	
		quantidade_pulos = 1;
	
	}else{
	
		velv = 0;
	
		//pulo
		scr_pulo()
		quantidade_pulos = 1;
		
	
	}

}


//função de pulo
function scr_pulo(){
	var _pulo = keyboard_check(vk_space) or keyboard_check(vk_up) or keyboard_check(ord("W")) or gamepad_button_check_pressed(0, gp_face1)
	if _pulo and quantidade_pulos > 0 {
		velv = velv-4;
		quantidade_pulos = 0
		
	}

}


//função para mudar a orientação dos sprites quando andar
function scr_change_sprite_horizontal(scale, sprite_original, sprite_mudado){
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A")) //or (gamepad_axis_value(global.gamepad_main, gp_axislh) < 0.25) or gamepad_button_check(gamepad_main, gp_padl)
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D")) //or (gamepad_axis_value(global.gamepad_main, gp_axislh) > 0.25) or gamepad_button_check(gamepad_main, gp_padr)
	
	if _left
	{
		image_xscale = -scale
		sprite_index = sprite_mudado1
		
	}
	else if _right
	{
		image_xscale = scale	
		sprite_index = sprite_mudado1
		
			
	}else{
		sprite_index = sprite_original;
	}
	
	
	
}

