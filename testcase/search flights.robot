*** Settings ***
Resource    ../resource/import/import.robot
*** Test Cases ***
TC001: follow search flights
    open website
    choose airports
    choose date
#    choose slots
    search flights
    close website
