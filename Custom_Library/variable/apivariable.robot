*** Variables ***
${url1}    https://coinswitch.co/pro/api/v1/realtime-rates/depth?symbol=btc,inr&exchange=csx
${browser}    chrome
${url}    https://coinswitch.co/pro/

### CoinSwithch Xpath ###

# Trade Buttton Xpath #
${TradeNow_Button}    //*[contains(text(),'TRADE NOW')]

# Home Page Content Xpaths
${PopUp_ClickOn_SkipAll}    //*[contains(text(),'Skip All')]
${Done}    //*[contains(text(),'Done')]
${OrderBook}    (//*[@class='tw-relative tw-cursor-pointer'])[13]
${Limit_Price}    //*[@id='limit_price']


## Setup And TearDOwn Message ##
${StartMessage}    Navigating To The Particular Website And Dismissing Pop-up.
${EndMessage}    Successfully Compared The Values.