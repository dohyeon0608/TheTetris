execute @e[type=minecraft:armor_stand,tag=b] ~ ~ ~ setblock ~ ~ ~ air
execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~-1 ~ ~
function game/tick

tag @e[tag=b] add cannot_move
execute @e[tag=cannot_move] ~ ~ ~ detect ~ ~ ~ air 0 tag @s remove cannot_move
execute @e[tag=cannot_move] ~ ~ ~ detect ~ ~ ~ concrete_powder -1 tag @s remove cannot_move
execute @e[tag=cannot_move] ~ ~ ~ tag @e[tag=b] add cannot_move

execute @e[type=minecraft:armor_stand,tag=cannot_move,c=1] ~ ~ ~ execute @e[type=minecraft:armor_stand,tag=stand] ~ ~ ~ tp ~1 ~ ~

function game/tick
function game/update_block

scoreboard players set @a[tag=join,c=1] drop_time 0

tag @e remove cannot_move

execute @e[tag=b] ~ ~ ~ detect ~-1 ~ ~ concrete -1 tag @s add blocked
execute @e[tag=b] ~ ~ ~ detect ~-1 ~ ~ iron_block 0 tag @s add blocked

function game/tick
