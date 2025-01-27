$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标: 根据两角的羊毛在对应地板上复刻建筑。","color":"gold","bold":true}
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间难度: ","color":"white"},{"text":"中等","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间名称: ","color":"white"},{"text":"叠影迷踪","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"提示: ","color":"green"},{"text":"灰白方块可以帮助你进行定位。","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "

scoreboard players set @a room_info 0