extends Area2D


func _ready():
	SignalBus.connect("damage_enemy", handle_damage_enemy)
	
func _process(_delta):
	pass
	
	
func handle_damage_enemy():
	print("handle_damage_enemy")
