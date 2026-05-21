extends CanvasLayer 

@export var sise_sahnesi: PackedScene = preload("res://Sahneler/sise.tscn")

# Script zaten CanvasLayer'a bağlı olduğu için doğrudan altındaki düğümlere ulaşabiliriz:
@onready var sise_izgarasi = $Ekran/BoslukVermeKonteynir/DikeyKonteynir/SiseIzgarasi
@onready var olusturucu_timer = $OlusturucuZaman
@onready var kirlilikbar = $Ekran/KirlilikBar
@onready var Skor = $Ekran/Skor
func _ready():
	olusturucu_timer.timeout.connect(_on_spawn_timer_timeout)
	kirlilikbar.value = 100


func _process(_delta):
	Skor.text = "Denizleri Kurtarma Skoru = " + str(SkorVeBar.skor)
	kirlilikbar.value = SkorVeBar.yuzde
func _on_spawn_timer_timeout():
	var tum_yuvalar = sise_izgarasi.get_children()
	var bos_yuvalar = []
	
	# Hangi arayüz yuvaları boş?
	for yuva in tum_yuvalar:
		if yuva.get_child_count() == 0:
			bos_yuvalar.append(yuva)
		
	
	# Boş yuva varsa rastgele birine şişe butonunu yerleştir
	if bos_yuvalar.size() > 0:
		var secilen_yuva = bos_yuvalar[randi() % bos_yuvalar.size()]
		var yeni_sise = sise_sahnesi.instantiate()
		
		# Control düğümlerinde şişenin yuvaya tam ortalanması için:
		
		
		secilen_yuva.add_child(yeni_sise)
	SkorVeBar.yuzde += 1
	

	
	
