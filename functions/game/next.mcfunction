execute as @e[tag=next_set] at @s run tp ~ ~ ~-1
function game/update_next

kill @e[tag=next_set,x=-3,y=-63,z=-1,dx=0,dy=0,dz=0,c=1]
tag @e remove selected

# execute if score debugMode main matches 1 run tellraw @a {"rawtext":[{"text":"§b===== Executing next ====="}]}
# execute if score debugMode main matches 1 run tellraw @a {"rawtext":[{"text":"§b[ACTIVE] §r"},{"selector":"@e[tag=next_set,x=-3,y=-63,z=0,dx=0,dy=0,dz=0,c=1]"}]}
# execute if score debugMode main matches 1 run tellraw @a {"rawtext":[{"text":"§b[NEXT] §r"},{"selector":"@e[tag=next_set,x=-3,y=-63,z=1,dx=0,dy=0,dz=0,c=1]"}]}