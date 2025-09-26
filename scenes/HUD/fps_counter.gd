extends Control

@onready var _fps_label: Label = $VBoxContainer/FPSLabel
@onready var _bc_label: Label = $VBoxContainer/BulletCountLabel


func _process(_delta) -> void:
	_fps_label.text = str(Engine.get_frames_per_second())
	_bc_label.text = str(get_tree().get_nodes_in_group("bullets").size())
