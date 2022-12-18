tag * remove blocked

execute as @e[tag=b] if entity @e[type=armor_stand,name=I] at @s run setblock ~ ~ ~ concrete 3
execute as @e[tag=b] if entity @e[type=armor_stand,name=O] at @s run setblock ~ ~ ~ concrete 4
execute as @e[tag=b] if entity @e[type=armor_stand,name=Z] at @s run setblock ~ ~ ~ concrete 14
execute as @e[tag=b] if entity @e[type=armor_stand,name=S] at @s run setblock ~ ~ ~ concrete 5
execute as @e[tag=b] if entity @e[type=armor_stand,name=J] at @s run setblock ~ ~ ~ concrete 11
execute as @e[tag=b] if entity @e[type=armor_stand,name=L] at @s run setblock ~ ~ ~ concrete 1
execute as @e[tag=b] if entity @e[type=armor_stand,name=T] at @s run setblock ~ ~ ~ concrete 10

kill @e[type=minecraft:armor_stand,tag=stand]
kill @e[type=minecraft:armor_stand,tag=b]

execute if score time main matches 1.. if score l18 line matches 0 if score l19 line matches 0 run function game/create_block
playsound use.stone @a[tag=join]

function game/remove_line

scoreboard players add score main 5

execute if score level main matches 0 run structure load L00 1 -60 15
execute if score level main matches 1 run structure load L01 1 -60 15
execute if score level main matches 2 run structure load L02 1 -60 15
execute if score level main matches 3 run structure load L03 1 -60 15
execute if score level main matches 4 run structure load L04 1 -60 15
execute if score level main matches 5 run structure load L05 1 -60 15
execute if score level main matches 6 run structure load L06 1 -60 15
execute if score level main matches 7 run structure load L07 1 -60 15
execute if score level main matches 8 run structure load L08 1 -60 15
execute if score level main matches 9 run structure load L09 1 -60 15
execute if score level main matches 10 run structure load L10 1 -60 15

execute if score removedLine main matches 0..4 run scoreboard players set level main 1
execute if score removedLine main matches 5..14 run scoreboard players set level main 2
execute if score removedLine main matches 15..29 run scoreboard players set level main 3
execute if score removedLine main matches 30..44 run scoreboard players set level main 4
execute if score removedLine main matches 45..64 run scoreboard players set level main 5
execute if score removedLine main matches 65..84 run scoreboard players set level main 6
execute if score removedLine main matches 85..109 run scoreboard players set level main 7
execute if score removedLine main matches 110..134 run scoreboard players set level main 8
execute if score removedLine main matches 135..155 run scoreboard players set level main 9
execute if score removedLine main matches 160.. run scoreboard players set level main 10