//mudando sprite
scr_change_sprite_horizontal(1, spr_idle_witch, spr_walking_witch)



//Função andar
scr_andar()



//criando a gravidade
scr_gravidade(obj_ground_collision)

if keyboard_check(vk_space) scr_atirar(obj_player, obj_bullet)





