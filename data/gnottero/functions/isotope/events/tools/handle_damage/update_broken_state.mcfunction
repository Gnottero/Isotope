#> Replace the real tool with a clock and set the "broken" tag to 1b
    #> Called by the "gnottero:isotope/events/tools/handle_damage/calc_damage" function

    #> Call the "" function if the value of the "#gn.generate_broken_item" fake player matches 1
        execute if score #gn.generate_broken_item gn.tool_info matches 1 run function gnottero:isotope/events/tools/handle_damage/broken_state/generate_broken_item
        execute if score #gn.generate_broken_item gn.tool_info matches 0 run data modify storage gnottero:isotope TempInv[0].id set value "minecraft:air"

    #> Call the "" function
        function gnottero:isotope/events/tools/handle_damage/update_durability

    #> Send a message to tell the user that the tool is broken
        execute if score #gn.send_debug_message gn.tool_info matches 1 run tellraw @s {"text": "[Durability Checker]> Your item is broken", "color": "gold"}