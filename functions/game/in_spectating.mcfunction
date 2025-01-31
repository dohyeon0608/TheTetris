scoreboard players set @s itemSet 2
# tp 6 -50 11 270 90
camera @s set minecraft:free pos 6 -41 11 rot 90 270
execute unless entity @s[x=-18,y=-59,z=-19,dx=48,dy=30,dz=62] run function game/stop_spectating