execute @e[type=armor_stand,tag=b] ~ ~ ~ detect ~-1 ~ ~ iron_block 0 tag @s add blocked
execute @e[type=armor_stand,tag=b] ~ ~ ~ detect ~-1 ~ ~ concrete -1 tag @s add blocked
function game/tick

execute @e[tag=b] ~ ~ ~ setblock ~ ~ ~ air

execute @e[type=armor_stand,tag=stand] ~ ~ ~ tp ~-1 ~ ~

function game/tick
function game/update_block