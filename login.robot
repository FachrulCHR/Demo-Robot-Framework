*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Start Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome      chrome_options=${chrome_options}

*** Variables ***
${base_url}         https://pub-eish-dev.keponet.com       
${browser_type}     Chrome
${email_Iptu}       jenareishsatu@yopmail.com
${password_Iptu}    12345678

*** Test Cases ***
Login User Iptu 

    Start Chrome
    Go To                                   ${base_url}
    Maximize browser window
    Input Text                              //input[@id='email']                 ${email_Iptu}                         
    Input Text                              //input[@id='password']              ${password_Iptu}                         
    Click Element                           //button[@type="submit"]
    Sleep                                   3s
Menampilkan Perizinan Senjata Pistol    
    Click Element                           (//a[@class="nav-link"])[3]
    Select From List By Value               (//select[@name="custom-filter"])[option]               1
    Sleep                                   3s

Ajukan Izin Olahraga
    Click Element                           //a[@class="button-create"]              
    Click Element                           (//a[@data-target="kategori"])[2]
    
    Sleep                                   3s
    Close Browser