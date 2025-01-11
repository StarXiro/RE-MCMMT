
#text_display update
function core:text_display/action/player_score
function core:text_display/action/team_score

function lobby:score_action/update
effect clear @a
effect give @a instant_health 1 3 true
tp @a 400 101 400
gamemode adventure @a[gamemode=!spectator]
gamemode adventure @a[tag=player]
spawnpoint @a 400 101 400
data modify storage mcmmt:core scoreboard.content.score_display set value "当前总积分排名: "
data modify storage mcmmt:core scoreboard.content.count_display set value "在线玩家数"
scoreboard players set room_mode core_scoreboard_display_config 1
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 1
scoreboard players set @a[tag=player] game_finish_count 1
