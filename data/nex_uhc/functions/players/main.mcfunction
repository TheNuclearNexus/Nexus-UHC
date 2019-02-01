scoreboard players enable @s[tag=nex_uhc.operator] nex_uhc.a.start
scoreboard players enable @s[tag=nex_uhc.operator] nex_uhc.a.config
scoreboard players enable @s[tag=nex_uhc.operator] nex_uhc.a.length
scoreboard players enable @s[tag=nex_uhc.operator] nex_uhc.a.reset
scoreboard players enable @s[tag=nex_uhc.operator] nex_uhc.a.size

scoreboard players enable @s nx.join_team
scoreboard players enable @s nx.leave_team
scoreboard players enable @s nx.ready

execute if score @s nx.ready matches 1.. run function nex_uhc:players/commands/default/nx_ready
execute if score @s nex_uhc.a.length matches 1.. run function nex_uhc:players/commands/admin/admin_length
