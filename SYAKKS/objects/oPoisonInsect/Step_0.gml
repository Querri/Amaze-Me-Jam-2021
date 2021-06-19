/// @desc 

// Inherit the parent event
event_inherited();

if (didHit) {
	with (instance_create_layer(x, y, "Dust", oPoisonInsectSplash)) {
		speed = 0;
	}
}