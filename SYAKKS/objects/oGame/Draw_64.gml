/// @desc 

var _playerHealth = oPlayer.hp;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= oPlayer.hpMax; i++) {
	draw_sprite(
		sIconHeart, 
		(i > _playerHealth) + ((i == _playerHealth + 1) && (_playerHealthFrac > 0)), 
		hudMarginX + ((i-1) * hudSeparation), 
		hudMarginY
	);
	
}


var _itemsCollected = oPlayer.itemsCollected;

for (var i = 1; i <= itemsAvailable; i++) {
	var iconState = 1;
	if (i <= _itemsCollected) iconState = 0;
	else if (i >= itemsNeeded) iconState = 2;
	
	draw_sprite(
		itemIcon, 
		iconState, 
		display_get_gui_width() - hudMarginX - ((i-1) * hudSeparation), 
		hudMarginY
	);
}