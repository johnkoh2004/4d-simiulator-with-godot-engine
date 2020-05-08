extends Area

onready var plane = $CollisionShape
onready var r = 5

func _ready():
	pass # Replace with function body.


func _on_HSlider_value_changed(value):
	plane.set("translation", Vector3(0, 0, -value))

func _on_3D_Plane_body_shape_entered(body_id, body, body_shape, area_shape):
	var d = Sphere1.get("translation")-self.get("translation")
	print($CollisionShape.global_transform.origin)
	print(Sphere1.global_transform.origin)
	print("printed")

func _on_3D_Plane_body_shape_exited(body_id, body, body_shape, area_shape):
	r = 0