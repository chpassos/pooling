extends Node2D

@export var pool_size: int = 500
var pool: Array = []
@onready var bullet_scene: PackedScene = preload("res://scenes/bullet/bullet_in_pool.tscn")

func _ready() -> void:
	for i in range(pool_size):
		var bullet = bullet_scene.instantiate()
		bullet.hide()
		bullet.set_process(false)
		bullet.set_physics_process(false)
		add_child(bullet)
		pool.append(bullet)

func get_bullet():
	for bullet in pool:
		if not bullet.is_visible():
			return bullet
	
	if pool.size() < 2000:
		var new_bullet = bullet_scene.instantiate()
		new_bullet.hide()
		new_bullet.set_process(false)
		new_bullet.set_physics_process(false)
		add_child(new_bullet)
		pool.append(new_bullet)
		return new_bullet
	
	return null
	
	
	#for bullet in BulletPool.pool:
		#if not bullet.is_visible():
			#var new_bullet = bullet_scene.instantiate()
			#new_bullet.hide()
			#new_bullet.set_process(false)
			#new_bullet.set_physics_process(false)
			#add_child(new_bullet)
			#pool.append(new_bullet)
			#return new_bullet
	#
	#var bullet = pool.pop_back()
	#print(pool.size())
	#return bullet
	
	
