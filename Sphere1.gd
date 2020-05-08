extends RigidBody

export var impulse = 10
func _ready():
	pass # Replace with function body.

func _process(delta):
	var impulsePoint = self.get("translation")
	
	if Input.is_action_pressed("Up"):
		apply_impulse(impulsePoint, Vector3(-impulse, 0, 0))
	if Input.is_action_pressed("Down"):
		apply_impulse(impulsePoint, Vector3(impulse, 0, 0))
	if Input.is_action_pressed("Left"):
		apply_impulse(impulsePoint, Vector3(0, 0, impulse))
	if Input.is_action_pressed("Right"):
		apply_impulse(impulsePoint, Vector3(0, 0, -impulse))