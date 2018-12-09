extends KinematicBody2D

var move_speed = 50

var target

# Called when the node enters the scene tree for the first time.
func _ready():
	target = get_parent().get_node("Player")
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = (target.get_global_position()-self.get_global_position()).normalized()
	
	var look_direction = target.get_global_position()
	
#	rotation += look_direction.angle()*0.2   #SPINNY WINNY
	
	
	#How do I implement smoothing for this part?
	look_at(look_direction)
	
	move_and_slide(direction*move_speed)