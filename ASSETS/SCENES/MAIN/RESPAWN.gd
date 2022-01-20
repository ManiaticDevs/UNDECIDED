extends Area

var active = false

func _ready():
	connect("body_entered", self, '_on_PLAYER_body_entered')

func _on_PLAYER_tree_entered(area):
	if area.name == 'respawn':
		print("joe")
