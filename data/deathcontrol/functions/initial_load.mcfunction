# Called by load.mcfunction (tag)
# Only if the function is yet to be called. This function should only run once, when the pack is first installed. 

scoreboard players set dc.keepexp dc_config 0
scoreboard players set dc.keepinv dc_config 0
scoreboard players set dc.loot dc_config 0
scoreboard players set initial dc_config 1