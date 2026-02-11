extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var spawn_position : Vector2i

#Called when the object is fully created and ready to go
func _ready() -> void:
	spawn_position = self.global_position

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("revive"):
		#self.get_tree().reload_current_scene()
		self.global_position =  spawn_position

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
