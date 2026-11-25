extends StaticBody2D

var health = 5
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	%statsbar/healthstats.text = "Health: " +str(health)
	%statsbar/score.text = "Score: " +str(score)
	if health <= 0:
		get_tree().change_scene_to_file("res://gameover.tscn")
