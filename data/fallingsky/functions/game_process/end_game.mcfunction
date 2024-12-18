#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 0
scoreboard players set end_game process_ctrl 1

#countdown init
scoreboard players set countdown core_clock 60
schedule function fallingsky:uninstall 1220t
schedule function fallingsky:reload_map/origin 200t
schedule function core:broadcast/playerscore 200t
schedule function core:broadcast/teamscore 400t
schedule function core:broadcast/corescore 600t

#core score store
function core:score_actions/store

#tag
tag @a[tag=player,tag=Falling_sky] remove in_game
tag @a[tag=Falling_sky] remove Falling_sky