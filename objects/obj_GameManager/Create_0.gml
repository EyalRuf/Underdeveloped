FIRST_ROOM_IND = 1;
ROOM_AMOUNT_PER_LEVEL = 5;
ART_MAX_LVL = 2;
EXPANSION_MAX_LVL = 3;
BUG_MAX_LVL = 2;
BOSS_ROOM_IND = 17;
UPGRADE_ROOM_IND = 0;

FINISHING_ROOM_REWARDS = [15, 25, 50];
EXPANSION_COSTS = [250, 500, 1000];
ART_COSTS = [100, 250, 500];
BOOST_COSTS = [50, 150, 300];
REWARD_DIFFICULTY_COSTS = [100, 250, 500];
BUG_COSTS = [50, 100, 150];

global.artLvl = 2;
global.difficultyLvl = 0;
global.bugLvl = 0;
global.expansionLvl = 1;
global.roomCounter = 0;
global.allUpgradesReached = false;
global.money = 0;

randomize();