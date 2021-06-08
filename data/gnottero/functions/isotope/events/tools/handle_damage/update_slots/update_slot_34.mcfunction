#> Handle the update of the current slot. Call the required item modifiers
    #> Called by the "gnottero:custom_durability_test/events/tools/handle_damage/update_durability" function

    #> Call the item modifiers
        item modify entity @s container.34 gnottero:tools/update_tool_data
        data modify storage gnottero:custom_tool_durability TempInv[0].tag.ToolDamage set from entity @s Inventory[{Slot: 34b}].tag.Damage
        item modify entity @s container.34 gnottero:tools/update_tool_damage

