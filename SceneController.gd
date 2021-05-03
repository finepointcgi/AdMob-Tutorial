extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Reward = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$AdMob.load_rewarded_video()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Banner_Ad_button_down():
	$AdMob.load_banner()
	$AdMob.show_banner()
	pass # Replace with function body.


func _on_Reward_Video_button_down():
	$AdMob.hide_banner()
	$AdMob.show_rewarded_video()
	pass # Replace with function body.


func _on_AdMob_rewarded(currency, ammount):
	Reward += 1
	$RichTextLabel2.text = str(Reward)
	pass # Replace with function body.
