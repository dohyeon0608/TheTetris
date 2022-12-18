title @a[tag=join] title §c§l게임 오버!
title @a times 0 50 10
fill 0 -60 0 19 -60 9 air
function game/count_line
setblock 10 -36 8 stone_button 4
setblock 8 -36 10 stone_button 2
tp @a[tag=join] -65 -38 8

tellraw @a {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§e"},{"selector":"@a[tag=join]"},{"text":"§f님의 플레이 결과"}]}
tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f획득한 점수 : "},{"score":{"objective":"main","name":"score"}}]}
tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f도달한 레벨 : "},{"score":{"objective":"main","name":"level"}}]}
tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f제거한 줄 : "},{"score":{"objective":"main","name":"removedLine"}}]}
scoreboard players operation @a[tag=join,c=1] highScore > score main
scoreboard players operation @a[tag=join,c=1] highLine > removedLine main
scoreboard players operation @a[tag=join,c=1] highLevel > level main
execute as @a[tag=join,c=1] run tellraw @s {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§e"},{"selector":"@s"},{"text":"§f님의 최고 기록"}]}
execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 점수 : "},{"score":{"objective":"highScore","name":"@s"}}]}
execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 레벨 : "},{"score":{"objective":"highLevel","name":"@s"}}]}
execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 제거된 줄 : "},{"score":{"objective":"highLine","name":"@s"}}]}

scoreboard players set time main 0
# scoreboard players reset * drop_time
tag * remove join
tag * remove game_over
fill 8 -60 12 11 -60 15 air
kill @e[tag=stand]
kill @e[tag=b]
kill @e[tag=next_set]
playsound random.explode @a

scoreboard players set score main 0
scoreboard players set removedLine main 0
clear @a tetris:move_left
clear @a tetris:move_right
clear @a tetris:soft_drop
clear @a tetris:turn_left
clear @a tetris:turn_right
clear @a tetris:hard_drop