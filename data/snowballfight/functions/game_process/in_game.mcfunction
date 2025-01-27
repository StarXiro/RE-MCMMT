#countdown init
scoreboard players set countdown core_clock 180
scoreboard players set in_game core_ctrl 1

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 2

#start loop
function snowballfight:map/loop
function snowballfight:map/lead
function snowballfight:stain/main
function snowballfight:score_action/main
function snowballfight:tag/main


#end_game
schedule function snowballfight:game_process/end_game 3600t