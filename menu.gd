extends CanvasLayer

var tower

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tower = get_parent().get_node("tower")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("togglemenu"):
		visible = !visible
		get_tree().paused = !get_tree().paused

func _on_buyhealth_pressed() -> void:
	if tower.score > 5:
		tower.health += 10
		tower.score -= 5
