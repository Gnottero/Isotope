#> Based on the "#gn.tool_slot" fake player value call the right function to update tool data
    #> Called by the "gnottero:isotope/events/tools/handle_damage/calc_damage" function

    #> Call the "gnottero:isotope/events/tools/handle_damage/set_empty_line" function to set an empty lore line
        execute unless data storage gnottero:isotope TempInv[0].tag.hasEmptyLore run function gnottero:isotope/events/tools/handle_damage/set_empty_line

    #> Remove the last line of the lore
        data remove storage gnottero:isotope TempInv[0].tag.display.Lore[-1]

    #> Call the "" function at the barrel position to modify the item applying the updated data from the "" storage
        execute positioned -30000000 1 1603 run function gnottero:isotope/events/tools/handle_damage/update_item_data

    #> Revoke the "gnottero:isotope/utils/prevent_last_use" advancement if needed
        execute if score #gn.generate_broken_item gn.tool_info matches 1 if entity @s[advancements={gnottero:isotope/utils/prevent_last_use=true}] run advancement revoke @s only gnottero:isotope/utils/prevent_last_use