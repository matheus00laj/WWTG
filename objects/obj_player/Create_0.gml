//variáveis de controle
gamepad = false;
keyboard = true;


//variaveis de movimentação - teclado
life			=		0;

up				=		noone;
down			=		noone;
left			=		noone;
right			=		noone;

up_gamepad		=		noone;
down_gamepad	=		noone;
left_gamepad	=		noone;
right_gamepad	=		noone;



//variaveis referentes à vassoura
broom	=		false;
shoots	=		0;


//variaveis referentes à dash/tp
tp		=		false;
tp_amount	=	0;


//variaveis de velocidade
velh	=		0;
velv	=		0;

velocidade =	2;

//variavel de gravidade
quantidade_pulos = 1;
gravidade =		0.2;



//função andar
function andar(left, right){
	if(left||right){
		velh = (right-left)*velocidade
	}else{
		velh=0;
	}
}