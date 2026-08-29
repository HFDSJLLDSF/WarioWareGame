extends Node2D
@onready var themed_timer: Node2D = $Themed_Timer

# Called when the node enters the scene tree for the first time.
var hat_collected = 0
var timer_end = false


func _ready() -> void:
		
		await themed_timer.Timer(0.7)
		timer_end = true
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta: float) -> void:
		
		if hat_collected == 4:
			get_tree().change_scene_to_file("res://level_scene.tscn")
			

		if timer_end:
			Global.minigames_done -= 1
			Global.lives -= 1
			get_tree().change_scene_to_file("res://level_scene.tscn")


func _on_hat_1_hat_collected() -> void:
	hat_collected = hat_collected +1
	return

func _on_hat_2_hat_collected() -> void:
	hat_collected = hat_collected +1
	return

func _on_hat_3_hat_collected() -> void:
	hat_collected = hat_collected +1
	return

func _on_hat_4_hat_collected() -> void:
	hat_collected = hat_collected +1
