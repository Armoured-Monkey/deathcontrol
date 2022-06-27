# Uninstall command
# Called by uninstall_warn.mcfunction or by player directly

# Delete scoreboards
scoreboard objectives remove dc_health
scoreboard objectives remove dc_config
scoreboard objectives remove dc_deaths
scoreboard objectives remove dc_xppoints
scoreboard objectives remove dc_xplevels
scoreboard objectives remove dc_xppoints_it
scoreboard objectives remove dc_xplevels_it
scoreboard objectives remove dc_lives
scoreboard objectives remove dc_initlives

# Clear scheduled functions
schedule clear deathcontrol:process/iterate/levels
schedule clear deathcontrol:process/iterate/points

# Confirmation message
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s {"text":"Traces of Death Control have been removed, it is safe to disable this data pack."}
tellraw @s {"text":"Please check that your gamerules are correct.","color":"#e25903"}
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}