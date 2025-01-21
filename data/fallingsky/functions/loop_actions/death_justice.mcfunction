execute as @a[tag=Falling_sky] if score @s death_count matches 1.. run function fallingsky:death_action/main

#loop
schedule function fallingsky:loop_actions/death_justice 1t replace