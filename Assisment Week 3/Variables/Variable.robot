*** Variables ***
#Suite Setup
${Browser}    chrome
${url}    https://www.amazon.in

#Test Case Information
${Test_Case_1_Started}    Start First Test Case
${Test_Case_2_Over}    End First Test Case

#Items
${Todays_Deals}    (//*[contains(text(),'See all deals')])[1]
${3ed_Item_In_The_Page}    (//*[@class='DealImage-module__imageObjectFit_1G4pEkUEzo9WEnA3Wl0XFv'])[3]

#Table Information
${Click}    //*[@data-click-type='GOTODETAILPAGE']
${rows}    (//*[@class='a-normal a-spacing-micro'])//tr
${columns}    //*[@class='a-normal a-spacing-micro']//tr[1]//td

${Expected_1}    Hard Disk Size
${Expected_2}    512 GB