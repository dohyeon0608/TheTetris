tp @a[tag=join] 8 -44 8 270 90
execute if entity @a[tag=join] run fill 0 -60 0 19 -60 9 air
scoreboard players set time main 1
replaceitem entity @a[tag=join] slot.hotbar 1 tetris:move_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
replaceitem entity @a[tag=join] slot.hotbar 2 tetris:move_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }
replaceitem entity @a[tag=join] slot.hotbar 4 tetris:soft_drop 1 0 {"item_lock": { "mode": "lock_in_slot" } }
replaceitem entity @a[tag=join] slot.hotbar 6 tetris:turn_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
replaceitem entity @a[tag=join] slot.hotbar 7 tetris:turn_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }

execute if entity @a[tag=join] run setblock 8 -36 10 air 0 destroy
execute if entity @a[tag=join] run setblock 10 -36 8 air 0 destroy