import clipboard

block_list = ['I', 'O', 'Z', 'S', 'J', 'L', 'T']
prefix = 'execute @e[type=armor_stand{}] ~ ~ ~ '
result = ''

def get_command_line(command : str, name : str = '') -> str:
    return prefix.format(',name={}'.format('' if name == '' else ',name={}'.format(name))) + command + '\n'

result += get_command_line('detect ~-1 ~ ~ iron_block 0 kill @s')

for block in block_list:
    result += get_command_line('structure load {}0 ~ ~ ~ '.format(block), block)

result += get_command_line('tp ~-1 ~ ~')

for block in block_list:
    result += get_command_line('structure load {} ~ ~ ~ '.format(block), block)

#<struct>0 = just shape (but empty)

clipboard.copy(result)
print('복사 완료')