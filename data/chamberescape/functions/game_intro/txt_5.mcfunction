tellraw @a {"text": "------------------------------", "color": "green"}
tellraw @a [{"text": "游戏规则：", "color": "aqua","italic": true}]
tellraw @a [{"text": "- 使用重置道具可以帮助你脱离卡死、重置地图，但不会重置房间计时器", "color": "gray"}]
tellraw @a [{"text": " ", "color": "gray"}]
tellraw @a [{"text": "- 如果你离开某个房间，你身上的所有属性和物品将会被清空！", "color": "gray"}]
tellraw @a [{"text": " ", "color": "gray"}]
tellraw @a [{"text": "- 死亡惩罚：如果你在房间中死亡，将会失去自身分数的20%并复活在初始房间", "color": "gray"}]
tellraw @a [{"text": " ", "color": "gray"}]
tellraw @a [{"text": "- 时间限制：如果你未能在时间结束前从游戏出口离开，身上的分数将全部消失", "color": "gray"}]
tellraw @a {"text": "------------------------------", "color": "green"}
schedule function chamberescape:game_intro/txt_6 200t