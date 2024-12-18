tellraw @s "当前个人积分:"
tellraw @s " "
data modify storage mcmmt:core utils.scoreboard_sort.scoreboardname set value "core_player_score"
data modify storage mcmmt:core utils.scoreboard_sort.loop_max set value 32
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort
execute as @a if score @s core_player_score = 1 core_scoreboard_sort_rank run tag @s add rank1
execute as @a if score @s core_player_score = 2 core_scoreboard_sort_rank run tag @s add rank2
execute as @a if score @s core_player_score = 3 core_scoreboard_sort_rank run tag @s add rank3
execute as @a if score @s core_player_score = 4 core_scoreboard_sort_rank run tag @s add rank4
execute as @a if score @s core_player_score = 5 core_scoreboard_sort_rank run tag @s add rank5
execute as @r[tag=rank1] run tellraw @a[scores={personalscore=1..}] {"translate":"1. %s: %s","with":[{"selector":"@a[tag=rank1]"},{"score":{"name":"@a[tag=rank1,limit=1]","objective":"core_player_score"}}]}
execute as @r[tag=rank2] run tellraw @a[scores={personalscore=1..}] {"translate":"2. %s: %s","with":[{"selector":"@a[tag=rank2]"},{"score":{"name":"@a[tag=rank2,limit=1]","objective":"core_player_score"}}]}
execute as @r[tag=rank3] run tellraw @a[scores={personalscore=1..}] {"translate":"3. %s: %s","with":[{"selector":"@a[tag=rank3]"},{"score":{"name":"@a[tag=rank3,limit=1]","objective":"core_player_score"}}]}
execute as @r[tag=rank4] run tellraw @a[scores={personalscore=1..}] {"translate":"4. %s: %s","with":[{"selector":"@a[tag=rank4]"},{"score":{"name":"@a[tag=rank4,limit=1]","objective":"core_player_score"}}]}
execute as @r[tag=rank5] run tellraw @a[scores={personalscore=1..}] {"translate":"5. %s: %s","with":[{"selector":"@a[tag=rank5]"},{"score":{"name":"@a[tag=rank5,limit=1]","objective":"core_player_score"}}]}
tag @a remove rank1
tag @a remove rank2
tag @a remove rank3
tag @a remove rank4
tag @a remove rank5
tellraw @s " "
tellraw @s {"translate":"%s. %s: %s","with":[{"score":{"name":"@s","objective":"core_scoreboard_sort_prank"}},{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
scoreboard players set @s personalscore 0
scoreboard players enable @a personalscore