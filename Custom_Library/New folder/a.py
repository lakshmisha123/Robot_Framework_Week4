from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import  time
from robot.libraries.BuiltIn import BuiltIn

def Wait_For_Element_And_Input_Text(k,m):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b=WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, k)))
    b.send_keys(m)
    return (k,m)


def Wait_For_Element_And_Click(k):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b=WebDriverWait(a, 10).until(EC.element_to_be_clickable((By.XPATH, k)))
    b.click()
    time.sleep(1)
    return k


def remove_string_avi(k):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b=a.find_element(By.XPATH, k)
    c=b.text
    d=c.replace("'","").replace(",","").replace(".","")
    #print(d)
    return (d)
    #return k

def add_num1(a,b) :
        return float(a)+float(b)