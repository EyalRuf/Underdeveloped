/// spawn_enemies ()

ratNumber = 0;
batNumber = 0;

if (global.difficultyLvl == 0){
    ratNumber = irandom_range(1, 3);
    batNumber = irandom_range(1, 3);
}
if (global.difficultyLvl == 1){
    ratNumber = irandom_range(3,6);
    batNumber = irandom_range(3,6);
}
if (global.difficultyLvl == 2){
    ratNumber = irandom_range(6,9);
    batNumber = irandom_range(6,9);
}


for (i = 0; i < ratNumber; i++){
    var inst = instance_find(obj_Platforms, irandom(instance_number(obj_Platforms) - 1));
    instance_create_layer(inst.x, inst.y, "Instances", obj_Rat);
    
}

for (i = 0; i < batNumber; i++){
    if (instance_number(obj_Spawner) > 0){
	    var insta = instance_find(obj_Spawner, irandom(instance_number(obj_Spawner) - 1));
	    instance_create_layer(insta.x, insta.y, "Instances", obj_Bat);
	    instance_destroy(insta);
    }
}