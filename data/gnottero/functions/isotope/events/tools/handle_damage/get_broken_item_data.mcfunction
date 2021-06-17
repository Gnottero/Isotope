#> Get all the needed information of the broken item
    #> Called by the "" function

    #> Set the broken state to the tool
        data modify storage gnottero:isotope TempInv[0].tag.ctc.tool.broken set value 1b

    #> Replace the last line of the lore
        data modify storage gnottero:isotope TempInv[0].tag.display.Lore[-1] set value '{"text": "Broken", "color": "red", "italic": false}'

    #> Change the values of the "Damage" and "ToolDamage" tags and set them to 0
        data modify storage gnottero:isotope TempInv[0].tag.Damage set value 0
        data modify storage gnottero:isotope TempInv[0].tag.ToolDamage set value 0

    #> Set the value of the "ToolItem" tag
        data modify storage gnottero:isotope TempInv[0].tag.ToolItem set from storage gnottero:isotope TempInv[0].id

    #> Store the gametime in the "TempInv[0].tag.UniqueIdentifier" tag
        execute store result storage gnottero:isotope TempInv[0].tag.UniqueIdentifier long 1 run time query gametime

    #> Call the "gnottero:isotope/events/tools/handle_damage/get_name_string" function if the item doesn't have a custom name
        execute unless data storage gnottero:isotope TempInv[0].tag.display.Name run function gnottero:isotope/events/tools/handle_damage/get_name_string