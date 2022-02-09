*** Settings ***
Library           RPA.Excel.Files
Library           RPA.Tables

*** Test Cases ***
Readexcel
    open excel    C:/RobotFramework_Project/Demo.xlsx
