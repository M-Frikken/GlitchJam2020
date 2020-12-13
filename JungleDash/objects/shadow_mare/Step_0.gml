
if (moving_back) {
	if (x - 0.1 >= startX - 100) x -= 0.1;
}
else {
	if (x + 0.3 <= startX) x += 0.3;
	else moving_back = true;
}