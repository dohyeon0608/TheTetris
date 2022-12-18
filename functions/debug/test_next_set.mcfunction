summon minecraft:armor_stand "nextI" 15 -59 -72 
summon minecraft:armor_stand "nextO" 15 -59 -72 
summon minecraft:armor_stand "nextZ" 15 -59 -72 
summon minecraft:armor_stand "nextS" 15 -59 -72 
summon minecraft:armor_stand "nextJ" 15 -59 -72 
summon minecraft:armor_stand "nextL" 15 -59 -72 
summon minecraft:armor_stand "nextT" 15 -59 -72

execute as @e[type=armor_stand,x=15,y=-59,z=-72,r=1] at @s run tag @s add next_set
spreadplayers 15 -72 0.5 4.0 @e[type=armor_stand,tag=next_set]

execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place1
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place2
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place3
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place4
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place5
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place6
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add place7
execute as @e[type=armor_stand,x=15,y=-59,z=-72,c=1,tag=!selected] at @s run tag @s add selected

tellraw @a {"rawtext":[{"text":"§b===== Executing test_next_set ====="}]}
tellraw @a {"rawtext":[{"text":"§b[1] §r"},{"selector":"@e[tag=place1]"}]}
tellraw @a {"rawtext":[{"text":"§b[2] §r"},{"selector":"@e[tag=place2]"}]}
tellraw @a {"rawtext":[{"text":"§b[3] §r"},{"selector":"@e[tag=place3]"}]}
tellraw @a {"rawtext":[{"text":"§b[4] §r"},{"selector":"@e[tag=place4]"}]}
tellraw @a {"rawtext":[{"text":"§b[5] §r"},{"selector":"@e[tag=place5]"}]}
tellraw @a {"rawtext":[{"text":"§b[6] §r"},{"selector":"@e[tag=place6]"}]}
tellraw @a {"rawtext":[{"text":"§b[7] §r"},{"selector":"@e[tag=place7]"}]}

# kill @e[tag=selected]