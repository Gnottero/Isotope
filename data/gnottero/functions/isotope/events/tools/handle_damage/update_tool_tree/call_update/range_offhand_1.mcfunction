#> Check the scoreboard value of the fake player and call the right function
    #> Called by the "" function

    #> Check the scoreboard value of the fake player and call the right function
        execute if score #gn.tool_slot gn.tool_info matches -106 run item replace entity @s weapon.offhand from block ~ ~ ~ container.0
        execute if score #gn.tool_slot gn.tool_info matches 0 run item replace entity @s container.0 from block ~ ~ ~ container.0
        execute if score #gn.tool_slot gn.tool_info matches 1 run item replace entity @s container.1 from block ~ ~ ~ container.0