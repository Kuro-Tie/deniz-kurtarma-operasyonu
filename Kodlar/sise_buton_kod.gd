extends TextureButton

func _ready():
	# Şişeye tıklandığında (veya mobilde dokunulduğunda) çalışacak sinyal
	pressed.connect(_on_sise_basildi)

func _on_sise_basildi():
	# Puan ekleme kodun (Örn: Global.puan += 10)
	queue_free() # Şişeyi yok et
