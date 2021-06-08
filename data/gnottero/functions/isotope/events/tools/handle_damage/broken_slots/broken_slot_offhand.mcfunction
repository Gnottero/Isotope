#> Handle the update of the current slot. Call the required item modifiers
    #> Called by the "gnottero:custom_durability_test/events/tools/handle_damage/update_broken_state" function

    #> Change the tool item with a clock and store the modified data in the clock
        item replace entity @s weapon.offhand with minecraft:clock
        item modify entity @s weapon.offhand gnottero:tools/broken_tool
