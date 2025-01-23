$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标: 使用提供的红石粉点亮红石灯","color":"gold","bold":true}
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间难度: ","color":"white"},{"text":"好困难","color":"red"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间名称: ","color":"white"},{"text":"红温信号","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"提示: ","color":"green"},{"text":"合理激活中继器来存储红石信号或将信号穿墙运输。","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "

scoreboard players set @a room_info 0