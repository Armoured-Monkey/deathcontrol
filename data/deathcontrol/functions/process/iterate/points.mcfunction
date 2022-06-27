# Adds one xp point to the player then removes 1 from their dc_xppoints_it
# Called by process/iterate/xp.mcfunction and scheduled by self

xp add @p 1 points
scoreboard players remove @p dc_xppoints_it 1
execute if score @p dc_xppoints_it > zero dc_config run schedule function deathcontrol:process/iterate/points 1t