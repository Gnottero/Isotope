#> Check the scoreboard value of the fake player and call the right function
    #> Called by the "" function

    #> Check the scoreboard value of the fake player and call the right function
        execute if score #gn.tool_slot gn.tool_info matches -106..1 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/call_update/range_offhand_1
        execute if score #gn.tool_slot gn.tool_info matches 2..4 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/call_update/range_2_4
        execute if score #gn.tool_slot gn.tool_info matches 5..7 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/call_update/range_5_7
        execute if score #gn.tool_slot gn.tool_info matches 8..9 run function gnottero:isotope/events/tools/handle_damage/update_tool_tree/call_update/range_8_9