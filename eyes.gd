extends Area2D
var speed = 200

const POWERUP = preload("res://health_up.tscn")
const EXPLOSION = preload("res://explosion.tscn")
func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
	position.y += sin(position.x * delta) 


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Projectile"):
		area.queue_free()
		explode()
		
func explode():		
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		add_sibling(explosion)
		queue_free()
		if randi_range(0,5)== 0:
			var powerup = POWERUP.instantiate()
			powerup.global_position = global_position
			add_sibling(powerup)
			
