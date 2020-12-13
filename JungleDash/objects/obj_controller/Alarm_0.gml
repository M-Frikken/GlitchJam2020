/// @description Insert description here
// You can write your code in this editor
randomize();
var count = irandom_range(1,2);

var i = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
i.sprite_index = spr_obstacle;
i.y = choose(room_height - 60, room_height - 80, room_height - 100);

if(global.speedModifier > 1.5){
	if(count == 2){
		var j = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
		j.sprite_index = spr_obstacle;
		j.y = choose(room_height - 60, room_height - 80, room_height - 100);
	}
}

global.speedModifier += 0.01;

alarm[0] = room_speed * random_range(1/global.speedModifier, 2/global.speedModifier);