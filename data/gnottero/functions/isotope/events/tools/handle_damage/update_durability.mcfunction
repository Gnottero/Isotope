#> Based on the "#gn.tool_slot" fake player value call the right function to update tool data
    #> Called by the "gnottero:isotope/events/tools/handle_damage/calc_damage" function

    #> Call the "gnottero:isotope/events/tools/handle_damage/set_empty_line" function to set an empty lore line
        execute unless data storage gnottero:isotope TempInv[0].tag.hasEmptyLore run function gnottero:isotope/events/tools/handle_damage/set_empty_line

    #> Remove the last line of the lore
        data remove storage gnottero:isotope TempInv[0].tag.display.Lore[-1]

    #> Call the right function based on the scoreboard value of the "#gn.tool_slot" fake player
        execute if score #gn.tool_slot gn.tool_info matches 0 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_0
        execute if score #gn.tool_slot gn.tool_info matches 1 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_1
        execute if score #gn.tool_slot gn.tool_info matches 2 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_2
        execute if score #gn.tool_slot gn.tool_info matches 3 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_3
        execute if score #gn.tool_slot gn.tool_info matches 4 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_4
        execute if score #gn.tool_slot gn.tool_info matches 5 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_5
        execute if score #gn.tool_slot gn.tool_info matches 6 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_6
        execute if score #gn.tool_slot gn.tool_info matches 7 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_7
        execute if score #gn.tool_slot gn.tool_info matches 8 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_8
        execute if score #gn.tool_slot gn.tool_info matches 9 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_9
        execute if score #gn.tool_slot gn.tool_info matches 10 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_10
        execute if score #gn.tool_slot gn.tool_info matches 11 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_11
        execute if score #gn.tool_slot gn.tool_info matches 12 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_12
        execute if score #gn.tool_slot gn.tool_info matches 13 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_13
        execute if score #gn.tool_slot gn.tool_info matches 14 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_14
        execute if score #gn.tool_slot gn.tool_info matches 15 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_15
        execute if score #gn.tool_slot gn.tool_info matches 16 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_16
        execute if score #gn.tool_slot gn.tool_info matches 17 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_17
        execute if score #gn.tool_slot gn.tool_info matches 18 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_18
        execute if score #gn.tool_slot gn.tool_info matches 19 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_19
        execute if score #gn.tool_slot gn.tool_info matches 20 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_20
        execute if score #gn.tool_slot gn.tool_info matches 21 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_21
        execute if score #gn.tool_slot gn.tool_info matches 22 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_22
        execute if score #gn.tool_slot gn.tool_info matches 23 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_23
        execute if score #gn.tool_slot gn.tool_info matches 24 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_24
        execute if score #gn.tool_slot gn.tool_info matches 25 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_25
        execute if score #gn.tool_slot gn.tool_info matches 26 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_26
        execute if score #gn.tool_slot gn.tool_info matches 27 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_27
        execute if score #gn.tool_slot gn.tool_info matches 28 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_28
        execute if score #gn.tool_slot gn.tool_info matches 29 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_29
        execute if score #gn.tool_slot gn.tool_info matches 30 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_30
        execute if score #gn.tool_slot gn.tool_info matches 31 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_31
        execute if score #gn.tool_slot gn.tool_info matches 32 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_32
        execute if score #gn.tool_slot gn.tool_info matches 33 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_33
        execute if score #gn.tool_slot gn.tool_info matches 34 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_34
        execute if score #gn.tool_slot gn.tool_info matches 35 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_35
        execute if score #gn.tool_slot gn.tool_info matches 100 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_feet
        execute if score #gn.tool_slot gn.tool_info matches 101 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_legs
        execute if score #gn.tool_slot gn.tool_info matches 102 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_chest
        execute if score #gn.tool_slot gn.tool_info matches 103 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_head
        execute if score #gn.tool_slot gn.tool_info matches -106 run function gnottero:isotope/events/tools/handle_damage/update_slots/update_slot_offhand

    #> Revoke the "gnottero:isotope/utils/prevent_last_use" advancement if needed
        execute if score #gn.generate_broken_item gn.tool_info matches 1 if entity @s[advancements={gnottero:isotope/utils/prevent_last_use=true}] run advancement revoke @s only gnottero:isotope/utils/prevent_last_use