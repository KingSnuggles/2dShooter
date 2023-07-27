extends Node2D

var bullet:PackedScene = preload("res://source/scenes/bullet.tscn")

func _ready():
	$player.connect("shootSignal", Callable(self, "playerShoot"))
	SignalBus.connect("bulletCollision", handle_bulletHit)
	
	
func playerShoot():
	spawnBullet()
	
func spawnBullet():
	var bulletInstance = bullet.instantiate()
	bulletInstance.global_transform.origin = $player.get_node("bulletSpawnMarker").global_transform.origin
	bulletInstance.rotation = $player.rotation
	
	$projectileContainer.add_child(bulletInstance)
	
func handle_bulletHit():
	print("handle_bulletHit")
