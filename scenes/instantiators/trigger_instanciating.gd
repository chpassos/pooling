extends Node2D

@export var bullet_direction: Vector2
@export var bullet_speed: int

@onready var _bullet_scene: PackedScene = preload("res://scenes/bullet/bullet.tscn")

func _process(_delta) -> void:
	_instantiate_bullet()

func _instantiate_bullet() -> void:
	if Input.is_action_pressed("shoot"):
		var _bullet_instance := _bullet_scene.instantiate()
		_bullet_instance.velocity = bullet_direction * bullet_speed
		add_child(_bullet_instance)
