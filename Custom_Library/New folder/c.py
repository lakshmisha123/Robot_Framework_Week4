#import driver
#from telnetlib import EC
from selenium import webdriver 
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

def wait(driver):
    # print("project immediately")
    # i = input(b)
    

    # print("project after the input.")



    element = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.XPATH, driver))
        )
    # click the element 
    element.click()
    return(wait) 


# import logging

# logging.debug('This is a debug message')
# logging.info('This is an info message')
# logging.warning('This is a warning message')
# logging.error('This is an error message')
# logging.critical('This is a critical message')


# import time
# from threading import Thread

# class programmer(Thread):
#     def run(self):
#         for x in range(0, 11):
#             print(x)
#             time.sleep(1)


# class developer(Thread):
#     def run(self):
#         for x in range(200, 203):
#             print(x)
#             time.sleep(5)


# print("Start thread")
# programmer().start()
# print("developer Thread")
# developer().start()
# print("Done")