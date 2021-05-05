#> Scan the "TempInv" storage and check if which tool was damaged/repaired
    #> Called by the "gnottero:isotope/events/tools/main" function
    
    #> Check the first element of the storage
        execute store result score #gn.tool_damage gn.tool_info run data get storage gnottero:isotope TempInv[0].tag.Damage
        execute store result score #gn.tool_damage_copy gn.tool_info run data get storage gnottero:isotope TempInv[0].tag.ToolDamage

    #> If "#gn.tool_damage" is not equal to "#gn.tool_damage_copy" call the "gnottero:isotope/events/tools/handle_damage/main" function
        execute unless score #gn.tool_damage gn.tool_info = #gn.tool_damage_copy gn.tool_info run function gnottero:isotope/events/tools/handle_damage/main

    #> If "#gn.tool_damage" is equal to "#gn.tool_damage_copy" call the "gnottero:isotope/events/tools/handle_damage/equal_damage" function
        execute if score #gn.tool_damage gn.tool_info = #gn.tool_damage_copy gn.tool_info run function gnottero:isotope/events/tools/handle_damage/equal_damage