extends Camera2D

var timer = 0
var max_mag
var mag

func _process(delta):
    if timer > 0: 
        set_offset(Vector2( rand_range(-1.0, 1.0) * mag, rand_range(-1.0, 1.0) * mag ))
        timer -= delta
        mag = timer * max_mag
    else:
        set_offset(Vector2())

# shake the camera for 'duration' amount of time, with specified 'magnitude'
# call this function to make it start shaking
func shake(duration, magnitude):
    max_mag = magnitude
    timer = duration
    mag = timer * magnitude