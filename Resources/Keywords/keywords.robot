*** Settings ***
Resource    ../../PageObjects/LandingPage.robot
Resource    ../../PageObjects/HousingPage.robot


*** Keywords ***

sort by price lowest to highest before search
    select housing page
    open dropdown
    click price up

sort by price highest to lowest before search
    open dropdown
    click price down

verify sorting options available before search
    select housing page
    open dropdown
    verify newest
    verify price up
    verify price down

verify sorting options available after search
    select housing page
    input in search
    open dropdown
    verify newest after search
    verify price up after search
    verify price down after search
    verify upcoming after search
    verify relevant after search
