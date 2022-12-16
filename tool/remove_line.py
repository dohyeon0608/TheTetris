import clipboard

command = 'execute if score l{} line matches 10 run fill {} -60 0 {} -60 9 air\n'
command2 = 'execute if score l{} line matches 10 run clone {} -60 0 19 -60 9 {} -60 0 masked move\n'

final = 'scoreboard players set removeAbleLine main 0\n'
final1 = 'execute if score l{} line matches 10 run scoreboard players add removeAbleLine main 1\n'
final2 = 'execute if score removeAbleLine main matches 1.. run function game/remove_line'

result = ''
for x in range(19, -1, -1):
    result += command.format(x, x, x) + command2.format(x, x+1, x)

# result += final

# for x in range(20):
#     result += final1.format(x)

# result += final2

clipboard.copy(result)