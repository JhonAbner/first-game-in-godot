extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_direita: RayCast2D = $RayCast_direita
@onready var ray_cast_esquerda: RayCast2D = $RayCast_esquerda
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	if ray_cast_direita.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_esquerda.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction* SPEED * delta/2
