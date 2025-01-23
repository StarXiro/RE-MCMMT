$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标: 点亮房间内的所有红石灯。","color":"gold","bold":true}
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间难度: ","color":"white"},{"text":"简单","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间名称: ","color":"white"},{"text":"四季","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"提示: ","color":"green"},{"text":"站在最高处可以看到并打开所有控制红石灯的拉杆。","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "

scoreboard players set @a room_info 0