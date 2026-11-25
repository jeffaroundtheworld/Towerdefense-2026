extends Area2D

var movespeed = 5
var tower

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tower = get_parent().get_parent().get_node("tower")

# Move the Baddie
func _process(delta: float) -> void:
	position.x = position.x + movespeed

#Check if baddie has been clicked on
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	#use if event rather than if Input to avoid double counting mouse click
	if event.is_action_pressed("kill"):
		tower.score += 1
		queue_free()
		
#check if baddie hit a Physics Body
func _on_body_entered(body: Node2D) -> void:
	body.health -= 1
	queue_free()
