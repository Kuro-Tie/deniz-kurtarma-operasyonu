extends Control

@onready var skortablosu = $SkorLabel

func _ready():
	var mevcut_skor
	mevcut_skor = SkorVeBar.skor
	if mevcut_skor > SkorVeBar.en_yuksek_skor:
		SkorVeBar.en_yuksek_skor = mevcut_skor
	skortablosu.text = "En Yüksek Skor = " + str(SkorVeBar.en_yuksek_skor)
	


func _on_timer_timeout():
	SkorVeBar.skor = 0
	get_tree().change_scene_to_file("res://Sahneler/ana.tscn")
