execute as @a[x=-55,y=-38,z=7,dx=1,dy=0,dz=2,c=1] at @s run tag @s add join
execute as @a[tag=join] if score time main matches 0 at @s run tellraw @a {"rawtext":[{"text":"§l§bTETRIS 》 §r§e"},{"selector":"@s"},{"text":"§f님이 게임을 시작하였습니다!"}]}
execute as @a[tag=join] if score time main matches 0 at @s run function game/start
execute as @a[x=-55,y=-38,z=7,dx=1,dy=0,dz=2,tag=!join] at @s if entity @a[tag=join] run tellraw @s {"rawtext":[{"text":"§l§bTETRIS 》 §r§c이미 누군가 게임을 진행하고 있습니다."}]}
execute as @a[x=-55,y=-38,z=7,dx=1,dy=0,dz=2,tag=!join] at @s if entity @a[tag=join] run tp -65 -38 8
execute if entity @a[tag=join] run fill -56 -38 7 -56 -37 9 stained_glass_pane 0
execute unless entity @a[tag=join] run fill -56 -38 7 -56 -37 9 air 0
