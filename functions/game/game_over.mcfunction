title @a[tag=join] title §c§l게임 오버!
title @a times 0 50 10
fill 0 -60 0 20 -60 9 air
function game/count_line
setblock 10 -36 8 stone_button 4
setblock 8 -36 10 stone_button 2
tp @a[tag=join] -65 -38 8

execute if entity @a[tag=join] run scoreboard players operation temp_score main = score main
execute if entity @a[tag=join] run scoreboard players operation temp_level main = level main
execute if entity @a[tag=join] run scoreboard players operation temp_line main = removedLine main
execute if entity @a[tag=join] run scoreboard players operation temp_score main -= @a[tag=join] highScore
execute if entity @a[tag=join] run scoreboard players operation temp_level main -= @a[tag=join] highLevel
execute if entity @a[tag=join] run scoreboard players operation temp_line main -= @a[tag=join] highLine

execute if entity @a[tag=join] run tellraw @a {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§e"},{"selector":"@a[tag=join]"},{"text":"§f님의 플레이 결과"}]}
execute if entity @a[tag=join] if score temp_score main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f획득한 점수 : "},{"score":{"objective":"main","name":"score"}},{"text":" §l§e최고 기록!"}]}
execute if entity @a[tag=join] unless score temp_score main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f획득한 점수 : "},{"score":{"objective":"main","name":"score"}}]}
execute if entity @a[tag=join] if score temp_level main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f도달한 레벨 : "},{"score":{"objective":"main","name":"level"}},{"text":" §l§e최고 기록!"}]}
execute if entity @a[tag=join] unless score temp_level main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f도달한 레벨 : "},{"score":{"objective":"main","name":"level"}}]}
execute if entity @a[tag=join] if score temp_line main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f제거한 줄 : "},{"score":{"objective":"main","name":"removedLine"}},{"text":" §l§e최고 기록!"}]}
execute if entity @a[tag=join] unless score temp_line main matches 1.. run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f제거한 줄 : "},{"score":{"objective":"main","name":"removedLine"}}]}
execute unless entity @a[tag=join] run tellraw @a {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§f게임이 강제 종료되어 결과는 삭제됩니다."}]}

scoreboard players operation @a[tag=join,c=1] highScore > score main
scoreboard players operation @a[tag=join,c=1] highLine > removedLine main
scoreboard players operation @a[tag=join,c=1] highLevel > level main

# execute as @a[tag=join,c=1] run tellraw @s {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§e"},{"selector":"@s"},{"text":"§f님의 최고 기록"}]}
# execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 점수 : "},{"score":{"objective":"highScore","name":"@s"}}]}
# execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 레벨 : "},{"score":{"objective":"highLevel","name":"@s"}}]}
# execute as @a[tag=join,c=1] run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§f최고 제거된 줄 : "},{"score":{"objective":"highLine","name":"@s"}}]}

scoreboard players set @a[tag=join] itemSet 0
scoreboard players set time main 0
# scoreboard players reset * drop_time
# execute as @a[tag=join] run playsound random.explode @s
execute as @a[tag=join] positioned -65 -38 8 run playsound random.explode @s ~ ~ ~ 300
tag * remove join
tag * remove game_over
fill 8 -60 13 11 -60 16 air
kill @e[tag=stand]
kill @e[tag=b]
kill @e[tag=next_set]

scoreboard players set score main 0
scoreboard players set removedLine main 0
# clear @a tetris:move_left
# clear @a tetris:move_right
# clear @a tetris:soft_drop
# clear @a tetris:turn_left
# clear @a tetris:turn_right
# clear @a tetris:hard_drop