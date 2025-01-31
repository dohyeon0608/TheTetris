import { world } from "@minecraft/server";

const eventList = ["hard_drop", "high_record", "move_left", "move_right", "set_device", "soft_drop", "stop_spectating", "turn_left", "turn_right"]

world.beforeEvents.worldInitialize.subscribe((data) => {
    const {itemComponentRegistry} = data
    eventList.forEach(event => {
        itemComponentRegistry.registerCustomComponent("tetris:" + event, {
            onUse(arg) {
                arg.source.runCommand("function item/" + event)
            },
        })
    });
})