execute if score time main matches 1.. run scoreboard players add time main 1
execute if score time main matches 1.. run execute as @a[tag=join,c=1] run scoreboard players add @s drop_time 1
execute as @a if score @s drop_time matches 20 run function game/on_falling
execute as @a if score @s drop_time matches 20.. run scoreboard players set @a drop_time 0

# game timer

title @a times 0 50 10

execute if score time main matches 20 run title @a[tag=join] subtitle §f게임이 곧 시작됩니다. . .
execute if score time main matches 20 run title @a[tag=join] title §l§e준비하세요!

execute if score time main matches 80 run title @a[tag=join] title §l§e3
execute if score time main matches 80 run playsound random.click @a[tag=join]
execute if score time main matches 100 run title @a[tag=join] title §l§e2
execute if score time main matches 100 run playsound random.click @a[tag=join]
execute if score time main matches 120 run title @a[tag=join] title §l§e1
execute if score time main matches 120 run playsound random.click @a[tag=join]
execute if score time main matches 140 run title @a[tag=join] title §l§e시작!
execute if score time main matches 140 run playsound beacon.activate @a[tag=join] 
execute as @a[tag=join] if score time main matches 140 run function game/create_block