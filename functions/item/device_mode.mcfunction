execute unless entity @e[type=npc,tag=deviceMode] run summon minecraft:npc "§r§l디바이스 모드 설정" -61 -38 12 
execute as @e[type=npc,x=-61,y=-38,z=12,dx=0,dy=0,dz=0,c=1] run tag @s add deviceMode

# scoreboard players add @s deviceMode 1
dialogue open @e[type=npc,c=1,tag=deviceMode] @s select_device_mode
# execute if score @s deviceMode matches 2.. run scoreboard players set @s deviceMode 0

# execute if score @s deviceMode matches 0 run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r디바이스 모드를 §ePC§r로 설정했습니다."}]}
# execute if score @s deviceMode matches 1 run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r디바이스 모드를 §e모바일§r로 설정했습니다."}]}