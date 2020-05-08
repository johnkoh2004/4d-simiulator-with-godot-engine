extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var impulsePoint = Vector2(0.0, $CollisionShape2D.get_shape().extents.y/2)
	
	if Input.is_action_pressed("up"):
		apply_impulse(impulsePoint, Vector2(0, -10))
	if Input.is_action_pressed("down"):
		apply_impulse(impulsePoint, Vector2(0, 10))
	if Input.is_action_pressed("left"):
		apply_impulse(impulsePoint, Vector2(-10, 0))
	if Input.is_action_pressed("right"):
		apply_impulse(impulsePoint, Vector2(10, 0))

	
func _on_RigidBody2D_body_entered(body):
	print("Collision with" + body.get_name())
