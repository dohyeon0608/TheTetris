scoreboard players add @s deviceMode 1
execute if score @s deviceMode matches 2.. run scoreboard players set @s deviceMode 0

execute if score @s deviceMode matches 0 run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r디바이스 모드를 §ePC§r로 설정했습니다."}]}
execute if score @s deviceMode matches 1 run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r디바이스 모드를 §e모바일§r로 설정했습니다."}]}