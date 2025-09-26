extends Node2D

@export var _trigger_quantity: int = 8
@export var _trigger_distance: int = 144

@onready var _trigger_scene: PackedScene = preload("res://scenes/instantiators/pooling_instance.tscn")

func _ready() -> void:
	var spawn_coord: Vector2 = Vector2(0, 648)
	
	for trigger in range(_trigger_quantity):
		var _trigger_instance := _trigger_scene.instantiate()
		_trigger_instance.global_position = spawn_coord
		$InstancingContainer.add_child(_trigger_instance)
		spawn_coord.x = spawn_coord.x + _trigger_distance
