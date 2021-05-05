#> Handle the update of the current slot. Call the required item modifiers
    #> Called by the "gnottero:isotope/events/tools/handle_damage/update_broken_state" function

    #> Change the tool item with a clock and store the modified data in the clock
        item entity @s armor.feet replace minecraft:clock
        item entity @s armor.feet modify gnottero:tools/broken_tool
