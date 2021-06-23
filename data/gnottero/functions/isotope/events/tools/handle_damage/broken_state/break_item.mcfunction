#> Remove all the tags from the item and set its id to "minecraft:air"
    #> Called by the "" function

    #> Remove all the tags from the item
        data remove storage gnottero:isotope TempInv[0].tag

    #> Set the id of the item to "minecraft:air"
        data modify storage gnottero:isotope TempInv[0].id set value "minecraft:air"