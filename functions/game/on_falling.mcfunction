execute as @e[type=armor_stand,tag=b] at @s if block ~-1 ~ ~ iron_block 0 run tag @s add blocked
execute as @e[type=armor_stand,tag=b] at @s if block ~-1 ~ ~ concrete -1 run tag @s add blocked
function game/tick

execute as @e[tag=b] at @s run setblock ~ ~ ~ air

execute as @e[type=armor_stand,tag=stand] at @s run tp ~-1 ~ ~

function game/tick
function game/update_block