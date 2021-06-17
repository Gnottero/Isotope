#> Replace the real tool with a clock and set the "broken" tag to 1b
    #> Called by the "gnottero:isotope/events/tools/handle_damage/calc_damage" function

    #> Call the "" function if the value of the "#gn.generate_broken_item" fake player matches 1
        execute if score #gn.generate_broken_item gn.tool_info matches 1 run function gnottero:isotope/events/tools/handle_damage/get_broken_item_data

    #> Call the right function based on the scoreboard value of the "#gn.tool_slot" fake player
        execute if score #gn.tool_slot gn.tool_info matches 0 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_0
        execute if score #gn.tool_slot gn.tool_info matches 1 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_1
        execute if score #gn.tool_slot gn.tool_info matches 2 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_2
        execute if score #gn.tool_slot gn.tool_info matches 3 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_3
        execute if score #gn.tool_slot gn.tool_info matches 4 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_4
        execute if score #gn.tool_slot gn.tool_info matches 5 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_5
        execute if score #gn.tool_slot gn.tool_info matches 6 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_6
        execute if score #gn.tool_slot gn.tool_info matches 7 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_7
        execute if score #gn.tool_slot gn.tool_info matches 8 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_8
        execute if score #gn.tool_slot gn.tool_info matches 9 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_9
        execute if score #gn.tool_slot gn.tool_info matches 10 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_10
        execute if score #gn.tool_slot gn.tool_info matches 11 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_11
        execute if score #gn.tool_slot gn.tool_info matches 12 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_12
        execute if score #gn.tool_slot gn.tool_info matches 13 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_13
        execute if score #gn.tool_slot gn.tool_info matches 14 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_14
        execute if score #gn.tool_slot gn.tool_info matches 15 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_15
        execute if score #gn.tool_slot gn.tool_info matches 16 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_16
        execute if score #gn.tool_slot gn.tool_info matches 17 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_17
        execute if score #gn.tool_slot gn.tool_info matches 18 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_18
        execute if score #gn.tool_slot gn.tool_info matches 19 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_19
        execute if score #gn.tool_slot gn.tool_info matches 20 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_20
        execute if score #gn.tool_slot gn.tool_info matches 21 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_21
        execute if score #gn.tool_slot gn.tool_info matches 22 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_22
        execute if score #gn.tool_slot gn.tool_info matches 23 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_23
        execute if score #gn.tool_slot gn.tool_info matches 24 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_24
        execute if score #gn.tool_slot gn.tool_info matches 25 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_25
        execute if score #gn.tool_slot gn.tool_info matches 26 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_26
        execute if score #gn.tool_slot gn.tool_info matches 27 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_27
        execute if score #gn.tool_slot gn.tool_info matches 28 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_28
        execute if score #gn.tool_slot gn.tool_info matches 29 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_29
        execute if score #gn.tool_slot gn.tool_info matches 30 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_30
        execute if score #gn.tool_slot gn.tool_info matches 31 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_31
        execute if score #gn.tool_slot gn.tool_info matches 32 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_32
        execute if score #gn.tool_slot gn.tool_info matches 33 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_33
        execute if score #gn.tool_slot gn.tool_info matches 34 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_34
        execute if score #gn.tool_slot gn.tool_info matches 35 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_35
        execute if score #gn.tool_slot gn.tool_info matches 100..103 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_armor_slot
        execute if score #gn.tool_slot gn.tool_info matches -106 run function gnottero:isotope/events/tools/handle_damage/broken_slots/broken_slot_offhand

    #> Send a message to tell the user that the tool is broken
        execute if score #gn.send_debug_message gn.tool_info matches 1 run tellraw @s {"text": "[Durability Checker]> Your item is broken", "color": "gold"}