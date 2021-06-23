#> Update the data of the item inside the storage and then, when all the operations are finished, put the item inside the barrel
    #> Called by the "" function

    #> Store the item inside the test barrel
        data modify block ~ ~ ~ Items append from storage gnottero:isotope TempInv[0]

    #> Apply the "" item modifier to the item inside the first slot of the barrel
        item modify block ~ ~ ~ container.0 gnottero:tools/update_tool_data

    #> Modify the "ToolDamage" tag setting it from the "Damage" tag
        execute if entity @s[advancements={gnottero:isotope/utils/prevent_last_use=false}] run data modify block ~ ~ ~ Items[{Slot: 0b}].tag.ToolDamage set from block ~ ~ ~ Items[{Slot: 0b}].tag.Damage

    #> Call the "" function to start the function tree search
        function gnottero:isotope/events/tools/handle_damage/update_tool_tree/start_tree