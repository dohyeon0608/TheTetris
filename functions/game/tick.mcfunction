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
execute as @e[type=minecraft:armor_stand,name=I] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=I] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^-1 ^ ^
execute as @e[type=minecraft:armor_stand,name=I] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=I] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# O block
execute as @e[type=minecraft:armor_stand,name=O] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=O] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=O] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,name=O] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^1

# Z block
execute as @e[type=minecraft:armor_stand,name=Z] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^1 ^ ^-1
execute as @e[type=minecraft:armor_stand,name=Z] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=Z] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=Z] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^ ^ ^1

# S block
execute as @e[type=minecraft:armor_stand,name=S] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^-1
execute as @e[type=minecraft:armor_stand,name=S] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=S] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=S] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^1

# J block
execute as @e[type=minecraft:armor_stand,name=J] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^-1
execute as @e[type=minecraft:armor_stand,name=J] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=J] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=J] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# L block
execute as @e[type=minecraft:armor_stand,name=L] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,name=L] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=L] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^1 ^ ^
execute as @e[type=minecraft:armor_stand,name=L] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^2 ^ ^

# T block
execute as @e[type=minecraft:armor_stand,name=T] at @s run tp @e[type=minecraft:armor_stand,name=b1] ^ ^ ^
execute as @e[type=minecraft:armor_stand,name=T] at @s run tp @e[type=minecraft:armor_stand,name=b2] ^ ^ ^1
execute as @e[type=minecraft:armor_stand,name=T] at @s run tp @e[type=minecraft:armor_stand,name=b3] ^ ^ ^-1
execute as @e[type=minecraft:armor_stand,name=T] at @s run tp @e[type=minecraft:armor_stand,name=b4] ^1 ^ ^

# effect
effect @a night_vision 15 0 true
effect @e[type=minecraft:armor_stand] invisibility 1 0 true

# game over

execute if score l17 line matches 1.. run tag @a[tag=join] add game_over
execute if score l18 line matches 1.. run tag @a[tag=join] add game_over
execute if score l19 line matches 1.. run tag @a[tag=join] add game_over
execute as @a[tag=game_over,c=1] at @s run function game/game_over

execute as @e[tag=blocked,c=1] at @s run function game/on_blocking

title @a actionbar @e[tag=blocked]
