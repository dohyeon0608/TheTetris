scoreboard players operation block main = next main
scoreboard players random next main 0 6
execute if score block main matches 0 run summon minecraft:armor_stand I 17 -60 4
execute if score block main matches 1 run summon minecraft:armor_stand O 17 -60 4
execute if score block main matches 2 run summon minecraft:armor_stand Z 17 -60 4
execute if score block main matches 3 run summon minecraft:armor_stand S 17 -60 4
execute if score block main matches 4 run summon minecraft:armor_stand J 17 -60 4
execute if score block main matches 5 run summon minecraft:armor_stand L 17 -60 4
execute if score block main matches 6 run summon minecraft:armor_stand T 17 -60 4
execute if score next main matches 0 run structure load I 8 -60 12
execute if score next main matches 1 run structure load O 8 -60 12
execute if score next main matches 2 run structure load Z 8 -60 12
execute if score next main matches 3 run structure load S 8 -60 12
execute if score next main matches 4 run structure load J 8 -60 12
execute if score next main matches 5 run structure load L 8 -60 12
execute if score next main matches 6 run structure load T 8 -60 12
summon minecraft:armor_stand b1 -1 -62 -1
summon minecraft:armor_stand b2 -1 -62 -1
summon minecraft:armor_stand b3 -1 -62 -1
summon minecraft:armor_stand b4 -1 -62 -1
scoreboard players set @a block 0
function game/count_line