scoreboard objectives add drop_time dummy
scoreboard objectives add main dummy "§l§e테트리스"
scoreboard players set time main 0
scoreboard objectives add leftBlock dummy "남은 블록"
scoreboard objectives add line dummy "줄 정보"
scoreboard objectives add next dummy
scoreboard objectives add block dummy

tellraw @s {"rawtext":[{"text":"§l§bTETRIS: §r셋업 완료!"}]}