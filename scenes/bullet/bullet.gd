extends CharacterBody2D

func _process(_delta) -> void:
	move_and_slide()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
