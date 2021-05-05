#> Main function of the "handle_damage" module. Store all the required informations
    #> Called by the "gnottero:isotope/events/tools/scan_storage" function

    #> Store the slot in which the tool was
        execute store result score #gn.tool_slot gn.tool_info run data get storage gnottero:isotope TempInv[0].Slot
    
    #> Store the custom durability of the item
        execute store result score #gn.tool_durability gn.tool_info run data get storage gnottero:isotope TempInv[0].tag.ctc.tool.durability
    
    #> Store the custom damage of the item
        execute store result score #gn.custom_tool_damage gn.tool_info run data get storage gnottero:isotope TempInv[0].tag.ctc.tool.damage
    
    #> Copy "#gn.tool_durability_copy" value to the "#gn.tool_durability" fake player
        scoreboard players operation #gn.tool_durability_copy gn.tool_info = #gn.tool_durability gn.tool_info

    #> Check if the damage is greater than or less than the value of the "tool_damage_copy" fake player and run the right command
        execute if score #gn.tool_damage gn.tool_info >= #gn.tool_damage_copy gn.tool_info run scoreboard players add #gn.custom_tool_damage gn.tool_info 1 
        execute if score #gn.tool_damage gn.tool_info <= #gn.tool_damage_copy gn.tool_info run scoreboard players remove #gn.custom_tool_damage gn.tool_info 1

    #> Call the "gnottero:isotope/events/tools/handle_damage/calc_damage" function
        function gnottero:isotope/events/tools/handle_damage/calc_damage






    