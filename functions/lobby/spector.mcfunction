execute as @a if entity @s[x=-64,y=-38,z=18,dx=-2,dy=0,dz=1] run tag @s add spectator
execute as @a if entity @s[x=-64,y=-38,z=18,dx=-2,dy=0,dz=1] run tellraw @s {"rawtext":[{"text":"\n§l§bTETRIS 》 §r§f관전 모드를 시작합니다!"}]}
execute as @a if entity @s[x=-64,y=-38,z=18,dx=-2,dy=0,dz=1] run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r§f관전모드에서 나가려면 아이템을 이용해주세요."}]}
execute as @a if entity @s[x=-64,y=-38,z=18,dx=-2,dy=0,dz=1] run tp -16 -46 11 270 0
execute as @a[tag=spectator] at @s run function game/in_spectating