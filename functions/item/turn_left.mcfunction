execute @e[type=minecraft:armor_stand,tag=b] ~ ~ ~ setblock ~ ~ ~ air
execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~ ~ ~ ~-90 ~
function game/tick

tag @e[tag=b] add cannot_turn
execute @e[tag=cannot_turn] ~ ~ ~ detect ~ ~ ~ air 0 tag @s remove cannot_turn
execute @e[tag=cannot_turn] ~ ~ ~ detect ~ ~ ~ concrete_powder -1 tag @s remove cannot_turn
execute @e[tag=cannot_turn] ~ ~ ~ tag @e[tag=b] add cannot_turn
execute @e[name=O,type=minecraft:armor_stand] ~ ~ ~ tag @e[tag=b] add cannot_turn

execute @e[type=minecraft:armor_stand,tag=cannot_turn,c=1] ~ ~ ~ execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~ ~ ~ ~90 ~

function game/tick
function game/update_block

tag @e remove cannot_turn
