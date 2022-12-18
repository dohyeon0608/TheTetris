function game/tick
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=I] at @s run setblock ~ ~ ~ concrete_powder 3
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=O] at @s run setblock ~ ~ ~ concrete_powder 4
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=Z] at @s run setblock ~ ~ ~ concrete_powder 14
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=S] at @s run setblock ~ ~ ~ concrete_powder 5
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=J] at @s run setblock ~ ~ ~ concrete_powder 11
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=L] at @s run setblock ~ ~ ~ concrete_powder 1
execute as @e[tag=b] if entity @e[type=minecraft:armor_stand,name=T] at @s run setblock ~ ~ ~ concrete_powder 10
# execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 3
# execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 4
# execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 14
# execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 5
# execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 11
# execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 1
# execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete_powder 10