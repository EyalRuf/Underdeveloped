/// room_transition ()

if (global.roomCounter == global.expansionLvl) {
	if (global.allUpgradesReached) {
		room_goto(obj_GameManager.BOSS_ROOM_IND);
	} else {
		// UPGRADE ROOM
		room_goto(obj_GameManager.UPGRADE_ROOM_IND);
		global.roomCounter = 0;
	}
} else {
	global.roomCounter++;
	
	var minRoom = obj_GameManager.FIRST_ROOM_IND + 
		((global.expansionLvl - 1) * obj_GameManager.ROOM_AMOUNT_PER_LEVEL);
	var maxRoom = minRoom + obj_GameManager.ROOM_AMOUNT_PER_LEVEL - 1;
	
	var randomRoom = irandom_range(minRoom, maxRoom);
	room_goto(randomRoom);
}
