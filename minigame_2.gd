extends Node2D
@onready var themed_timer: Node2D = $Themed_Timer

var buttons_pressed :=0
var timer_end = false

func _ready() -> void:
		await themed_timer.Timer(0.3)
		timer_end = true
		
func _process(delta: float) -> void:
		if buttons_pressed == 4:
				get_tree().change_scene_to_file("res://level_scene.tscn")
				
		if timer_end:
			Global.lives -= 1
			Global.minigames_done -= 1
			get_tree().change_scene_to_file("res://level_scene.tscn")


func _on_button_1_pressed() -> void:
	buttons_pressed += 1
	$Button_1.hide()

func _on_button_2_pressed() -> void:
	buttons_pressed += 1
	$Button_2.hide()

func _on_button_3_pressed() -> void:
	buttons_pressed += 1
	$Button_3.hide()

func _on_button_4_pressed() -> void:
	buttons_pressed += 1
	$Button_4.hide()
