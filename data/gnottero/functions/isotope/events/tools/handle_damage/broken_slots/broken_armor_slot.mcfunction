#> Handle the update of the current slot. Call the required item modifiers
    #> Called by the "gnottero:isotope/events/tools/handle_damage/update_broken_state" function

    #> Summon a placeholder item
        summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock", Count:1b}, Tags:["gn.broken_placeholder"], Invulnerable:1b, PickupDelay:0s}

    #> Modify the data of the placeholder
        data modify entity @e[type=minecraft:item, limit=1, sort=nearest, tag=gn.broken_placeholder, nbt={Item:{id:"minecraft:clock"}}] Item.tag set from storage gnottero:isotope TempInv[0].tag

    #> Remove the "" tag from the placeholder
        tag @e[type=minecraft:item, limit=1, sort=nearest, tag=gn.broken_placeholder, nbt={Item:{id:"minecraft:clock"}}] remove gn.broken_placeholder

    #> Remove the item from the Inventory Slot
        execute if score #gn.tool_slot gn.tool_info matches 100 run item replace entity @s armor.feet with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 101 run item replace entity @s armor.legs with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 102 run item replace entity @s armor.chest with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 103 run item replace entity @s armor.head with minecraft:air
