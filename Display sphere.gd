extends RigidBody

onready var collision_shape = $CollisionShape
onready var shape = $MeshInstance

onready var dimension = Global.dimension
export var r = 5

func _ready():
	pass # Replace with function body.

func _on_HSlider_value_changed():
	collision_shape.shape.set("radius", r)
	shape.mesh.set("radius", r)
	shape.mesh.set("height", 2*r)
