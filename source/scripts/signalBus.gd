extends Node


func _ready():
	print("signalbus")

signal bulletCollision(body, bullet_damage)

signal damage_enemy(bullet_damage)
