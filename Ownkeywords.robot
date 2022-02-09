*** Settings ***
Library           ../../RobotFramework_Project/Myfile.py
Library           ../../RobotFramework_Project/Join2strings.py
Library           ../../RobotFramework_Project/excelownkw.py

*** Test Cases ***
Createnewfile_TC01
    Myfile.Createfile    This is MY first Keyword

Join2strings_TC02
    ${var1}    Join Two String    Good Morning    Robot Framework
    log    ${var1}

AddSheetInexistingexcel
    excelownkw.Addsheet    C:/RobotFramework_Project/myexcel.xlsx    RobotFramework
