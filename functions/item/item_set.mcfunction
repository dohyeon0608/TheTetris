scoreboard players add @a itemSet 0

# 0 lobby
# 1 in-game
# 2 in-spectating

execute as @a if score @s itemSet matches 0 run replaceitem entity @s slot.hotbar 8 tetris:high_record 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a unless score @s itemSet matches 0 run clear @s tetris:high_record

execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 0 tetris:move_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 1 tetris:move_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 3 tetris:soft_drop 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 5 tetris:hard_drop 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 7 tetris:turn_left 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a if score @s itemSet matches 1 run replaceitem entity @s slot.hotbar 8 tetris:turn_right 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a unless score @s itemSet matches 1 run clear @s tetris:move_left
execute as @a unless score @s itemSet matches 1 run clear @s tetris:move_right
execute as @a unless score @s itemSet matches 1 run clear @s tetris:soft_drop
execute as @a unless score @s itemSet matches 1 run clear @s tetris:turn_left
execute as @a unless score @s itemSet matches 1 run clear @s tetris:turn_right
execute as @a unless score @s itemSet matches 1 run clear @s tetris:hard_drop

execute as @a if score @s itemSet matches 2 run replaceitem entity @s slot.hotbar 8 tetris:stop_spectating 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute as @a unless score @s itemSet matches 2 run clear @s tetris:stop_spectating
