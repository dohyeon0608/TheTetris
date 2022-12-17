title @a[tag=join] title §c§l게임 오버!
fill 0 -60 0 19 -60 9 air
function game/count_line
setblock 10 -36 8 stone_button 4
setblock 8 -36 10 stone_button 2
scoreboard players set time main 0
# scoreboard players reset * drop_time
tag * remove join
tag * remove game_over
fill 8 -60 12 11 -60 15 air
kill @e[tag=stand]
kill @e[tag=b]
kill @e[tag=next_set]
tp @a 8 -36 8
playsound random.explode @a
tellraw @a {"rawtext":[{"text":"§l§bTETRIS : §r§f점수 = "},{"score":{"objective":"main","name":"score"}}]}
scoreboard players set score main 0
clear @a tetris:move_left
clear @a tetris:move_right
clear @a tetris:soft_drop
clear @a tetris:turn_left
clear @a tetris:turn_right
clear @a tetris:hard_drop