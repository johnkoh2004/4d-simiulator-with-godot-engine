extends HSlider

onready var slider = get_node(".")
onready var dimension = 0

func _ready():
	slider.set_value(dimension)
	

func _on_HSlider_value_changed(value):
	dimension = value
	print("value changed to" + str(dimension))