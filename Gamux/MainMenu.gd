extends Control

#var howToPlayScreen = null
# Called when the node enters the scene tree for the first time.
func _ready():
	$HowToPlayScreen.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	print("Game Start")
	get_tree().change_scene_to_file("res://FirstScene.tscn")
	pass # Replace with function body.

func _on_tutorial_button_pressed():
	#var howToPlayScreen = load("res://how_to_play.tscn").instance()
	#get_tree().current_scene.add_child(howToPlayScreen)
	$Main.hide()
	$HowToPlayScreen.show()
	print("Tutorial")
	pass # Replace with function body.

func _on_quit_button_pressed():
	print("Quit")
	get_tree().quit()
	pass # Replace with function body.

func _on_back_pressed():
	$HowToPlayScreen.hide()
	$Main.show()
	pass # Replace 
