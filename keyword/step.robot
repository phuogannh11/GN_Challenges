*** Settings ***
Resource    ../resource/import/import.robot

*** Keywords ***
open website
    Open Browser    ${url}      ${broswer}
    Maximize Browser Window
    Reload Page
close website
    Close All Browsers
choose airports
    Click Element    ${flight_search_form}
    Wait Until Element Is Enabled    ${flight_search_form_input}    10s
    Input Text    ${flight_search_form_input}    han
    Wait Until Element Is Enabled    ${flight_search_form_pop_up}    10s
    Click Element           xpath=${Ha_Noi}
    
    Sleep    3
    Wait Until Element Is Enabled    ${flight_to_des_input}    10s
    Input Text    ${flight_to_des_input}    ho c
    Wait Until Element Is Enabled    ${flight_to_des_pop_up}    10s
    Sleep    3
    Click Element           xpath=${Ho_Chi_Minh}
choose date
    Wait Until Element Is Visible    ${departure_date_flight}    10s
    Click Element    ${departure_date_flight}

    Wait Until Element Is Visible    ${datepicker_departure}    10s
    Click Element    ${datepicker_departure}

    Wait Until Element Is Visible    ${returning_date_flight}    10s
    Click Element    ${returning_date_flight}

    Wait Until Element Is Visible    ${datepicker_return}    10s
    Click Element    ${datepicker_return}
choose slots
    Wait Until Element Is Visible    ${flight_passenger}    10s
    Click Element    ${flight_passenger}

    Wait Until Element Is Visible    ${pop_up_flight_passenger}    10s
    Click Element           xpath=${pop_up_flight_passenger}
search flights
    Click Button    ${search_button}
    Wait Until Page Contains Element    ${area_filter_flight_depart}

