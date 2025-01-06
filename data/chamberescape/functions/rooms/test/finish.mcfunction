$execute positioned ~-15 ~-3 ~-15 store result score @s room_player_count run execute if entity @a[tag=Chamber_escape,team=$(color),dx=30,dy=30,dz=30]
execute at @s run function chamberescape:score_action/finish with entity @s data
execute at @s run function chamberescape:broadcast/finish with entity @s data
$data modify storage mcmmt:core scoreboard.content.room_name set value "$(room)"
$scoreboard players add $(color) game_room_finish 1
function chamberescape:score_action/update
tag @s add finished