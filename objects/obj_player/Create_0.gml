// Atributos base
spd = 2;

// Função de movimentação
function movimentacao () {
	// Teclas de movimento
	right = keyboard_check(ord("D"));
	left  = keyboard_check(ord("A"));
	up    = keyboard_check(ord("W"));
	down  = keyboard_check(ord("S"));

	// Descobrindo a direção que o player está indo,
	// somente se o player estiver apertando alguma tecla
	if (right xor left or up xor down) {

		// Verifica a direção no plano cartesiano (ângulo em graus)
		var dir = point_direction(0, 0, right-left, down-up);

		// Aplica a velocidade na direção encontrada
		velh = lengthdir_x(spd, dir);
		velv = lengthdir_y(spd, dir);

		// Mostra a direção no console
		show_debug_message(dir);
	} 
	// Se não estiver apertando nada, não se move 
	else {
		velh = 0;
		velv = 0;
	}

	// Adicionando velocidade aos eixos x e y
	x+=velh
	y+=velv

	// xor retorna true somente se **um** for verdadeiro.
	// Se os dois forem true, retorna false.
}