#> Get the name of the item by summoning a copy of it and storing the name in a sign and then in the "TempInv" storage
    #> Called by the "gnottero:isotope/events/tools/handle_damage/update_broken_state" function

    #> Summon a placeholder item
        summon minecraft:item -30000000 0 1603 {Item:{id:"minecraft:stone", Count:1b}, Tags:["gn.string_placeholder"]}

    #> Replace placeholder id with the value inside the "TempInv" storage
        data modify entity @e[type=minecraft:item, limit=1, x=-30000000, y=0, z=1603, dx=0, dy=0, dz=0, tag=gn.string_placeholder] Item.id set from storage gnottero:isotope TempInv[0].id

    #> Replace the oak wall sign with a new one
        setblock -30000000 0 1603 minecraft:air 
        setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]{Text1: '{"selector": "@e[type=minecraft:item, limit=1, x=-30000000, y=0, z=1603, dx=0, dy=0, dz=0, tag=gn.string_placeholder]", "italic":false}'}
    
    #> Remove the item
        kill @e[type=minecraft:item, limit=1, x=-30000000, y=0, z=1603, dx=0, dy=0, dz=0, tag=gn.string_placeholder]

    #> Copy the value of the "Text1" component of the sign inside the "TempInv" storage
        data modify storage gnottero:isotope TempInv[0].tag.display.Name set from block -30000000 0 1603 Text1