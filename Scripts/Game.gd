extends Node2D

func _process(delta):
	$Note.translate(Vector2(1, 0))
	if($Metaldude/MetaldudeSound.playing == false):
		$Metaldude.change_texture(0)

func _on_Button_pressed():
	$Camera.shake(1.0, 16)
	$Metaldude/MetaldudeSound.play()
	$Metaldude.change_texture(1)
