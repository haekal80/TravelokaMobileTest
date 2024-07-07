*** Settings ***
Library    AppiumLibrary
Library    DateTime
Library    Collections

*** Keywords ***
Click object "${text}" text
    ${xpath}=    Set Variable    //*[@text='${text}']
    Wait Until Element Is Visible    ${xpath}    10 seconds
    Click Element    ${xpath}
    Sleep    1

Click object field
    [Arguments]    ${object}
    Wait Until Element Is Visible    ${object}    10 seconds
    Click Element    ${object}
    Sleep    1

Select date
    [Arguments]    ${additionalDays}
    ${dateNow}=    Get Current Date
    ${date}=    Add Time To Date    ${dateNow}    ${additionalDays}
    ${convertedDate}=    Convert Date    ${date}    datetime
    ${xpath}=    Set Variable    //android.view.View[@content-desc="${convertedDate.day}"]
    Wait Until Element Is Visible    ${xpath}
    Click Element    ${xpath}
    Sleep    1

Input text notes field
    [Arguments]    ${field}    ${text}
    ${xpath}=    Set Variable    //*[@resource-id='com.traveloka.android.rental_impl:id/widget_${field}']/descendant::*[@resource-id='com.traveloka.android:id/edit_text_field']
    Wait Until Element Is Visible    ${xpath}    10 seconds
    Input Text    ${xpath}    ${text}

Input text field
    [Arguments]    ${xpath}    ${text}
    Wait Until Element Is Visible    ${xpath}
    Input Text    ${xpath}    ${text}