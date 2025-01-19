#init
#schedule countdown
tp @a[team=red,tag=Chamber_escape] 1888 101 1941 180 0
tp @a[team=orange,tag=Chamber_escape] 2888 101 2941 180 0
tp @a[team=yellow,tag=Chamber_escape] 3888 101 3941 180 0
tp @a[team=lime,tag=Chamber_escape] 4888 101 4941 180 0
tp @a[team=green,tag=Chamber_escape] 5888 101 5941 180 0
tp @a[team=blue,tag=Chamber_escape] 6888 101 6941 180 0
tp @a[team=aqua,tag=Chamber_escape] 7888 101 7941 180 0
tp @a[team=pink,tag=Chamber_escape] 8888 101 8941 180 0

schedule function chamberescape:game_process/in_game 1778t
schedule function core:countdown/start 1478t
