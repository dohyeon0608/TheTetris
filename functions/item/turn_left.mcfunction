execute as @e[type=minecraft:armor_stand,tag=b] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=stand] at @s run tp ~ ~ ~ ~-90 ~
function game/tick

tag @e[tag=b] add cannot_turn
execute as @e[tag=cannot_turn] at @s if block ~ ~ ~ air 0 run tag @s remove cannot_turn
execute as @e[tag=cannot_turn] at @s if block ~ ~ ~ concrete_powder -1 run tag @s remove cannot_turn
execute as @e[tag=cannot_turn] run tag @e[tag=b] add cannot_turn
execute as @e[name=O,type=minecraft:armor_stand] run tag @e[tag=b] add cannot_turn

execute if entity @e[type=minecraft:armor_stand,tag=cannot_turn,c=1] as @e[type=minecraft:armor_stand,tag=stand] at @s run tp ~ ~ ~ ~90 ~

function game/update_block
playsound step.cloth @s 6 -41 9

tag @e remove cannot_turn
