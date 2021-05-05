#> Calculate left durability and the damage to display and store the custom damage in the "TempInv" storage
    #> Called by the "gnottero:isotope/events/tools/handle_damage/main" function
    
    #> Calculate current left durability
        execute store result score #gn.remaining_durability gn.tool_info run scoreboard players operation #gn.tool_durability_copy gn.tool_info -= #gn.custom_tool_damage gn.tool_info

    #> Calculate the damage to display
        scoreboard players operation #gn.display_durability gn.tool_info = #gn.remaining_durability gn.tool_info
        scoreboard players operation #gn.display_durability gn.tool_info *= #gn.tool_durability_constant gn.tool_info
        scoreboard players operation #gn.display_durability gn.tool_info /= #gn.tool_durability gn.tool_info

    #> Store the custom damage in the "TempInv" storage
        execute store result storage gnottero:isotope TempInv[0].tag.ctc.tool.damage int 1 run scoreboard players get #gn.custom_tool_damage gn.tool_info

    #> Based on the damage value, call the right function
        execute if score #gn.custom_tool_damage gn.tool_info < #gn.tool_durability gn.tool_info run function gnottero:isotope/events/tools/handle_damage/update_durability
        execute if score #gn.custom_tool_damage gn.tool_info >= #gn.tool_durability gn.tool_info run function gnottero:isotope/events/tools/handle_damage/update_broken_state

    #> Revoke the "gnottero:isotope/utils/tool_changed" advancement
        advancement revoke @s only gnottero:isotope/utils/tool_changed