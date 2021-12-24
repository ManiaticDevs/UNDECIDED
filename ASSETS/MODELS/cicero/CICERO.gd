extends Area

var active = false

func _ready():
	connect("body_entered", self, '_on_CICERO_body_entered')
	connect("body_exited", self, '_on_CICERO_body_exited')

func _process(delta):
	$Control/Label.visible = active

func _input(event):
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed('ui_accept') and active:
			get_tree().paused = true
			var dialog = Dialogic.start('CICERO')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end', self, 'unpause')
			add_child(dialog)

func unpause(timeline_end):
	get_tree().paused = false

func _on_CICERO_body_entered(body):
		if body.name == 'PLAYER':
			active = true

func _on_CICERO_body_exited(body):
	if body.name == 'PLAYER':
		active = false
