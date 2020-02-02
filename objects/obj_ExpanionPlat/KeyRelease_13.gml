if (!global.maxExp) {
	if (obj_Player.x > x && obj_Player.x < x + sprite_width && 
		obj_Player.y - 1 < y && obj_Player.y > y - obj_Player.sprite_height + 1) {
		
		if (global.money >= obj_GameManager.EXPANSION_COSTS[global.expansionLvl - 1]) {
			global.money -= obj_GameManager.EXPANSION_COSTS[global.expansionLvl - 1];
			global.expansionLvl++;
			if (global.expansionLvl > obj_GameManager.EXPANSION_MAX_LVL) {
				global.expansionLvl = obj_GameManager.EXPANSION_MAX_LVL;
				global.maxExp = true;
			}
		}
	}
}
