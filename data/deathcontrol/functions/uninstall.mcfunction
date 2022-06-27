scoreboard objectives remove dc_health
scoreboard objectives remove dc_config
scoreboard objectives remove dc_deaths
# scoreboard objectives remove dc_xppoints
# scoreboard objectives remove dc_xplevels

tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s {"text":"Traces of Death Control have been removed, it is safe to disable this data pack."}
tellraw @s {"text":"Please check that your gamerules are correct.","color":"#e25903"}
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
