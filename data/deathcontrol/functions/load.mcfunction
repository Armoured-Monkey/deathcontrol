# load.mcfunction

# Create Scoreboards
scoreboard objectives add dc_config dummy
scoreboard objectives add dc_health health
scoreboard objectives add dc_deaths deathCount


# set default settings
scoreboard players set dc.keepexp dc_config 0
scoreboard players set dc.keepinv dc_config 0
scoreboard players set dc.loot dc_config 0

execute unless score initial dc_config matches 1 run function deathcontrol:initial_load