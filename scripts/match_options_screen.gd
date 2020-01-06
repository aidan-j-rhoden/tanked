extends Control

onready var enemies_button: Button = get_node("VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/EnemiesButton")
onready var difficulty_button: Button = get_node("VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/DifficultyButton")
onready var audio_move_start: AudioStreamPlayer = get_node("Audio_Move_Start")
onready var audio_move: AudioStreamPlayer = get_node("Audio_Move")

func _ready():
	enemies_button.grab_focus()
	difficulty_button.set_text("DIFFICULTY: %s" % game_data.difficulty_levels[game_data.difficulty_level])
	enemies_button.set_text("ENEMIES: %d" % game_data.no_of_enemies)
	audio_move.stop()

# Button Actions
func _on_EnemiesButton_pressed():
	game_data.set_no_of_enemies(game_data.no_of_enemies + 1)
	enemies_button.set_text("ENEMIES: %d" % game_data.no_of_enemies)
	audio_move.play()

func _on_DifficultyButton_pressed():
	game_data.set_difficulty(game_data.difficulty_level + 1)
	difficulty_button.set_text("DIFFICULTY: %s" % game_data.difficulty_levels[game_data.difficulty_level])
	audio_move.play()

func _on_ContinueButton_pressed():
	audio_move.play()
	get_tree().change_scene("res://screens/game_screen.tscn")

func _on_BackButton_pressed():
	audio_move.play()
	get_tree().change_scene("res://screens/main_menu.tscn")


# Button Sounds
func _on_EnemiesButton_focus_entered():
	audio_move.play()

func _on_DifficultyButton_focus_entered():
	audio_move.play()

func _on_ContinueButton_focus_entered():
	audio_move.play()

func _on_BackButton_focus_entered():
	audio_move.play()