extends RigidBody2D


func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	if Global.score == 30:
		get_tree().change_scene_to_file("res://animacion.tscn")
	pass
	# Add the gravity.


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	pass # Replace with function body.


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("laser"):
		Global.score += 3
		queue_free()
	pass # Replace with function body.
