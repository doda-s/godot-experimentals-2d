extends Node2D

@export var interactable_component: InteractableComponent
@export var dialog_provider: DialogProvider

func _ready() -> void:
	interactable_component = get_node("InteractableComponent") as InteractableComponent
	if interactable_component == null:
		push_error("Sign needs a InteractableComponent.")
	
	if not interactable_component.interaction_emitter.is_connected(_interact):
		interactable_component.interaction_emitter.connect(_interact)

func _interact():
	dialog_provider.init_dialog()
