extends Area

var active = false

func _ready():
	connect("body_entered", self, '_on_PLAYER_body_entered')

func _on_respawn_area_entered(area):
	if area.name == 'player':
		print("joe")

