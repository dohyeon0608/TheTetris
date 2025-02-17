import { world, system } from "@minecraft/server"
export { mainTick }

const scoreboardObjectiveId = "display"

const START_TIME = 140

String.prototype.format = function () {
    var formatted = this;
    for (var arg in arguments) {
        formatted = formatted.replace("{" + arg + "}", arguments[arg].toString());
    }
    return formatted;
};

function mainTick() {
    try {
        if (system.currentTick % 5 === 0) {
            let objective = world.scoreboard.getObjective(scoreboardObjectiveId);

            if (!objective) {
                objective = world.scoreboard.addObjective(scoreboardObjectiveId, scoreboardObjectiveDisplayName);
            }
            objective.getParticipants().forEach((i) => {
                objective.removeParticipant(i)
            })

            let mainObject = world.scoreboard.getObjective("main")
            let score = mainObject.getScore("score")
            let level = mainObject.getScore("level")
            let removedLine = mainObject.getScore("removedLine")
            let time = mainObject.getScore("time") // start from first enterance

            let playTime = time - START_TIME
            let playTimeSec = Math.floor(playTime / 20)

            let minutes = Math.floor(playTimeSec / 60)
            let seconds = playTimeSec % 60

            objective.setScore("", 15)
            
            // let playingMsg = isPlaying? "게임 §a진행중" : "게임 §7대기중"
            let playingMsg = "";
            if(time > 0 && time < START_TIME) playingMsg = "게임 §6준비중"
            else if(time >= START_TIME) playingMsg = "게임 §a진행중"
            else playingMsg = "게임 §7대기중"

            objective.setScore(playingMsg, 14)
            objective.setScore(" ", 13)
            if(time >= START_TIME) {
                let players = world.getAllPlayers()
                let player = undefined;

                for (let i = 0; i < players.length; i++) {
                    let p = players[i]
                    if(p.hasTag("join")) {
                        player = p
                        break
                    }
                }

                if(player != undefined) {
                    objective.setScore("§b레벨: §f{0}".format(level), 12)
                    objective.setScore("§b점수: §f{0}".format(score), 11)
                    objective.setScore("§b제거한 줄: §f{0}".format(removedLine), 10)
                    objective.setScore("   ".format(minutes, seconds), 9)
                    objective.setScore("{0}분 {1}초 경과".format(minutes, seconds), 8)

                    let name = player.name
                    if(name.length >= 5) name = name.substring(0, 5) + "..." 
                    objective.setScore("§7플레이어: {0}".format(name), 7)
                    objective.setScore("    ", 6)
                } else {
                    objective.setScore("§7오류: 플레이어를 찾을 수 없음", 12)
                    objective.setScore("   ", 11)
                }
            }
        }
    }
    catch (e) {
        world.getAllPlayers().forEach((p) => {
            p.onScreenDisplay.setActionBar("{0}: {1}\n {2}".format(e.name, e.message, e.stack))
        })
    }

    system.run(mainTick);
}