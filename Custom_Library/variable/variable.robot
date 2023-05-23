*** Variables ***
${url}    https://www.amazon.in/?ref_=icp_country_from_us
${browser}    chrome
${Search_Bar}    //*[@id='twotabsearchtextbox']
${Item_For_Search}    iphone 14 pro max
${Search_Button_Click}    //*[@id='nav-search-submit-button']
${Product_1}    (//*[@class='a-size-medium a-color-base a-text-normal'])[1]
#${a_Size}    xpath:(//*[@class='a-button-input'])[2]
${Product_To_Addcart}    //*[@id='submit.add-to-cart']
${close}    //*[@id='attach-close_sideSheet-link']
${Product_2}    (//*[@class='a-size-medium a-color-base a-text-normal'])[2]

${cart}    (//*[@id='nav-cart-count-container'])
${Product_1_Prize}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap sc-product-price a-text-bold'])[1]
${Product_2_Prize}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap sc-product-price a-text-bold'])[2]

${Total_Prize}    (//*[@class='a-size-medium a-color-base sc-price sc-white-space-nowrap'])[1]