/// @desc inclrease picked items by one

with(oPlayer) {
	if (hp < hpMax) {
		hp++;
		instance_destroy(other);
	}
}
