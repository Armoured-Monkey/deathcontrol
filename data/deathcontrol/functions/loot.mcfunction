# Handles loot to player when they die if enabled
# Called by tick.mcfunction

loot give @p loot deathcontrol:death
scoreboard players set @p dc_deaths 0
