tag @e[tag=next_set] add next_set_old

summon minecraft:armor_stand "nextI" -65 -59 0 
summon minecraft:armor_stand "nextO" -65 -59 0 
summon minecraft:armor_stand "nextZ" -65 -59 0 
summon minecraft:armor_stand "nextS" -65 -59 0 
summon minecraft:armor_stand "nextJ" -65 -59 0 
summon minecraft:armor_stand "nextL" -65 -59 0 
summon minecraft:armor_stand "nextT" -65 -59 0

execute as @e[type=armor_stand,x=-65,y=-59,z=0,r=1] at @s run tag @s add next_set
spreadplayers -65 0 0.5 4.0 @e[type=armor_stand,tag=next_set,tag=!next_set_old]

execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place1
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place2
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place3
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place4
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place5
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place6
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add place7
execute as @e[type=armor_stand,x=-65,y=-59,z=0,c=1,tag=!selected] at @s run tag @s add selected

tp @e[tag=place1,tag=selected,tag=!next_set_old] -3 -63 1
tp @e[tag=place2,tag=selected,tag=!next_set_old] -3 -63 2
tp @e[tag=place3,tag=selected,tag=!next_set_old] -3 -63 3
tp @e[tag=place4,tag=selected,tag=!next_set_old] -3 -63 4
tp @e[tag=place5,tag=selected,tag=!next_set_old] -3 -63 5
tp @e[tag=place6,tag=selected,tag=!next_set_old] -3 -63 6
tp @e[tag=place7,tag=selected,tag=!next_set_old] -3 -63 7

# tellraw @a {"rawtext":[{"text":"§b===== Executing init_next_set ====="}]}
# tellraw @a {"rawtext":[{"text":"§b[1] §r"},{"selector":"@e[tag=place1,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[2] §r"},{"selector":"@e[tag=place2,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[3] §r"},{"selector":"@e[tag=place3,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[4] §r"},{"selector":"@e[tag=place4,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[5] §r"},{"selector":"@e[tag=place5,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[6] §r"},{"selector":"@e[tag=place6,tag=selected,tag=!next_set_old]"}]}
# tellraw @a {"rawtext":[{"text":"§b[7] §r"},{"selector":"@e[tag=place7,tag=selected,tag=!next_set_old]"}]}