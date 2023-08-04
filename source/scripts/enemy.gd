extends Area2D

var enemy_health:int = 40
var enemy_speed:int = 50
var player


func _ready():
	SignalBus.connect("damage_enemy", handle_damage_enemy)
	
	player = get_node("../player")
	
func _process(delta):
	position = position.move_toward(player.position,enemy_speed * delta)
	

func handle_damage_enemy(damage:int = 10):
	enemy_health = enemy_health - damage
	if enemy_health == 0:
		queue_free()
	print("handle_damage_enemy")
