/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shake in frames


function ScreenShake(argument0, argument1){
	with (oCamera) {
		if (argument0 > shake_remain) {
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_lenght = argument1;
		}
	}
}