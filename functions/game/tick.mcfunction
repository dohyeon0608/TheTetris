tag @e[type=minecraft:armor_stand,name=b1] add b
tag @e[type=minecraft:armor_stand,name=b2] add b
tag @e[type=minecraft:armor_stand,name=b3] add b
tag @e[type=minecraft:armor_stand,name=b4] add b

tag @e[type=minecraft:armor_stand,name=I] add stand
tag @e[type=minecraft:armor_stand,name=O] add stand
tag @e[type=minecraft:armor_stand,name=Z] add stand
tag @e[type=minecraft:armor_stand,name=S] add stand
tag @e[type=minecraft:armor_stand,name=J] add stand
tag @e[type=minecraft:armor_stand,name=L] add stand
tag @e[type=minecraft:armor_stand,name=T] add stand

tag @e[type=minecraft:armor_stand,name=nI] add next
tag @e[type=minecraft:armor_stand,name=nO] add next
tag @e[type=minecraft:armor_stand,name=nZ] add next
tag @e[type=minecraft:armor_stand,name=nS] add next
tag @e[type=minecraft:armor_stand,name=nJ] add next
tag @e[type=minecraft:armor_stand,name=nL] add next
tag @e[type=minecraft:armor_stand,name=nT] add next


# I block
execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^-1 ^ ^
execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=I] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# O block
execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^1
execute @e[type=minecraft:armor_stand,name=O] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^1

# Z block
execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^1 ^ ^-1
execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=Z] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^ ^ ^1

# S block
execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^-1
execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=S] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^1

# J block
execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^-1
execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=J] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# L block
execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^1
execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute @e[type=minecraft:armor_stand,name=L] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# T block
execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^1
execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^-1
execute @e[type=minecraft:armor_stand,name=T] ~ ~ ~ tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^

# effect
effect @a night_vision 15 0 true
effect @e[type=minecraft:armor_stand] invisibility 1 0 true


# line

# scoreboard players reset * l0
# scoreboard players reset * l1
# scoreboard players reset * l2
# scoreboard players reset * l3
# scoreboard players reset * l4
# scoreboard players reset * l5
# scoreboard players reset * l6
# scoreboard players reset * l7
# scoreboard players reset * l8
# scoreboard players reset * l9
# scoreboard players reset * l10
# scoreboard players reset * l11
# scoreboard players reset * l12
# scoreboard players reset * l13
# scoreboard players reset * l14
# scoreboard players reset * l15
# scoreboard players reset * l16
# scoreboard players reset * l17
# scoreboard players reset * l18
# scoreboard players reset * l19

scoreboard players operation @a l0 = l0 line
scoreboard players operation @a l1 = l1 line
scoreboard players operation @a l2 = l2 line
scoreboard players operation @a l3 = l3 line
scoreboard players operation @a l4 = l4 line
scoreboard players operation @a l5 = l5 line
scoreboard players operation @a l6 = l6 line
scoreboard players operation @a l7 = l7 line
scoreboard players operation @a l8 = l8 line
scoreboard players operation @a l9 = l9 line
scoreboard players operation @a l10 = l10 line
scoreboard players operation @a l11 = l11 line
scoreboard players operation @a l12 = l12 line
scoreboard players operation @a l13 = l13 line
scoreboard players operation @a l14 = l14 line
scoreboard players operation @a l15 = l15 line
scoreboard players operation @a l16 = l16 line
scoreboard players operation @a l17 = l17 line
scoreboard players operation @a l18 = l18 line
scoreboard players operation @a l19 = l19 line


# game over

execute @a[scores={l17=..9},tag=join] ~ ~ ~ tag @s add game_over
execute @a[scores={l18=..9},tag=join] ~ ~ ~ tag @s add game_over
# execute @a[scores={l18=..9}] ~ ~ ~ say L18에 블록 감지
# execute @a[scores={l18=..9}] ~ ~ ~ tellraw @a {"rawtext":[{"score":{"name":"@s","objective":"l18"}}]}
execute @a[scores={l19=..9},tag=join] ~ ~ ~ tag @s add game_over
# execute @a[scores={l19=..9}] ~ ~ ~ say L19에 블록 감지
# execute @a[scores={l19=..9}] ~ ~ ~ tellraw @a {"rawtext":[{"score":{"name":"@s","objective":"l19"}}]}
execute @a[tag=game_over,c=1] ~ ~ ~ function game/game_over


execute @e[tag=blocked,c=1] ~ ~ ~ function game/on_blocking