tellraw @a [{"text":"Thank you for installing: ","color":"green"},{"text":"Nexus' UHC","color":"gold"}]
tellraw @a [{"text":"\nIf you're an operator please give yourself the ","color":"green"},{"text":"nex_uhc.operator","color":"gold"},{"text":" tag.","color":"green"}]

#Default Commands
scoreboard objectives add nx.join_team trigger "nex_uhc.d.join_team"
scoreboard objectives add nx.leave_team trigger "nex_uhc.d.leave_team"
scoreboard objectives add nx.ready trigger

#Admin Commands
scoreboard objectives add nex_uhc.a.start trigger
scoreboard objectives add nex_uhc.a.length trigger
scoreboard objectives add nex_uhc.a.config trigger
scoreboard objectives add nex_uhc.a.reset trigger
scoreboard objectives add nex_uhc.a.size trigger

#Data Scores
scoreboard objectives add nex_uhc.d.data1 dummy
scoreboard objectives add nex_uhc.d.ints dummy
##Setup Ints
scoreboard players set 20 nex_uhc.d.ints 20

worldborder center ~ ~

bossbar add nex_uhc.ready_players [{"text":"Ready Players","color":"green"}]
bossbar set nex_uhc.ready_players color green

scoreboard players set nex_uhc.game_started nex_uhc.d.data1 0
