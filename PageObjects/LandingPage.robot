*** Settings ***
Documentation    This page contains Landing page objects
Library          SeleniumLibrary


*** Variables ***
${browser}
${website}                      https://madrid.craigslist.org/
${language}                     english

*** Keywords ***
open madrid craigslist homepage
    open browser    ${website}    ${browser}
    maximize browser window

select english
    wait until page contains    ${language}    5s
    click link    ${language}