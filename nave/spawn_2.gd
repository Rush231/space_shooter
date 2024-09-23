extends Marker2D
var pre_nave= preload("res://nave_enemiga1.tscn")
var cae = true

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if cae:
		var nave_enemig = pre_nave.instantiate()
		get_parent().add_child(nave_enemig)
		nave_enemig.global_position = global_position
		cae = false
		await get_tree().create_timer(1).timeout
		cae = true
		pass
	pass
