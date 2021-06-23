#> Check the "" tag from the "" storage and based on its value call the right function
    #> Called by the "" function

    #> Based on the tag value, call the right function
        execute if data storage gnottero:isotope TempInv[0].tag.ctc.tool{broken: 0b} run function gnottero:isotope/events/tools/handle_damage/update_armor/update_armor
        execute if data storage gnottero:isotope TempInv[0].tag.ctc.tool{broken: 1b} at @s run function gnottero:isotope/events/tools/handle_damage/update_armor/break_armor