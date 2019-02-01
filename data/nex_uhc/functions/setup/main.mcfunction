execute as @a at @a run function nex_uhc:players/main

execute store result score nex_uhc.ready_players nex_uhc.d.data1 if entity @a[tag=nex_uhc.p.ready]
execute store result score nex_uhc.total_players nex_uhc.d.data1 run list

execute store result bossbar nex_uhc.ready_players max run scoreboard players get nex_uhc.total_players nex_uhc.d.data1
execute store result bossbar nex_uhc.ready_players value run scoreboard players get nex_uhc.ready_players nex_uhc.d.data1

execute if score nex_uhc.game_started nex_uhc.d.data1 matches 0 run bossbar set nex_uhc.ready_players players @a
execute if score nex_uhc.game_started nex_uhc.d.data1 matches 0 run bossbar set nex_uhc.ready_players visible true
execute if score nex_uhc.game_started nex_uhc.d.data1 matches 1 run bossbar set nex_uhc.ready_players visible false
