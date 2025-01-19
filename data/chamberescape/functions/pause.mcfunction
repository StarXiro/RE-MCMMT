#schedule clear
schedule clear core:clock/forgame/main
schedule clear core:clock/ingame/main
function core:countdown/stop
function chamberescape:game_process/stop
function chamberescape:game_intro/stop
function core:broadcast/stop
schedule clear chamberescape:pause
schedule clear chamberescape:uninstall

#scoreboard reset
scoreboard players set chamber_escape current_game 0
scoreboard players set in_game core_ctrl 0