extends Node2D
@export var cena_obstaculo = preload ("res://prefabs/obstaculo.tscn")

var timer = 0.0
func _process(delta: float) -> void:
	timer += delta

if timer >= 2.0:
	timer = 0.0
	nó.instantiate(
