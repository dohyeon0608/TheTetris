execute @e[type=minecraft:armor_stand,tag=b] ~ ~ ~ setblock ~ ~ ~ air
execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~ ~ ~1
function game/tick

tag @e[tag=b] add cannot_move
execute @e[tag=cannot_move] ~ ~ ~ detect ~ ~ ~ air 0 tag @s remove cannot_move
execute @e[tag=cannot_move] ~ ~ ~ detect ~ ~ ~ concrete_powder -1 tag @s remove cannot_move
execute @e[tag=cannot_move] ~ ~ ~ tag @e[tag=b] add cannot_move

execute @e[type=minecraft:armor_stand,tag=cannot_move,c=1] ~ ~ ~ execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~ ~ ~-1

function game/tick
function game/update_block

tag @e remove cannot_move
