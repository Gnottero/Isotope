#> Handle the update of the boots and leggings slot
    #> Called by the "" function

    #> Based on the scoreboard value, call the right command
        execute if score #gn.tool_slot gn.tool_info matches 100 run item replace entity @s armor.feet from block ~ ~ ~ container.0
        execute if score #gn.tool_slot gn.tool_info matches 101 run item replace entity @s armor.legs from block ~ ~ ~ container.0
        execute if score #gn.tool_slot gn.tool_info matches 102 run item replace entity @s armor.chest from block ~ ~ ~ container.0
        execute if score #gn.tool_slot gn.tool_info matches 103 run item replace entity @s armor.head from block ~ ~ ~ container.0