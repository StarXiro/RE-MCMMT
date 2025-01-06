#schedule clear
schedule clear core:clock/forgame/main
schedule clear core:clock/ingame/main
function fallingsky:loop_actions/stop
function fallingsky:block_generator/stop
function core:countdown/stop
function fallingsky:game_process/stop
function fallingsky:game_intro/stop
function core:broadcast/stop
schedule clear fallingsky:pause
schedule clear fallingsky:uninstall

kill @e[type=falling_block]

#scoreboard reset
scoreboard players set falling_sky current_game 0
scoreboard players set in_game core_ctrl 0