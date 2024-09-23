extends Marker2D
var pre_roca= preload("res://roca.tscn")
var cae = true

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if cae:
		var roca =pre_roca.instantiate()
		get_parent().add_child(roca)
		roca.global_position = global_position
		cae = false
		await get_tree().create_timer(1).timeout
		cae = true
		pass
	pass
