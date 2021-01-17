*** Settings ***
Documentation  This is my first Robot Framework

Resource  ../Resources/Amazon.robot    # Resources are used if keywords are imported from external robot files
Resource  ../Resources//Common.robot
Suite Setup  Common.Do Something    # Suite setup is used to perform some action before all the test cases
Test Setup  Common.Begin Web Test    # Test setup is used to perform some action before each the test cases
Test Teardown  Common.End Web Test    # Test Teardwon is used to perform some action after each the test cases
Suite Teardown  Common.Do something else    # Suite Teardown is used to perform some action after all the test cases


*** Variables ***
${URL}    http://www.amazon.com
${search_term}    Ferrari 458
${Browser}    chrome

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic information about test
    [Tags]  Smoke
    Amazon.Seach for Products 
    Amazon.Select product from Seach Results
    Amazon.Add Product to Cart 

User can search for product
    [Documentation]  Check if user can add product to cart
    [Tags]  Smoke
    Amazon.Seach for Products




*** Keywords ***
# Begin Web Test
#     Open Browser  about:blank  chrome


# Seach for Products
#     Go To  http://www.amazon.com
#     Wait Until Page Contains  Today's Deals
#     Input Text  id=twotabsearchtextbox  Ferrari 458
#     Click Button  xpath=//*[@id="nav-search"]/form/div[3]/div/span/input
#     Wait Until Page Contains  results for "Ferrari 458"


# Select product from Seach Results
#     # First click link is used using xpath locator and second click link is used using css locator. We can use either
#     Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a
#     #Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(3) > h2 > a
#     Wait Until Page Contains  Back to results


# Add Product to Cart 
#     Click Button  id=add-to-cart-button
#     Wait Until Page Contains  Added to Cart
#     Click Link  css=#hlb-ptc-btn-native
#     Page Should Contain Element  id=continue


# End Web Test
#     Close Browser

