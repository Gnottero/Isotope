#> Modify the lore in order to not overwrite any lore line
    #> Called by the "gnottero:isotope/events/tools/handle_damage/update_durability" function

    #> Set a new tag to mark that the new line was added
        data modify storage gnottero:isotope TempInv[0].tag.hasEmptyLore set value 1

    #> Add an empty line
        data modify storage gnottero:isotope TempInv[0].tag.display.Lore append value '{"text": ""}'
    