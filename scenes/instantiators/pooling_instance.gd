extends Node2D

@export var bullet_direction: Vector2
@export var bullet_speed: int

func _process(_delta) -> void:
	if Input.is_action_pressed("shoot"):
		var bullet = BulletPool.get_bullet()
		if bullet:
			bullet.velocity = bullet_direction * bullet_speed
			bullet.global_position = $Marker2D.global_position
			bullet.show()
			bullet.set_process(true)
			bullet.set_physics_process(true)
		else:
			pass
