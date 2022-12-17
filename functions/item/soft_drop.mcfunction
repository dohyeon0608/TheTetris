function item/if_doesnt_exist_block_go_down
function game/update_block

scoreboard players set drop_time main 0

execute as @e[tag=b] at @s if block ~-1 ~ ~ concrete -1 run tag @s add blocked
execute as @e[tag=b] at @s if block ~-1 ~ ~ iron_block 0 run tag @s add blocked

function game/tick
