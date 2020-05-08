extends RigidBody

export var impulse = 10
func _ready():
	pass # Replace with function body.

func _process(delta):
	var impulsePoint = self.get("translation")
	
	if Input.is_action_pressed("up"):
		apply_impulse(impulsePoint, Vector3(-impulse, 0, 0))
	if Input.is_action_pressed("down"):
		apply_impulse(impulsePoint, Vector3(impulse, 0, 0))
	if Input.is_action_pressed("left"):
		apply_impulse(impulsePoint, Vector3(0, 0, impulse))
	if Input.is_action_pressed("right"):
		apply_impulse(impulsePoint, Vector3(0, 0, -impulse))
