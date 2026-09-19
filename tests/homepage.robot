*** Settings ***
Documentation    To test the homepage of the website
Library    SeleniumLibrary

*** Test Cases ***
Validate Homepage Details
    [Documentation]    This test case validates the homepage details of the website.
    Navigate to Homepage
    Accept Cookies for website
    Validate Homepage Category section
    
    
    
**** Keywords ***
Navigate to Homepage
      [Documentation]    This keyword navigates to the homepage of the website.
    create WebDriver     Chrome
    Go To                https://www.electrolux.it/
    Maximize Browser Window
Accept Cookies for website
    [Documentation]    This keyword accepts the cookies for the website.
    Wait Until Element Is Visible    onetrust-group-container
    Click Button                     onetrust-accept-btn-handler

Validate Homepage Category section
    [Documentation]    This keyword validates the homepage category section of the website.
    Wait Until Element Is Visible      css:.home-page__container
    Element Should Be Visible          css:._category__title_qys5y_9
    ${category_title}=    Get Text     css:._category__title_qys5y_9
    Should Be Equal    ${category_title}    Acquista per categorie