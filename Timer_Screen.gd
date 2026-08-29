extends Node2D
@onready var HatContainer: HBoxContainer = $HatContainer
@onready var Hat1: TextureRect = $HatContainer/Hat1
@onready var Hat2: TextureRect = $HatContainer/Hat2
@onready var Hat3: TextureRect = $HatContainer/Hat3
@onready var Hat4: TextureRect = $HatContainer/Hat4
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer
var time


func _ready() -> void:
		if Global.lives <= 0:
			get_tree().change_scene_to_file("res://lose_scene.tscn")
			return
		
		await Timer(5.0)
		if Global.minigames_done < 2: 
			Global.minigames_done = Global.minigames_done +1
			get_tree().change_scene_to_file("res://Scenes/minigame_" + str(Global.minigames_done) + ".tscn") 

		else:
				get_tree().change_scene_to_file("res://Done_Scene.tscn")

func _process(delta: float) -> void:
		match Global.lives:
			
			
				4:
					Hat1.hide()
				3:
					Hat1.hide()
					Hat2.hide()
				2:
					Hat1.hide()
					Hat2.hide()
					Hat3.hide()
				1:
					Hat1.hide()
					Hat2.hide()
					Hat3.hide()
					Hat4.hide()
				0:
					HatContainer.hide()
					
		timer.text = str(time) 
		level.text = "Level " + str(Global.minigames_done)
		
func Timer(start_time: float):
	
	time = start_time
	while time > 0.0:
			await wait(0.1)
			time -= 0.1
			
	return

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
