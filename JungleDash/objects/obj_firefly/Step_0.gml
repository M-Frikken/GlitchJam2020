///@desc up and down balancing motion

var norm_Y = (startY - y) / 100 + 0.1;



var accel = norm_Y * norm_Y;

show_debug_message(norm_Y);

if (goingUp) {
	if (norm_Y > factor) {
		vspeed -= 1 / accel;
	}
	else {
		vspeed -= accel;
	}
}
else {
	if (norm_Y <= factor) {
		vspeed += accel;
	}	
	else {
		vspeed += 1 / accel;
	}
}

if (y <= startY) {
	goingUp = false;
}
else if (y >= endY) {
	goingUp = true;
}

//show_debug_message(y);