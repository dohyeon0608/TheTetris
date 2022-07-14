tag * remove blocked

execute as @e[tag=b] if entity @e[type=armor_stand,name=I] at @s run setblock ~ ~ ~ concrete 3
execute as @e[tag=b] if entity @e[type=armor_stand,name=O] at @s run setblock ~ ~ ~ concrete 4
execute as @e[tag=b] if entity @e[type=armor_stand,name=Z] at @s run setblock ~ ~ ~ concrete 14
execute as @e[tag=b] if entity @e[type=armor_stand,name=S] at @s run setblock ~ ~ ~ concrete 5
execute as @e[tag=b] if entity @e[type=armor_stand,name=J] at @s run setblock ~ ~ ~ concrete 11
execute as @e[tag=b] if entity @e[type=armor_stand,name=L] at @s run setblock ~ ~ ~ concrete 1
execute as @e[tag=b] if entity @e[type=armor_stand,name=T] at @s run setblock ~ ~ ~ concrete 10

execute if score time main matches 1.. if score l18 line matches 0 if score l19 line matches 0 run function game/create_block

function game/remove_line

kill @e[type=minecraft:armor_stand,tag=stand]
kill @e[type=minecraft:armor_stand,tag=b]


# execute if score l18 line matches 10 if score l19 line matches 10 unless entity @e[tag=b] run function game/create_block
