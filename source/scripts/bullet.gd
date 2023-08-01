extends Area2D

var speed = 750

func _ready():
	$".".body_entered.connect(handle_body_entered)
	$".".area_entered.connect(handle_body_entered)
	$projectileDespawnTimer.connect("timeout", Callable($".", "despawnBullet"))

func _physics_process(delta):
	position += transform.x * speed * delta

func handle_body_entered(_body):
	SignalBus.bulletCollision.emit()
	despawnBullet()

func despawnBullet():
	queue_free()
