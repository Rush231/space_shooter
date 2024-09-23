extends Node2D
signal Play
signal Play_again
signal Exit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.first_game:
		$TextureRect/TextureRect2/Play_again.visible = false
		$TextureRect/TextureRect2/Play_again.disabled = true
		$TextureRect/TextureRect2/Play.visible = true
		$TextureRect/TextureRect2/Play.disabled= false
	else:
		$TextureRect/TextureRect2/Play_again.visible = true
		$TextureRect/TextureRect2/Play_again.disabled = false
		$TextureRect/TextureRect2/Play.visible = false
		$TextureRect/TextureRect2/Play.disabled= true		
		pass


func _on_play_pressed() -> void:
	emit_signal("Play")
	$TextureRect/TextureRect2/Play/Audioplay.play()
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	$TextureRect/TextureRect2/Exit/AudioExit.play()
	emit_signal("Exit")
	pass # Replace with function body.




func _on_play_again_pressed() -> void:
	emit_signal("Play_again")
	pass # Replace with function body.
