#gengerate index
execute store result storage mcmmt:fallingsky modifier.index int 1 run random value 1..7
function fallingsky:announcements/death_message/private/choose with storage mcmmt:fallingsky death
execute as @s run function fallingsky:announcements/death_message/private/generate with storage mcmmt:fallingsky death

#铁砧\方块消失\双倍时间\跳跃提升\\