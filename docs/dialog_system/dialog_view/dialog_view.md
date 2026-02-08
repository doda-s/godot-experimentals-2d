# Dialog View

This class is responsible for displaying dialogue content to the player in the HUD. Generally, this class can be assigned to any HUD element, as long as it contains:

- VBoxContainer - A container where buttons with selection options for the player will be added;
- RichTextLabel - The title of the dialogue, which can be the name of the entity or object to which the dialogue belongs;
- RichTextLabel - The dialogue content itself.

Você pode ver um exemplo de `DialogView` em `scenes/ui/dialog_view.tscn`.

**It's important to add this component to scenes that contain dialogue**, because without it, the `DialogHandler` will break, since it requires a `DialogView`.