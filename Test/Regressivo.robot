* Settings *
Library   SeleniumLibrary
Library   OperatingSystem
Library           Collections
Resource  ../Steps/steps_Login.robot 
*** Test Cases ***


#  ${Options}    Create Dictionary    androidPackage    com.android.chrome
#     ${caps}    Create Dictionary    chromeOptions    ${Options}
#     Set to Dictionary    ${caps}    platformName    Android
#     Set to Dictionary    ${caps}    platformVersion    8.0
#     Set To Dictionary    ${caps}    deviceName    emulator-5554
#     Set To Dictionary    ${caps}    browserName    Chrome
#     Create Webdriver    Remote    command_executor=http://localhost:4723/wd/hub    desired_capabilities=${caps}
#     go to    http://www.google.com
#     Close Browser


Cenário 01: Login
    [Tags]    LOGIN
    Dado que eu esteja na tela Início do Swag Labs
    Quando eu preencho dados de um Login válido
    E clico em Login
    Então eu consigo logar no Swag Labs
 
Cenário 05: LOGOUT
    [Tags]    LOGIN
    Dado que eu esteja logado no Swag Labs
    E clico no Menu
    E depois no botão Logout
    Então eu saio da conta e volto para tela Início
    Fechar Navegador
   

Cenário 02: Nome incorreto
    [Tags]    LOGIN
    Dado que eu esteja na tela Início do Swag Labs
    Quando eu preencho dados de um Login com o nome incorreto
    E clico em Login
    Então eu não consigo logar no Swag Labs
    E mensagem de nome incorreto aparece
    Fechar Navegador

Cenário 03: Senha incorreta
    [Tags]    LOGIN
    Dado que eu esteja na tela Início do Swag Labs
    Quando eu preencho dados de um Login com a senha incorreta
    E clico em Login
    Então eu não consigo logar no Swag Labs
    E mensagem de senha incorreta aparece
    Fechar Navegador
    

Cenário 04: Login Bloqueado
    [Tags]    LOGIN
    Dado que eu esteja na tela Início do Swag Labs
    Quando eu preencho dados de um Login bloqueado
    E clico em Login
    Então eu não consigo logar no Swag Labs
    E mensagem de login bloqueado
    Fechar Navegador
