extends Control



func _oyuna_gonder():
	get_tree().change_scene_to_file("res://Sahneler/ana.tscn")



func _on_tam_ekran_pressed():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		# Eğer zaten tam ekransa, normal pencere moduna geri dön
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	else:
		# Eğer pencere modundaysa, TAM EKRAN yap!
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _on_nasil_oynanir_pressed():
	get_tree().change_scene_to_file("res://Sahneler/nasil_oynanir.tscn")


func _on_zorlastir_pressed():
	SkorVeBar.zorlastir = true
	SkorVeBar.hizli_Zor = 0.1
	
