# Iterates re-adding experience when a player dies
# Called by process.mcfunction

execute if score @p dc_xplevels_it > zero dc_config run function deathcontrol:process/iterate/levels
execute if score @p dc_xppoints_it > zero dc_config run function deathcontrol:process/iterate/points