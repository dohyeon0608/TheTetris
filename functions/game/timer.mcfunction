execute if score time main matches 1.. run scoreboard players add time main 1
execute if score time main matches 140.. run execute as @a[tag=join,c=1] run scoreboard players add drop_time main 1
execute if score drop_time main matches 20 run function game/on_falling
execute if score drop_time main matches 20.. run function game/reset_drop_time

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
execute if score time main matches 140.. run titleraw @a[tag=join] actionbar {"rawtext":[{"text":"§l§bSCORE: §r§ㄱ§f"},{"score":{"objective":"main","name":"score"}}]}
execute if score time main matches 140.. run title @a[tag=join] times 10 20 10
execute as @a[tag=join] if score time main matches 140 run function game/create_block