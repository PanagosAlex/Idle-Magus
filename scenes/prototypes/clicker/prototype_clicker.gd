class_name PrototypeClicker
extends Control

@export var label : Label

var mana : int = 0

func _ready() -> void:
	update_label_text()

func create_mana() -> void:
	mana += 1
	update_label_text()

func update_label_text() -> void:
	label.text = "Mana : %s" %mana

func _on_button_pressed() -> void:
	create_mana()
