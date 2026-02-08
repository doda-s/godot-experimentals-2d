extends Node2D
class_name DialogProvider

@export_file("*.json") var dialog_json_file: String
@export var context = ""

var _dialog_scoop = {}
var _interactable_component: InteractableComponent

func _ready() -> void:
	_dialog_scoop = {}
	_interactable_component = get_parent().get_node("InteractableComponent")
	if _interactable_component != null and not _interactable_component.interaction_emitter.is_connected(init_dialog):
		print_debug("Interactable component found.")
		_interactable_component.interaction_emitter.connect(init_dialog)
	else:
		init_dialog()

# Initiates a dialog context for a scoped file.
func init_dialog() -> void:
	_dialog_scoop = _load_dialog_json()
	for ctx in _dialog_scoop.Context:
		if ctx.Name == context:
			DialogHandler.init_dialog(ctx)

# Responsible for serializing a JSON file into an object containing the dialog context data.
func _load_dialog_json():
	if not FileAccess.file_exists(dialog_json_file):
		print_debug("Dialog file not exist.")
		return
	var dialog_obj = JSON.parse_string(FileAccess.open(dialog_json_file, FileAccess.READ).get_as_text())
	return dialog_obj
