* Variables *
&{Login}
...    text_Swag=//div[contains(text(),'Swag Labs')]
...    input_Username=//input[@id="user-name"]
...    input_Password=//input[@id="password"]
...    button_Login=//input[@id="login-button"]

...    msg_Login_WrongPassword=//h3[contains(text(),'Epic sadface: Username and password do not match any user in this service')]
...    msg_Login_Locked=//h3[contains(text(),'Epic sadface: Sorry, this user has been locked out.')]