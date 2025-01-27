#init
#countdown
function snowballfight:teleport/main
scoreboard players set countdown core_clock 40
function snowballfight:score_action/private/update

#schedule countdown
schedule function snowballfight:game_process/in_game 800t
schedule function core:countdown/start 500t
