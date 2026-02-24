*** Settings ***
Library    Browser

Suite Setup    New Browser    headless=False
Suite Teardown    Close Browser

*** Test Cases ***
Open Browser To Demo page
    New Page   https://www.saucedemo.com/


Login To Demo page
    New Page   https://www.saucedemo.com/
    Fill Text    id=user-name    standard_user
    Fill Text    id=password    secret_sauce
    Click    id=login-button
    Wait For Elements State    css=.inventory_list    visible
    ${items}=    Get Elements    css=.inventory_list
    ${item_count}=    Get Length    ${items}

    


