*** Settings ***
Resource          Userdefinedkeywords.txt

*** Variables ***
${var1}           4    # my first scalar variable
${var2}           4    # is my second scalAr variable
@{USER}           Raghu    Robotframework
&{Credentials}    username=raghu    password=raghu

*** Test Cases ***
TC_01
    [Documentation]    This is first testcase compare two variables.
    ...    *Testcase 01* _it is in Italic_
    ...    link: https://www.google.com
    [Tags]    LOGIN
    Should Be Equal    ${var1}    ${var2}

TC_02
    [Setup]    SetupDemo
    Should Not Be Equal As Strings    @ {USER}[0]    @ {USER} [1]
    [Teardown]    TeardownDemo

TC_04
    Should Not Be Equal As Strings    & {Credentials}[username]    & {Credentials}[password]

TC_05
    Should Be True    4    4

TC06
    [Template]    Should Be Equal As Integers    # This is Template
    [Timeout]    1 minute 20 seconds    # this is my test timeout
    4    4
    6    6
    9    9
    13    13

TC_07
    Comparetwovariables

*** Keywords ***
SetupDemo
    Log To Console    This is setup method

TeardownDemo
    Log To Console    This is teardown
