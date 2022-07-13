execute @a[scores={time=1..},c=1] ~ ~ ~ scoreboard players add @s time 1
execute @a[tag=join,scores={time=1..},c=1] ~ ~ ~ scoreboard players add @s drop_time 1
execute @a[scores={drop_time=20}] ~ ~ ~ function game/on_falling
execute @a[scores={drop_time=20..}] ~ ~ ~ scoreboard players set @a drop_time 0

# game timer

title @a times 0 50 10

title @a[tag=join,scores={time=20}] subtitle §f게임이 곧 시작됩니다. . .
title @a[tag=join,scores={time=20}] title §l§e준비하세요!

title @a[tag=join,scores={time=80}] title §l§e3
playsound random.click @a[tag=join,scores={time=80}]
title @a[tag=join,scores={time=100}] title §l§e2
playsound random.click @a[tag=join,scores={time=100}]
title @a[tag=join,scores={time=120}] title §l§e1
playsound random.click @a[tag=join,scores={time=120}]
title @a[tag=join,scores={time=140}] title §l§e시작!
playsound beacon.activate @a[tag=join,scores={time=140}] 
execute @a[tag=join,scores={time=140}] ~ ~ ~ function game/create_block