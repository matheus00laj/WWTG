//ajeitando as colisões de objetos
var _colisaox= instance_place(x+velh, y, obj_ground_collision)
var _colisaoy= instance_place(x, y+velv, obj_ground_collision)
scr_colisao(_colisaoy, _colisaox)

x +=	velh;
y +=	velv;