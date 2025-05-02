//ajeitando as colisões de objetos
var _colisaox= instance_place(x+velh, y, obj_ground_collision)
var _colisaoy= instance_place(x, y+velv, obj_ground_collision)


//para não atravessar a colisão das paredes
if(_colisaox){
	if (velh>0) x = _colisaox.bbox_left+(x-bbox_right);
	if(velh<0)	x = _colisaox.bbox_right+(x-bbox_left);
	velh = 0
}

	



if(_colisaoy){
	if (velv>0) x = _colisaoy.bbox_top + (x	- bbox_bottom);
	if(velv<0)	x = _colisaoy.bbox_bottom + (x - bbox_top);
	velv = 0
}




x +=	velh;
y +=	velv;