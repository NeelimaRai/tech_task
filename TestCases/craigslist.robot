*** Settings ***
Documentation    Testing functionality of the housing page of madrid craigslist website
Library          SeleniumLibrary
Resource         ../Resources/Keywords/keywords.robot

Test Setup       Run Keywords    open madrid craigslist homepage    select english
Test Teardown    Close Browser


*** Test Cases ***

#----------------------------------------------------------------------------------------------------------

### Test Case 1 ###
Verify sorting functionality
    [Documentation]    This test is to verify the below 2 sorting functionality on the housing page:
    ...                -sort by price lowest to highest
    ...                -sort by price highest to lowest

    [Tags]    DEBUG    SMOKE    FUNCTIONAL    Testcase1

    sort by price lowest to highest before search
    check if price is sorted from low to high    ${price1}    ${price2}
    sort by price highest to lowest before search
    check if price is sorted from high to low    ${price1}    ${price2}


#-----------------------------------------------------------------------------------------------------------

### Test Case 2 ###
Verify default sorting options available
    [Documentation]    This test is to verify the below 3 default sorting possibilities available:
    ...                -sort by price lowest to highest
    ...                -sort by price highest to lowest
    ...                -newest

    [Tags]    DEBUG    SMOKE    FUNCTIONAL    Testcase2

    verify sorting options available before search


#------------------------------------------------------------------------------------------------------------

### Test Case 3 ###
Verify sorting options available after clicking search

    [Documentation]    This test verifies the search functionality of the housing page and
    ...                the below 5 sorting options available after hitting search button.
    ...                -sort by price lowest to highest
    ...                -sort by price highest to lowest
    ...                -newest
    ...                -upcoming
    ...                -relevant

    [Tags]    DEBUG    SMOKE    FUNCTIONAL    Testcase3

    verify sorting options available after search
