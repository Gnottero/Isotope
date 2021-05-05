#> Remove the first element of the "TempInv" storage, if there are still elements in the "TempInv" storage call the "gnottero:isotope/events/tools/scan_storage" function and revoke the "gnottero:isotope/utils/tool_changed" advancement
    #> Called by the "gnottero:isotope/events/tools/scan_storage" function

    #> Remove the first element of the "TempInv" storage
        data remove storage gnottero:isotope TempInv[0]

    #> If there are still elements in the "TempInv" storage, call the "gnottero:isotope/events/tools/scan_storage" function
        execute if data storage gnottero:isotope TempInv[] run function gnottero:isotope/events/tools/scan_storage

    #> Revoke the "gnottero:isotope/utils/tool_changed" advancement
        advancement revoke @s only gnottero:isotope/utils/tool_changed