tp @a[tag=join] 6 -48 11 270 90
scoreboard players add @a[tag=join] deviceMode 0
execute if entity @a[tag=join] run fill 0 -60 0 19 -60 9 air
execute if entity @a[tag=join] run scoreboard players set time main 1
scoreboard players set @a[tag=join] itemSet 1
scoreboard players set temp_removedLine main 0
# replaceitem entity @a[tag=join] slot.hotbar 0 tetris:move_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
# replaceitem entity @a[tag=join] slot.hotbar 1 tetris:move_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }
# replaceitem entity @a[tag=join] slot.hotbar 3 tetris:soft_drop 1 0 {"item_lock": { "mode": "lock_in_slot" } }
# replaceitem entity @a[tag=join] slot.hotbar 5 tetris:hard_drop 1 0 {"item_lock": { "mode": "lock_in_slot" } }
# replaceitem entity @a[tag=join] slot.hotbar 7 tetris:turn_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
# replaceitem entity @a[tag=join] slot.hotbar 8 tetris:turn_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }

execute if entity @a[tag=join] run setblock 8 -36 10 air 0 destroy
execute if entity @a[tag=join] run setblock 10 -36 8 air 0 destroy
scoreboard players set level main 1
function game/reset_drop_time

scoreboard players add @a[tag=join] highScore 0
scoreboard players add @a[tag=join] highLine 0
scoreboard players add @a[tag=join] highLevel 0

structure load L01 1 -60 15

execute if score debugMode main matches 1 run tellraw @s {"rawtext":[{"text":"§l§bTETRIS : §r디버그 모드로 시작했습니다."}]}
execute unless entity @a[tag=join] run tellraw @a {"rawtext":[{"text":"§c지금은 시작할 수 없습니다! 참가자가 존재하지 않습니다!"}]}
