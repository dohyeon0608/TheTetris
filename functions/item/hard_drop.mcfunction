execute as @e[type=minecraft:armor_stand,tag=b] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=stand] at @s run tp ~-1 ~ ~
function game/tick

tag @e[tag=b] add cannot_move
execute as @e[tag=cannot_move] at @s if block ~ ~ ~ air 0 run tag @s remove cannot_move
execute as @e[tag=cannot_move] at @s if block ~ ~ ~ concrete_powder -1 run tag @s remove cannot_move
execute as @e[tag=cannot_move] run tag @e[tag=b] add cannot_move

execute if entity @e[type=minecraft:armor_stand,tag=cannot_move,c=1] as @e[type=minecraft:armor_stand,tag=stand] at @s run tp ~1 ~ ~

function game/tick
function game/update_block

scoreboard players set @a[tag=join,c=1] drop_time 0

tag @e remove cannot_move

execute as @e[tag=b] at @s if block ~-1 ~ ~ concrete -1 run tag @s add blocked
execute as @e[tag=b] at @s if block ~-1 ~ ~ iron_block 0 run tag @s add blocked

function game/tick
