*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC01_OpenBrowser
    open browser    http://www.google.com    Chrome
    Close Browser
