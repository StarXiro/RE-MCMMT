#death message
execute store result storage mcmmt:fallingsky death.index int 1 run random value 1..7
function fallingsky:announcements/death_message/private/choose with storage mcmmt:fallingsky death
execute as @s run function fallingsky:announcements/death_message/private/generate with storage mcmmt:fallingsky death
execute if score all game_finish_count matches 4 run tellraw @s {"translate":"%s 你的本轮存活排名为第%s名。","with":[{"text":"[+16 pts]","color":"gold"},{"text":"4","color":"white"}]}
execute if score all game_finish_count matches 3 run tellraw @s {"translate":"%s 你的本轮存活排名为第%s名。","with":[{"text":"[+36 pts]","color":"gold"},{"text":"3","color":"#b87333"}]}
execute if score all game_finish_count matches 2 run tellraw @s {"translate":"%s 你的本轮存活排名为第%s名。","with":[{"text":"[+60 pts]","color":"gold"},{"text":"2","color":"#c0c0c0"}]}
execute if score all game_finish_count matches 1 run tellraw @s {"translate":"%s 你的本轮存活排名为第%s名。","with":[{"text":"[+90 pts]","color":"gold"},{"text":"1","color":"#ffd700"}]}

#scoreboard
scoreboard players set @s game_finish_count 0