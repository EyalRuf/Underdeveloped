if (!global.maxArt) {
	if (obj_Player.x > x && obj_Player.x < x + sprite_width && 
		obj_Player.y - 1 < y && obj_Player.y > y - obj_Player.sprite_height + 1) {
		
		if (global.money >= obj_GameManager.ART_COSTS[global.artLvl]) {
			global.money -= obj_GameManager.ART_COSTS[global.artLvl];
			global.artLvl++;
			
			with(obj_UpgradeableSprite) {
				switch (global.artLvl) {
					case (0) : { sprite_index = lvl1Sprite; break; }
					case (1) : { sprite_index = lvl2Sprite; break; }
					case (2) : { sprite_index = lvl3Sprite; break; }
				}
			}
			
			with (obj_BackgroundUpdater) {
				update_background();
			}
			
			with (obj_Player) {
				switch(global.artLvl) {
					case (0) : {
						jumpSprite = lvl1JumpSprite;
						landSprite = lvl1LandSprite;
						idleSprite = lvl1IdleSprite;
						fallSprite = lvl1FallSprite;
						runSprite = lvl1RunSprite;
						break;
					} case (1) : {
						jumpSprite = lvl2JumpSprite;
						landSprite = lvl2LandSprite;
						idleSprite = lvl2IdleSprite;
						fallSprite = lvl2FallSprite;
						runSprite = lvl2RunSprite;
						break;
					} case (2) : {
						jumpSprite = lvl3JumpSprite;
						landSprite = lvl3LandSprite;
						idleSprite = lvl3IdleSprite;
						fallSprite = lvl3FallSprite;
						runSprite = lvl3RunSprite;
						break;
					}
				}
			}
			
			
			if (global.artLvl > obj_GameManager.ART_MAX_LVL) {
				global.artLvl = obj_GameManager.ART_MAX_LVL;
				global.maxExp = true;
			}
		}
	}
}
