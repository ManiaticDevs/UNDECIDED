extends Spatial

func _process(delta):
	if Input.is_action_just_pressed("full"):
		OS.set_window_fullscreen(!OS.window_fullscreen)
	
	if $untitled/AudioStreamPlayer.playing == false:
		$untitled/AudioStreamPlayer.play()


