$tellraw @a[team=$(name)] ""
$tellraw @a[team=$(name)] "队伍内玩家表现: "
$execute as @a[team=$(name)] run tellraw @a[team=$(name)] {"translate":"▶ %s 完成%s个房间: %spts","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"room_finish_count"},"color":"aqua"},{"score":{"name":"@s","objective":"game_player_score"},"color":"gold"}]}
$tellraw @a[team=$(name)] ""