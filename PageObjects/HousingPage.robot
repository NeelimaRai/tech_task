*** Settings ***
Documentation    This page contains Housing page objects
Library          SeleniumLibrary
Library          Collections
Library          String

*** Variables ***
${housing_page}                 id:hhh

# Dropdown
${sorting_dropdown}             class:search-sort

# Items in dropdown
${sort_newest}                  /d/housing/search/hhh?sort=date&lang=en&cc=gb
${sort_price_up}                //*[@id="searchform"]/div[3]/div[2]/div/ul/li[3]/a
${sort_price_down}              //*[@id="searchform"]/div[3]/div[2]/div/ul/li[4]/a

#Search bar elements
${search_box}                   id:query
${search_text}                  madrid
${search_button}                class:searchbtn

#Items in dropdown after searching for an input text
${sort_newest_after_search}         /d/housing/search/hhh?sort=date&availabilityMode=0&query=madrid&lang=en&cc=gb
${sort_price_up_after_search}       /d/housing/search/hhh?sort=priceasc&availabilityMode=0&query=madrid&lang=en&cc=gb
${sort_price_down_after_search}     /d/housing/search/hhh?sort=pricedsc&availabilityMode=0&query=madrid&lang=en&cc=gb
${sort_upcoming_after_search}       /d/housing/search/hhh?sort=upcoming&availabilityMode=0&query=madrid&lang=en&cc=gb
${sort_relevant_after_search}       /d/housing/search/hhh?sort=rel&availabilityMode=0&query=madrid&lang=en&cc=gb


${price1}                           //*[@id="search-results"]/li[1]/div/span[2]/span[1]
${price2}                           //*[@id="search-results"]/li[2]/div/span[2]/span[1]



*** Keywords ***
select housing page
    wait until page contains element    ${housing_page}    10s
    click element    ${housing_page}

verify newest
    page should contain link    ${sort_newest}

verify price up
    page should contain link    ${sort_price_up}

verify price down
    page should contain link    ${sort_price_down}

open dropdown
    wait until page contains element    ${sorting_dropdown}    5s
    click element    ${sorting_dropdown}

click price up
    click element    ${sort_price_up}

click price down
    click element    ${sort_price_down}

verify newest after search
    page should contain link    ${sort_newest_after_search}

verify price up after search
    page should contain link    ${sort_price_up_after_search}

verify price down after search
    page should contain link    ${sort_price_down_after_search}

verify upcoming after search
    page should contain link    ${sort_upcoming_after_search}

verify relevant after search
    page should contain link    ${sort_relevant_after_search}

input in search
    input text    ${search_box}    ${search_text}
    click element    ${search_button}


check if price is sorted from low to high
    [Arguments]    ${pricea}    ${priceb}
    ${a}=  Get Text    ${pricea}
    ${a}=  Remove String    ${a}    €    .
    ${a}=  Convert To Number    ${a}
    Log    ${a}

    ${b}=  Get Text    ${priceb}
    ${b}=  Remove String    ${b}    €    .
    ${b}=  Convert To Number    ${b}
    Log    ${b}
    @{list}=  Create List    ${a}    ${b}

    IF    ${a} < ${b}
        Log    List sorted from low to high
    ELSE
        Fail
    END


check if price is sorted from high to low
    [Arguments]    ${pricea}    ${priceb}
    ${a}=  Get Text    ${pricea}
    ${a}=  Remove String    ${a}    €    .
    ${a}=  Convert To Number    ${a}
    Log    ${a}

    ${b}=  Get Text    ${priceb}
    ${b}=  Remove String    ${b}    €    .
    ${b}=  Convert To Number    ${b}
    Log    ${b}
    @{list}=  Create List    ${a}    ${b}

    IF    ${a} > ${b}
        Log    List sorted from low to high
    ELSE
        Fail
    END


