extends Camera2D

var minzoom =0.1
var maxzoom =2
var zoomspeed =0.1
var dragsen =1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		position -= event.relative * dragsen/zoom
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_WHEEL_DOWN):
			zoom -= Vector2(zoomspeed,zoomspeed)
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_WHEEL_UP):
			zoom += Vector2(zoomspeed,zoomspeed)
		zoom =clamp(zoom, Vector2(minzoom,minzoom), Vector2(maxzoom,maxzoom))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
