extends RigidBody2D
var pre_menu = preload("res://main.gd")
var lvl2 ="res://nivel_2.tscn"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.score == 10:
		get_tree().change_scene_to_file("res://animacion.tscn")
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	pass # Replace with function body.




func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("laser"):
		Global.score += 2
		queue_free()
	pass # Replace with function body.


func _on_area_2d_2_area_entered(area: Area2D) -> void:
	if area.is_in_group("nave"):
		get_tree().paused = true
		queue_free()
	pass # Replace with function body.
