extends Sprite

func change_texture(screaming_mode):
	if(screaming_mode == 1):
		self.texture = load("res://Assets/Sprites/l0_sprite_2.png")
	else:
		self.texture = load("res://Assets/Sprites/l0_sprite_1.png")
		
		
# all pigeons are your life. if one of them goes, your life points reduce