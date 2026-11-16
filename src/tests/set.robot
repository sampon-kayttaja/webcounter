*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Application

*** Test Cases ***
User can set value to a value
    Go To  ${HOME_URL}
    Get Text  body  *=  nappia painettu 0 kertaa
    Fill Text  input[name="value"]  100
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 100 kertaa