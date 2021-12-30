extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/PLAY.grab_focus()
	$AudioStreamPlayer.play()

func _process(delta):
	if Input.is_action_just_pressed("full"):
		OS.set_window_fullscreen(!OS.window_fullscreen)
	
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()






func _on_QUIT_pressed():
	get_tree().quit()


func _on_PLAY_pressed():
	get_tree().change_scene("res://ASSETS/SCENES/MAIN/MAIN.tscn")
	print("changed bitch")
