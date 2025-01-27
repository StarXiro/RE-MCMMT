#tag
tag @s remove in_game

#gamemode
gamemode spectator @s

#score
execute as @s run function fallingsky:score_action/eliminated

#death message
function fallingsky:announcements/death_message/main

#cancel loop
scoreboard players set @s death_count 0