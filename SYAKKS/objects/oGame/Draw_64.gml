/// @desc 

var _playerHealth = oPlayer.hp;
var _playerHealthFrac = frac(_playerHealth);
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= playerMaxHealth; i++) {
	draw_sprite(
		sHeartIcon, 
		(i > _playerHealth) + ((i == _playerHealth + 1) && (_playerHealthFrac > 0)), 
		hudMarginX + ((i-1) * hudSeparation), 
		hudMarginY
	);
	
}


var _itemsCollected = oPlayer.itemsCollected;

for (var i = 1; i <= itemsNeeded; i++) {
	draw_sprite(
		sItemIcon, 
		(i > _itemsCollected), 
		display_get_gui_width() - hudMarginX - ((i-1) * hudSeparation), 
		hudMarginY
	);
}