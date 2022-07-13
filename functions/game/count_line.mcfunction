summon armor_stand line 0 -62 0
summon armor_stand line 1 -62 0
summon armor_stand line 2 -62 0
summon armor_stand line 3 -62 0
summon armor_stand line 4 -62 0
summon armor_stand line 5 -62 0
summon armor_stand line 6 -62 0
summon armor_stand line 7 -62 0
summon armor_stand line 8 -62 0
summon armor_stand line 9 -62 0
summon armor_stand line 10 -62 0
summon armor_stand line 11 -62 0
summon armor_stand line 12 -62 0
summon armor_stand line 13 -62 0
summon armor_stand line 14 -62 0
summon armor_stand line 15 -62 0
summon armor_stand line 16 -62 0
summon armor_stand line 17 -62 0
summon armor_stand line 18 -62 0
summon armor_stand line 19 -62 0
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 1
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 2
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 3
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 4
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 5
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 6
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 7
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 8
execute @e[type=minecraft:armor_stand,x=0,dx=19,y=-62,dy=-1,z=0,dz=0] ~ ~ ~ summon armor_stand line ~ ~ 9

execute @e[type=minecraft:armor_stand] ~ ~ ~ detect ~ -60 ~ minecraft:concrete -1 kill @s

scoreboard players reset * line
scoreboard players set l0 line 0
scoreboard players set l1 line 0
scoreboard players set l2 line 0
scoreboard players set l3 line 0
scoreboard players set l4 line 0
scoreboard players set l5 line 0
scoreboard players set l6 line 0
scoreboard players set l7 line 0
scoreboard players set l8 line 0
scoreboard players set l9 line 0
scoreboard players set l10 line 0
scoreboard players set l11 line 0
scoreboard players set l12 line 0
scoreboard players set l13 line 0
scoreboard players set l14 line 0
scoreboard players set l15 line 0
scoreboard players set l16 line 0
scoreboard players set l17 line 0
scoreboard players set l18 line 0
scoreboard players set l19 line 0
#  execute @e[type=armor_stand] ~ ~ ~ scoreboard players add l0 line 1
execute @e[x=0,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l0 line 1
execute @e[x=1,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l1 line 1
execute @e[x=2,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l2 line 1
execute @e[x=3,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l3 line 1
execute @e[x=4,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l4 line 1
execute @e[x=5,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l5 line 1
execute @e[x=6,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l6 line 1
execute @e[x=7,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l7 line 1
execute @e[x=8,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l8 line 1
execute @e[x=9,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l9 line 1
execute @e[x=10,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l10 line 1
execute @e[x=11,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l11 line 1
execute @e[x=12,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l12 line 1
execute @e[x=13,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l13 line 1
execute @e[x=14,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l14 line 1
execute @e[x=15,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l15 line 1
execute @e[x=16,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l16 line 1
execute @e[x=17,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l17 line 1
execute @e[x=18,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l18 line 1
execute @e[x=19,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand] ~ ~ ~ scoreboard players add l19 line 1

# DEBUG

# tellraw @a {"rawtext":[{"text":"0: "},{"selector":"@e[x=0,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"1: "},{"selector":"@e[x=1,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"2: "},{"selector":"@e[x=2,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"3: "},{"selector":"@e[x=3,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"4: "},{"selector":"@e[x=4,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"5: "},{"selector":"@e[x=5,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"6: "},{"selector":"@e[x=6,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"7: "},{"selector":"@e[x=7,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"8: "},{"selector":"@e[x=8,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"9: "},{"selector":"@e[x=9,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"10: "},{"selector":"@e[x=10,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"11: "},{"selector":"@e[x=11,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"12: "},{"selector":"@e[x=12,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"13: "},{"selector":"@e[x=13,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"14: "},{"selector":"@e[x=14,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"15: "},{"selector":"@e[x=15,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"16: "},{"selector":"@e[x=16,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"17: "},{"selector":"@e[x=17,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"18: "},{"selector":"@e[x=18,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}
# tellraw @a {"rawtext":[{"text":"19: "},{"selector":"@e[x=19,y=-61,z=0,dx=0,dy=-2,dz=10,type=armor_stand]"}]}


kill @e[type=minecraft:armor_stand,name=line]