#> This function will run on datapack loading

    #> Forceload the "-30000000 1600" chunk
        forceload remove -30000000 1600
        forceload add -30000000 1600

    #> Place an oak wall sign to get item names 
        execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]

    #> Initialize all the needed scoreboards
        scoreboard objectives add gn.tool_info dummy

    #> Initialize all the constants
        scoreboard players set #gn.tool_durability_constant gn.tool_info 100

    #> Initialize all the configs
        scoreboard players set #gn.generate_broken_item gn.tool_info 1
        scoreboard players set #gn.send_debug_message gn.tool_info 0