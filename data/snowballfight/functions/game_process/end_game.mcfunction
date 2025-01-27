#end_game
clear @a[tag=Snowball_fight]
effect give @a[tag=Snowball_fight] instant_health 1 5 true
effect give @a[tag=Snowball_fight] resistance infinite 4 true
#scoreboard update
scoreboard players set countdown core_clock 30
scoreboard players set end_game process_ctrl 1
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 0

schedule clear snowballfight:map/lead
#broadcast
#schedule function core:score_actions/store 100t
schedule function core:broadcast/teamscore 200t
schedule function snowballfight:uninstall 601t