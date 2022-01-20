extends Spatial

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("full"):
		OS.set_window_fullscreen(!OS.window_fullscreen)
	
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
#	preload("res://addons/eco.fps.walker/basic_bot.tscn")
