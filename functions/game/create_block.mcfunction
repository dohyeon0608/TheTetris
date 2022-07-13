scoreboard players operation @a block = @a next
scoreboard players random @a next 0 6
execute @a[scores={block=0},c=1] ~ ~ ~ summon minecraft:armor_stand I 17 -60 4
execute @a[scores={block=1},c=1] ~ ~ ~ summon minecraft:armor_stand O 17 -60 4
execute @a[scores={block=2},c=1] ~ ~ ~ summon minecraft:armor_stand Z 17 -60 4
execute @a[scores={block=3},c=1] ~ ~ ~ summon minecraft:armor_stand S 17 -60 4
execute @a[scores={block=4},c=1] ~ ~ ~ summon minecraft:armor_stand J 17 -60 4
execute @a[scores={block=5},c=1] ~ ~ ~ summon minecraft:armor_stand L 17 -60 4
execute @a[scores={block=6},c=1] ~ ~ ~ summon minecraft:armor_stand T 17 -60 4
execute @a[scores={next=0},c=1] ~ ~ ~ structure load I 8 -60 12
execute @a[scores={next=1},c=1] ~ ~ ~ structure load O 8 -60 12
execute @a[scores={next=2},c=1] ~ ~ ~ structure load Z 8 -60 12
execute @a[scores={next=3},c=1] ~ ~ ~ structure load S 8 -60 12
execute @a[scores={next=4},c=1] ~ ~ ~ structure load J 8 -60 12
execute @a[scores={next=5},c=1] ~ ~ ~ structure load L 8 -60 12
execute @a[scores={next=6},c=1] ~ ~ ~ structure load T 8 -60 12
summon minecraft:armor_stand b1 -1 -62 -1
summon minecraft:armor_stand b2 -1 -62 -1
summon minecraft:armor_stand b3 -1 -62 -1
summon minecraft:armor_stand b4 -1 -62 -1
function game/update_block
scoreboard players set @a block 0
function game/count_line