import clipboard

result = 'titleraw @a actionbar {"rawtext":['

for i in range(20):
    result += '{"score":{"name":"l%d","objective":"line"}},{"text":" "},' %i


# for i in range(20):
#     result += 'scoreboard players reset * l{}\n'.format(i)

clipboard.copy(result)
print('복사 완료')