#> Handle all the events related to inventory changes
    #> Called by the "gnottero:isotope/utils/tool_changed" advancement

    #> Store all the custom tools inside the "TempInv" storage
        data remove storage gnottero:isotope TempInv[]
        data modify storage gnottero:isotope TempInv append from entity @s Inventory[{tag: {ctc: {tool: {}}}}]

    #> Call the "gnottero:isotope/events/tools/scan_storage" function
        function gnottero:isotope/events/tools/scan_storage