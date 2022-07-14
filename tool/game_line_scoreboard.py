import clipboard

# execute @e[type=snowball,x=0,y=60,z=0,dx=9,dz=0,dy=0] ~ ~ ~ scoreboard players add l1 line 1
prefix = 'execute as @e[x={},y=-64,z=0,dx=0,dy=0,dz=10,type=snowball] at @s run scoreboard players add l{} line 1'
# prefix = 'scoreboard players set l{} line 0'
# prefix = 'tellraw @a {"rawtext":[{"text":"%d: "},{"selector":"@e[x=%d,y=-64,z=0,dx=0,dy=0,dz=10,type=snowball]"}]}'
# a = 'summon snowball {} -{} {}'
a = 'execute if block {} -60 {} concrete -1 run scoreboard players add l{} line 1'
result = ''

for x in range(0, 20):
    for z in range(0, 10):
        result += a.format(x,z,x) + '\n'

# for z in range(0, 20):
#         result += a.format(z,62,0) + '\n'

# for x in range(0, 20):
#     result += prefix.format(x, x) + '\n'

# for x in range(0, 20):
#     result += prefix %(x, x )+ '\n'

clipboard.copy(result)
