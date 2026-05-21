extends TextureButton


func _ready():
	# Şişeye tıklandığında (veya mobilde dokunulduğunda) çalışacak sinyal
	pressed.connect(_on_sise_basildi)

func _on_sise_basildi():
	SkorVeBar.skor += 10
	SkorVeBar.yuzde -= 1
	queue_free() # Şişeleri yok et
