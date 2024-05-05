extends Node2D

@export var read =false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").set_button_icon(load("res://blue.png"))
	if has_node("Line2D"):
		get_node("Line2D").points[1]=-position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().read==true:
		show()


func _on_button_button_down():
	get_node("Window").show()
	get_node("Button").set_button_icon(load("res://green.png"))


func _on_window_close_requested():
	get_node("Window").hide()
	get_node("Button").set_button_icon(load("res://white.png"))
	read =true
	
