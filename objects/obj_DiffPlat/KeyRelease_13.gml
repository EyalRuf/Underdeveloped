if (!global.maxDiff)  {
	if (obj_Player.x > x && obj_Player.x < x + sprite_width && 
		obj_Player.y - 1 < y && obj_Player.y > y - obj_Player.sprite_height + 1) {
		
		if (global.money >= obj_GameManager.REWARD_DIFFICULTY_COSTS[global.difficultyLvl]) {
			global.money -= obj_GameManager.REWARD_DIFFICULTY_COSTS[global.difficultyLvl];
			global.difficultyLvl++;
			if (global.difficultyLvl > obj_GameManager.DIFFICULTY_MAX_LVL) {
				global.difficultyLvl = obj_GameManager.DIFFICULTY_MAX_LVL;
				global.maxDiff = true;
			}
		}
	}
}
