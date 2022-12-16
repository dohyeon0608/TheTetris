execute as @e[type=minecraft:armor_stand,tag=b] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=stand] at @s run tp ~-1 ~ ~
function game/tick

# repeat 18 times

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down

function item/if_doesnt_exist_block_go_down


function game/update_block

scoreboard players set @a[tag=join,c=1] drop_time 0

tag * remove haveHardDropped

execute as @e[tag=b] at @s if block ~-1 ~ ~ concrete -1 run tag @s add blocked
execute as @e[tag=b] at @s if block ~-1 ~ ~ iron_block 0 run tag @s add blocked

function game/tick
