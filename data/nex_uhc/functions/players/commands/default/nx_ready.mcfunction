execute if entity @s[tag=nex_uhc.p.ready] run scoreboard players set @s nx.ready 100
execute if entity @s[tag=!nex_uhc.p.ready] run scoreboard players set @s nx.ready 101
tag @s[scores={nx.ready=100}] remove nex_uhc.p.ready
execute if score @s nx.ready matches 100 run tellraw @a [{"selector":"@s","color":"gold"},{"text":" decided to back down. ","color":"green"}]

tag @s[scores={nx.ready=101}] add nex_uhc.p.ready
execute if score @s nx.ready matches 101 run tellraw @a [{"selector":"@s","color":"gold"},{"text":" is ready for battle! ","color":"green"}]

scoreboard players set @s nx.ready 0
