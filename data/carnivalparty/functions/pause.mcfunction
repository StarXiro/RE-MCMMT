#schedule clear
schedule clear core:clock/forgame/main
schedule clear core:clock/ingame/main
function carnivalparty:loop_actions/stop
function carnivalparty:block_generator/stop
function core:countdown/stop
function carnivalparty:game_process/stop
function carnivalparty:game_intro/stop
function core:broadcast/stop
schedule clear carnivalparty:pause
schedule clear carnivalparty:uninstall

#scoreboard reset
scoreboard players set carnival_party current_game 0
scoreboard players set in_game core_ctrl 0