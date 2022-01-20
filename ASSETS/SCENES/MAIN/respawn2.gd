extends Area

var active = false

func _ready():
	connect("body_entered", self, '_on_respawn_body_entered')

func _on_respawn_area_entered(body):
	if body.name == 'player':
		print("joe")

