#> Start the process to replace the item in the right slot of the inventory
    #> Called by the "" function

    #> Call the right function based on the scoreboard value of the "#gn.tool_slot" fake player
        execute if score #gn.tool_slot gn.tool_info matches -106..9 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/range_offhand_9
        execute if score #gn.tool_slot gn.tool_info matches 10..19 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/range_10_19
        execute if score #gn.tool_slot gn.tool_info matches 20..29 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/range_20_29
        execute if score #gn.tool_slot gn.tool_info matches 30..103 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/range_30_103
