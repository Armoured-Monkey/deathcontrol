# load.mcfunction
# Called by minecrafft:load tag

# Create Scoreboards
scoreboard objectives add dc_config dummy
scoreboard objectives add dc_health health
scoreboard objectives add dc_deaths deathCount
scoreboard objectives add dc_xppoints dummy
scoreboard objectives add dc_xplevels dummy
scoreboard objectives add dc_xppoints_it dummy 
scoreboard objectives add dc_xplevels_it dummy 
scoreboard objectives add dc_lives dummy 
scoreboard objectives add dc_initlives dummy 

# Sets zero to 0
scoreboard players set zero dc_config 0

# Sets immediate respawn to false
gamerule doImmediateRespawn false

# Checks for first time load
execute unless score initial dc_config matches 1 run function deathcontrol:initial_load