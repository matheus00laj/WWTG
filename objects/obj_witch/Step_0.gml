//pegando inputs

up		= keyboard_check(vk_up);
down	= keyboard_check(vk_down);
right	= keyboard_check(vk_right);
left	= keyboard_check(vk_left);


velv	= (down - up) *vel;

velh	= (right - left) *vel;