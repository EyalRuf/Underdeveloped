/// @description Insert description here
// You can write your code in this editor
event_inherited();
alarm[0] = 60;
hP = 5;

switch(global.difficultyLvl){
	case 0: hP = 5; break;
	case 1: hP = 10; break;
	case 2: hP = 15; break;
}