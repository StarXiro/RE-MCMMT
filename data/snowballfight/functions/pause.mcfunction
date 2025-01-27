#schedule clear
schedule clear core:clock/forgame/main
schedule clear core:clock/ingame/main
function core:countdown/stop
function snowballfight:game_process/stop
function snowballfight:game_intro/stop
function core:broadcast/stop
schedule clear snowballfight:pause
schedule clear snowballfight:uninstall
schedule clear snowballfight:map/loop
schedule clear snowballfight:map/lead
schedule clear snowballfight:score_action/main
schedule clear snowballfight:stain/main
schedule clear snowballfight:tag/main

#scoreboard reset
scoreboard players set snowball_fight current_game 0
scoreboard players set in_game core_ctrl 0