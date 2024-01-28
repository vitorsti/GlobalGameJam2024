extends Area3D

var myHealth = HealthManager.new()
var timer: float = 0.0
@export var risometro_path: NodePath
var risometro
var healthRegenCooldown: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	print(name)
	risometro = get_node(risometro_path)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	CoolDown()
	if risometro == null: return
	risometro.rotation_degrees.z = -myHealth.health
	
func _on_area_entered(area):
	pass

func getHealth() -> HealthManager:
	return myHealth
	
func setCoolDown(value:bool):
	healthRegenCooldown = value

func CoolDown():
	if healthRegenCooldown:
		timer+=0.1
		if timer>=2.0:
			timer=0.0
			if myHealth.health <= 0 || myHealth.health >= myHealth.maxHealth:
				healthRegenCooldown = false
			myHealth.RemoveHealth(3)
			
			
