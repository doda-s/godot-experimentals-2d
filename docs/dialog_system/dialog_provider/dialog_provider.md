# Dialog Provider

Responsible for providing context data for dialogs. This component receives a `.json` containing all the data for a dialog scope. Its responsibility is to read the `.json`, collect the data related to the defined context, and provide an object containing the data to the Dialog Handler. Therefore, **it is extremely important that a global script be configured, using the `DialogHandler` script**. Without it, the system will break.

To interact with the Dialog Provider, an object/class must initiate the dialog process using the `DialogProvider.init_dialog()` function.

An example of a `.json` file containing data from a dialog scope can be found in `docs/dialog_system/dialog_provider/dialog_demo.json`

## Utilization

To use this component, you must add it to a Node2D, and set that Node2D as a child of the object you want to contain the dialog. It is important that this object has an `InteractableComponent` as a child.

A demonstration of its use can be found in scene `scenes/worlds/dialog_sistem_demo.tscn`.