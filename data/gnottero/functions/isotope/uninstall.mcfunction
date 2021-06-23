#> This is the uninstall function

    #> Remove all the scoreboards
        scoreboard objectives remove gn.tool_info

    #> Remove both the sign and the barrel
        execute if block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:air
        execute if block -30000000 1 1603 minecraft:barrel run setblock -30000000 1 1603 minecraft:air

    #> Remove forceloaded chunks
        forceload remove -30000000 1600