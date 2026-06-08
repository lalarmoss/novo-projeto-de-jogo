extends Node2D

@export var velocidade: int
var timer = 0.0
var fim = false

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:

	# constantemente desloca o sprite pra esquerda
	$Fundo.position.x -= velocidade * delta * 0.05
	$Fundo2.position.x -= velocidade * delta*0.05

	if $Fundo.position.x < -1152: # se o fundo sair de cena pela esquerda
		$Fundo.position.x = 1152 # coloque ele após a cena na direita

	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152

	$Chao.position.x -= velocidade * delta *2 
	$Chao2.position.x -= velocidade * delta*2

	if $Chao.position.x < -1152: 
		$Chao.position.x = 1152 

	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
		
	$meioazul.position.x -= velocidade * delta * 0.05
	$meioazul2.position.x -= velocidade * delta * 0.05
	
	
	if$meioazul .position.x < -1152: 
		$meioazul.position.x = 1152 
	
	if $meioazul2.position.x < -1152:
		$meioazul2.position.x = 1152 
		
	if$meiopreto .position.x < -1152: 
		$meiopreto.position.x = 1152 
		
	if$meiopreto2 .position.x < -1152: 
		$meiopreto2.position.x = 1152 
		
	$meiopreto.position.x -= velocidade * delta * 0.03
	$meiopreto2.position.x -= velocidade * delta * 0.03
	
	$Tempo.label_settings = $Tempo.label_settings.duplicate()
	if not fim:
		timer += delta
		$Tempo.text = "Tempo: " + str(int(timer))
