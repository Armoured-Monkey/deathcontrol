# Processing of players when they die
# Called by tick.mcfunction

# Transfers value of dc_xp to dc_xp_process
execute store result score @p dc_xppoints_it run scoreboard players get @p dc_xppoints
execute store result score @p dc_xplevels_it run scoreboard players get @p dc_xplevels

# Begin XP iteration
execute if score keepexp dc_config matches 1 unless score keepinv dc_config matches 1 as @e[type=player, scores={dc_deaths=1..}] run function deathcontrol:process/iterate/xp

# Clear XP upon death when keepexp dc_config is 0. If keep inventory is false xp will drop on the ground, if it is true xp will be deleted.
execute if score keepexp dc_config matches 0 run function deathcontrol:process/removexp

# Give deaths loot table to player when they respawn and resets their dc_deaths score when loot dc_config is 1.
execute if score loot dc_config matches 1 at @e[type=player, scores={dc_deaths=1..}] run function deathcontrol:process/giveloot

# Resets dc_deaths for player
execute unless score loot dc_config matches 1 run scoreboard players set @e[type=player,scores={dc_deaths=1..}] dc_deaths 0

# Remove life from player if enabled
execute if score lives dc_config matches 1 run scoreboard players remove @s dc_lives 1
