#> Handle the break event for armor pieces. Summon a placeholder item, change its data, remove the "" tag from it and remove the armor piece from player's inventory
    #> Called by the "" function

    #> Summon a placeholder item
        summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone", Count:1b}, Tags:["gn.broken_placeholder"], Invulnerable:1b, PickupDelay:0s}

    #> Modify the data of the placeholder
        data modify entity @e[type=minecraft:item, limit=1, sort=nearest, tag=gn.broken_placeholder, nbt={Item:{id:"minecraft:stone"}}] Item set from block -30000000 1 1603 Items[{Slot:0b}]

    #> Remove the "" tag from the placeholder
        tag @e[type=minecraft:item, limit=1, sort=nearest, tag=gn.broken_placeholder, nbt={Item:{id:"minecraft:stone"}}] remove gn.broken_placeholder

    #> Remove the item from the Inventory Slot
        execute if score #gn.tool_slot gn.tool_info matches 100 run item replace entity @s armor.feet with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 101 run item replace entity @s armor.legs with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 102 run item replace entity @s armor.chest with minecraft:air
        execute if score #gn.tool_slot gn.tool_info matches 103 run item replace entity @s armor.head with minecraft:air