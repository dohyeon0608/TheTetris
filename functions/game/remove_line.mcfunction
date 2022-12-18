function game/count_line

scoreboard players set removeAbleLine main 0
execute if score l0 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l1 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l2 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l3 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l4 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l5 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l6 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l7 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l8 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l9 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l10 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l11 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l12 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l13 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l14 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l15 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l16 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l17 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l18 line matches 10 run scoreboard players add removeAbleLine main 1
execute if score l19 line matches 10 run scoreboard players add removeAbleLine main 1

execute if score l18 line matches 10 run fill 18 -60 0 18 -60 9 air
execute if score l18 line matches 10 run clone 19 -60 0 19 -60 9 18 -60 0 masked move
execute if score l17 line matches 10 run fill 17 -60 0 17 -60 9 air
execute if score l17 line matches 10 run clone 18 -60 0 19 -60 9 17 -60 0 masked move
execute if score l16 line matches 10 run fill 16 -60 0 16 -60 9 air
execute if score l16 line matches 10 run clone 17 -60 0 19 -60 9 16 -60 0 masked move
execute if score l15 line matches 10 run fill 15 -60 0 15 -60 9 air
execute if score l15 line matches 10 run clone 16 -60 0 19 -60 9 15 -60 0 masked move
execute if score l14 line matches 10 run fill 14 -60 0 14 -60 9 air
execute if score l14 line matches 10 run clone 15 -60 0 19 -60 9 14 -60 0 masked move
execute if score l13 line matches 10 run fill 13 -60 0 13 -60 9 air
execute if score l13 line matches 10 run clone 14 -60 0 19 -60 9 13 -60 0 masked move
execute if score l12 line matches 10 run fill 12 -60 0 12 -60 9 air
execute if score l12 line matches 10 run clone 13 -60 0 19 -60 9 12 -60 0 masked move
execute if score l11 line matches 10 run fill 11 -60 0 11 -60 9 air
execute if score l11 line matches 10 run clone 12 -60 0 19 -60 9 11 -60 0 masked move
execute if score l10 line matches 10 run fill 10 -60 0 10 -60 9 air
execute if score l10 line matches 10 run clone 11 -60 0 19 -60 9 10 -60 0 masked move
execute if score l9 line matches 10 run fill 9 -60 0 9 -60 9 air
execute if score l9 line matches 10 run clone 10 -60 0 19 -60 9 9 -60 0 masked move
execute if score l8 line matches 10 run fill 8 -60 0 8 -60 9 air
execute if score l8 line matches 10 run clone 9 -60 0 19 -60 9 8 -60 0 masked move
execute if score l7 line matches 10 run fill 7 -60 0 7 -60 9 air
execute if score l7 line matches 10 run clone 8 -60 0 19 -60 9 7 -60 0 masked move
execute if score l6 line matches 10 run fill 6 -60 0 6 -60 9 air
execute if score l6 line matches 10 run clone 7 -60 0 19 -60 9 6 -60 0 masked move
execute if score l5 line matches 10 run fill 5 -60 0 5 -60 9 air
execute if score l5 line matches 10 run clone 6 -60 0 19 -60 9 5 -60 0 masked move
execute if score l4 line matches 10 run fill 4 -60 0 4 -60 9 air
execute if score l4 line matches 10 run clone 5 -60 0 19 -60 9 4 -60 0 masked move
execute if score l3 line matches 10 run fill 3 -60 0 3 -60 9 air
execute if score l3 line matches 10 run clone 4 -60 0 19 -60 9 3 -60 0 masked move
execute if score l2 line matches 10 run fill 2 -60 0 2 -60 9 air
execute if score l2 line matches 10 run clone 3 -60 0 19 -60 9 2 -60 0 masked move
execute if score l1 line matches 10 run fill 1 -60 0 1 -60 9 air
execute if score l1 line matches 10 run clone 2 -60 0 19 -60 9 1 -60 0 masked move
execute if score l0 line matches 10 run fill 0 -60 0 0 -60 9 air
execute if score l0 line matches 10 run clone 1 -60 0 19 -60 9 0 -60 0 masked move

# function game/count_line
execute if score debugMode main matches 1 run tellraw @a {"rawtext":[{"text":"§bremoveAbleLine, main = "},{"score":{"objective":"main","name":"removeAbleLine"}}]}
# execute if score removeAbleLine main matches 1.. run function game/remove_line

execute if score removeAbleLine main matches 1 run title @a[tag=join] subtitle §e§ㄱSINGLE +20
execute if score removeAbleLine main matches 1 run scoreboard players add score main 20
execute if score removeAbleLine main matches 2 run title @a[tag=join] subtitle §e§ㄱDOUBLE +50
execute if score removeAbleLine main matches 2 run scoreboard players add score main 50
execute if score removeAbleLine main matches 3 run title @a[tag=join] subtitle §e§ㄱTRIPLE +100
execute if score removeAbleLine main matches 3 run scoreboard players add score main 100
execute if score removeAbleLine main matches 4 run title @a[tag=join] subtitle §e§l§ㄱTETRIS +200
execute if score removeAbleLine main matches 4 run scoreboard players add score main 200
execute if score removeAbleLine main matches 1..4  run titleraw @a[tag=join] title {"rawtext":[{"text":" "}]}

execute if score removeAbleLine main matches 1..2 as @a[tag=join] at @s run playsound random.orb @s ~ ~ ~ 1 0.5
execute if score removeAbleLine main matches 3..4 as @a[tag=join] at @s run playsound random.levelup @s ~ ~ ~ 1 0.5

scoreboard players operation removedLine main += removeAbleLine main