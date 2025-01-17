#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~4 ~ ~2 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/red
execute if block ~2 ~ ~4 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/orange
execute if block ~-2 ~ ~4 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/yellow
execute if block ~-4 ~ ~2 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/lime
execute if block ~-4 ~ ~-2 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/green
execute if block ~-2 ~ ~-4 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/cyan
execute if block ~4 ~ ~-2 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/blue
execute if block ~2 ~ ~-4 redstone_lamp[lit=true] at @s run function chamberescape:rooms/woolrun/active/purple

execute if block ~4 ~ ~2 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/red
execute if block ~2 ~ ~4 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/orange
execute if block ~-2 ~ ~4 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/yellow
execute if block ~-4 ~ ~2 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/lime
execute if block ~-4 ~ ~-2 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/green
execute if block ~-2 ~ ~-4 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/cyan
execute if block ~4 ~ ~-2 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/blue
execute if block ~2 ~ ~-4 redstone_lamp[lit=false] at @s run function chamberescape:rooms/woolrun/stop/purple

execute if block ~ ~6 ~ stone_pressure_plate[powered=true] run execute at @s run function chamberescape:rooms/woolrun/finish with entity @s data
#?

