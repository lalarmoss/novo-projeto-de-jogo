extends CharacterBody2D
var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	velocity += get_gravity()*delta
	if is_on_floor():
		$imagem.play("default")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$imagem.play("pular")
	move_and_slide()
