execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 3
execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 4
execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 14
execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 5
execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 11
execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 1
execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ concrete 10

tag * remove blocked

kill @e[type=minecraft:armor_stand,tag=stand]
kill @e[type=minecraft:armor_stand,tag=b]

execute @a[tag=join,c=1,scores={time=1..,l18=10,l19=10}] ~ ~ ~ function game/create_block
