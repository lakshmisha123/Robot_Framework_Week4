# import requests module
import requests
import json

from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from robot.libraries.BuiltIn import BuiltIn

#Wait And Click
def WaitForElementAndClick(TradeButton,PopUP,Done):
    
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    driver = selib.driver
    b=WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, TradeButton)))
    b.click()
    b1=WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, PopUP)))
    b1.click()
    b2=WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, Done)))
    b2.click()
    

def WaitForElementScrollToViewAndClickonElement(OrderBook):
        
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    driver = selib.driver
    b = WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.XPATH, OrderBook)))
    b.location_once_scrolled_into_view
    b.click()
   

def WaitForElementScrollToViewAndGetText(Limit_Price):
        
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    driver = selib.driver
    b = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, Limit_Price)))
    b.location_once_scrolled_into_view
    b.click()
    c= b.get_attribute("value")
    return c

def Request(Sessionurl,GetValues):
    s = requests.get(Sessionurl)
    data = json.loads(s.content)

    for BidsResponse in range(0,10):
        Response=data['data']['bids'][BidsResponse][0]
        if Response == GetValues:True
        break    
    return Response