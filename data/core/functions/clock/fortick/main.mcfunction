execute as @e[tag=counting] run scoreboard players add @s core_clock 1
execute as @e[tag=counting] run function core:clock/fortick/private/main
schedule function core:clock/fortick/main 1t