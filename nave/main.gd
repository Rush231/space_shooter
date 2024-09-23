extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	StartGame()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_menu_exit() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_menu_play() -> void:
	get_tree().paused = false
	$menu.visible = false
	Global.first_game = false
	pass # Replace with function body.

func StartGame():
	if Global.first_game:
		get_tree().paused = true
	else:
		_on_menu_play()
		pass
	pass
		


func _on_nave_hit() -> void:
	$menu.visible = true
	get_tree().paused = true
	pass # Replace with function body.

func _on_menu_play_again() -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
