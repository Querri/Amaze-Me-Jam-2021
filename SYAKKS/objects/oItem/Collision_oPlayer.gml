/// @desc inclrease picked items by one

with(oPlayer) {
	itemsCollected++;
	instance_destroy(other);
}
