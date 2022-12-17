# scoreboard objectives add drop_time dummy
scoreboard objectives add main dummy "§l§e테트리스"
scoreboard players set time main 0
scoreboard players set level main 1
scoreboard objectives add leftBlock dummy "남은 블록"
scoreboard objectives add line dummy "줄 정보"
scoreboard objectives add next dummy
scoreboard objectives add block dummy
scoreboard objectives add highScore dummy "§e§l최고 점수"
scoreboard players set score main 0
scoreboard objectives add highLevel dummy "§e§l최고 레벨"
scoreboard players set level main 0
scoreboard objectives add highLine dummy "§e§l최고 제거된 줄"
scoreboard players set removedLine main 0

tellraw @s {"rawtext":[{"text":"§l§bTETRIS: §r셋업 완료!"}]}