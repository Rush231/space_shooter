extends CharacterBody2D

const SPEED = 300.0
signal hit

func _physics_process(delta: float) -> void:
	Move()
	Shot()
	pass
	
func Move():	
	var direction = Input.get_axis("ui_left", "ui_right",)
	if direction:
		velocity.x= direction * SPEED
	else:
		velocity.x = 0
		
	move_and_slide()
	pass

var disparo = true
var pre_laser = preload("res://laser.tscn")

func Shot():
	if Input.is_action_just_pressed("action") and Shot:
		var laser = pre_laser.instantiate()
		get_parent().add_child(laser)
		laser.position.x = position.x
		laser.position.y = position.y -60
		disparo = false
		await get_tree().create_timer(0.5).timeout
		disparo = true
		pass
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("roca"):
		hit.emit()
		get_tree().paused = true
		queue_free()
	pass # Replace with function body.
