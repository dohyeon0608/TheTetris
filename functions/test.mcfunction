# # 기존

# scoreboard objectives add line dummy "줄 정보"
# scoreboard objectives add l0 dummy 
# scoreboard players operation @a l0 = l0 line
# execute @a[scores={l0=0}] ~ ~ ~ say hello, world!

# # 베타
# scoreboard objectives add line dummy "줄 정보"
# execute if score l1 line matches 0 run say hello, world!