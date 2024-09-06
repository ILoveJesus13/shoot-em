extends Node2D

func _process(delta: float) -> void:
	translate(Vector2.LEFT * 30 * delta)


func _on_end_of_leval_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
