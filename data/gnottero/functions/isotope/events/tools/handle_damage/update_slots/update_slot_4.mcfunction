#> Handle the update of the current slot. Call the required item modifiers
    #> Called by the "gnottero:custom_durability_test/events/tools/handle_damage/update_durability" function

    #> Call the item modifiers
        item modify entity @s container.4 gnottero:tools/update_tool_data
        data modify storage gnottero:isotope TempInv[0].tag.ToolDamage set from entity @s Inventory[{Slot: 4b}].tag.Damage
        item modify entity @s container.4 gnottero:tools/update_tool_damage

