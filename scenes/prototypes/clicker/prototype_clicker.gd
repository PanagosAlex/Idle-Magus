class_name PrototypeClicker
extends Control
## A clicker prototype creating mana.

## Reference to the label displaying current amount of mana.
@export var label : Label
# Current amount of mana.
var mana : int = 0


## Initializer
func _ready() -> void:
	update_label_text()

## Create 1 mana.
func create_mana() -> void:
	mana += 1
	update_label_text()

## Update text of the label.
func update_label_text() -> void:
	label.text = "Mana : %s" %mana

## Triggered when clicking on mana orb
func _on_button_pressed() -> void:
	create_mana()
