* Settings *
Library  SeleniumLibrary

* Test Cases *
Open https://www.flipkart.com/ with a valid mobile number
    Open flipkart
    Enter mobile number
    Enter password
    Click login


Go to the ‘Electronics’ section
    Go to electronics
    


Scenario 1: Select your desire device of any electronics accessories and Add to Cart
    Select the device 
    Add the device to Cart

Scenario 2: Go to your cart and verify if the added item is available in the cart
    Go to cart and verify

Close browser
    Close the browser



* Keywords *
Open flipkart
    Open Browser  https://www.flipkart.com/  gc
    Maximize Browser Window


Enter mobile number
    Wait Until Page Contains Element  xpath=//input[@class='_2IX_2- VJZDxU']
    Input Text  xpath=//input[@class='_2IX_2- VJZDxU']  9391478999


Enter password
    Wait Until Page Contains Element  xpath=//input[@class='_2IX_2- _3mctLh VJZDxU']
    Input Password  xpath=//input[@class='_2IX_2- _3mctLh VJZDxU']  bhaskarvarma78999


Click login
    Wait Until Page Contains Element  xpath=//button[@class='_2KpZ6l _2HKlqd _3AWRsL']
    Click Element  xpath=//button[@class='_2KpZ6l _2HKlqd _3AWRsL']
    Sleep  3s


Go to electronics
    Wait Until Page Contains Element   xpath=//div[text()='Electronics']
    Click Element   xpath=//div[text()='Electronics']

    Wait Until Page Contains Element  xpath=/html/body/div/div/div[3]/div[2]/div/div[1]/a/div/img[2]
    Click Element  xpath=/html/body/div/div/div[3]/div[2]/div/div[1]/a/div/img[2]
    

Select the device 
    Wait Until Page Contains Element  xpath=//img[@alt='Top 20 Cameras (From ₹3,699)']  timeout=15s 
    Click Element  xpath=//img[@alt='Top 20 Cameras (From ₹3,699)']
    Wait Until Page Contains Element  //div[@class='_4rR01T']  timeout=15s 
    Click Element  //div[@class='_4rR01T']
    
 

Add the device to Cart
    Switch Window  locator=NEW
    Wait Until Page Contains Element  xpath=//button[text()='ADD TO CART']  timeout=15s
    Click Button  xpath=//button[text()='ADD TO CART']


Go to cart and verify
    Wait Until Page Contains Element  xpath=//button[@class='_2KpZ6l _2ObVJD _3AWRsL']  timeout=15s
    Element Should Contain  xpath=//button[@class='_2KpZ6l _2ObVJD _3AWRsL']  PLACE ORDER
    Sleep  5s

Close the browser
    Sleep  5s
    Close Browser
