
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from robot.libraries.BuiltIn import BuiltIn


#Wait And Input Text
def Wait_For_Element_And_Input_Text(k,m):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b=WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, k)))
    b.send_keys(m)

#Wait And Click
def Wait_For_Element_And_Click(k):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b = WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, k)))
    b.click()

def Wait_For_Element_Scroll_To_Element_And_Clickon_Element(k):
        selib = BuiltIn().get_library_instance("Selenium2Library")
        a = selib.driver
        b = WebDriverWait(a, 10).until(EC.element_to_be_clickable((By.XPATH, k)))
        b.location_once_scrolled_into_view
        #b.scroll
        b.click()


def Getting_Text_Of_Element_And_RemovingUnwanted_string(k):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b= WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, k)))
    c=b.text
    d=c.replace("'","").replace(",","").replace(".","")
    #print(d)
    return (d)


def Wait_For_Element_And_Input_Text_Click(k,m,l):
    selib = BuiltIn().get_library_instance("Selenium2Library")
    a = selib.driver
    b=WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, k)))
    b.send_keys(m)
    c=WebDriverWait(a, 10).until(EC.presence_of_element_located((By.XPATH, l)))
    c.click()


#Calculator
def add_num(a,b) :
        return float(a)+float(b)

def sub_num(a,b):
        return int(a)-int(b)

def mul_num(a,b) :
        return int(a)*int(b)

def div_num(a,b):
        return int(a)/int(b)

def per(a,b):
        return int(a)%int(b)



