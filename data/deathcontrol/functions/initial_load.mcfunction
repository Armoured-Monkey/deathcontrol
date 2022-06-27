# Called by load.mcfunction (tag)
# Only if the function is yet to be called. This function should only run once, when the pack is first installed. 

scoreboard players set keepexp dc_config 0
scoreboard players set keepinv dc_config 0
scoreboard players set loot dc_config 0
scoreboard players set initial dc_config 1
scoreboard players set initial dc_lives 5