*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Seach for Products
    Go To  ${URL}
    Wait Until Page Contains  Today's Deals
    Input Text  id=twotabsearchtextbox    ${search_term}
    Click Button  xpath=//*[@id="nav-search"]/form/div[3]/div/span/input
    Wait Until Page Contains  results for "${search_term}"


Select product from Seach Results
    # First click link is used using xpath locator and second click link is used using css locator. We can use either
    Click Link  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a
    #Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(3) > h2 > a
    Wait Until Page Contains  Back to results

Add Product to Cart 
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  css=#hlb-ptc-btn-native
    Page Should Contain Element  id=continue
