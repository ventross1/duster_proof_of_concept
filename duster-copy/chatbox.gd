extends Control

func _on_line_edit_text_changed(new_text: String) -> void:
	Global.text_box = new_text
	#print(new_text)
	print(typeof(new_text))
