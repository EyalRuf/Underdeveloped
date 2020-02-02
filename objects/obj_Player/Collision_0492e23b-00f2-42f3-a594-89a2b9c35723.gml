if (global.roomCounter > 0) { // UpgradeRoom 
	global.money += obj_GameManager.FINISHING_ROOM_REWARDS[global.difficultyLvl];
}
room_transition();