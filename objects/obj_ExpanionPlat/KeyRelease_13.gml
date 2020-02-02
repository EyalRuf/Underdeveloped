if (distance_to_object(obj_Player < 20) && y < obj_Player.y) {
	if (global.money >= obj_GameManager.EXPANSION_COSTS[global.expansionLvl - 1]) {
		global.money -= obj_GameManager.EXPANSION_COSTS[global.expansionLvl - 1];
		global.expansionLvl++;
		if (global.expansionLvl > obj_GameManager.EXPANSION_MAX_LVL)
			global.expansionLvl = obj_GameManager.EXPANSION_MAX_LVL;
	}
}