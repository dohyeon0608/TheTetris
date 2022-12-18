# scoreboard players operation block main = next main

#초기 블록 없을 때
execute unless entity @e[tag=next_set,x=-3,y=-63,z=1,dx=0,dy=0,dz=6] run function game/init_next_set
function game/next

# 중간 블록 없을 때
execute unless entity @e[tag=next_set,x=-3,y=-63,z=1,dx=0,dy=0,dz=6] run function game/init_next_set
function game/update_next

# scoreboard players random next main 0 6
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextI"] run summon minecraft:armor_stand I 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextO"] run summon minecraft:armor_stand O 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextZ"] run summon minecraft:armor_stand Z 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextS"] run summon minecraft:armor_stand S 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextJ"] run summon minecraft:armor_stand J 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextL"] run summon minecraft:armor_stand L 18 -60 4
execute if entity @e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1,name="nextT"] run summon minecraft:armor_stand T 18 -60 4

summon minecraft:armor_stand b1 -1 -62 -1
summon minecraft:armor_stand b2 -1 -62 -1
summon minecraft:armor_stand b3 -1 -62 -1
summon minecraft:armor_stand b4 -1 -62 -1

function game/update_block

scoreboard players set @a block 0
function game/count_line