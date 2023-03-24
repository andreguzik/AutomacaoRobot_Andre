* Settings *
Library   SeleniumLibrary
Library   Screenshot
Resource   ../Elements/Login.resource
Resource   ../Elements/Inventory.resource

*** Keywords ***
Dado que eu esteja na tela Início do Swag Labs
    Open Browser    https://www.saucedemo.com/  chrome
    Maximize Browser Window
    ${yy}	${mm}	${dd} =	Get Time	year,month,day
    @{time} =	Get Time	year month day hour min sec	
    Set Screenshot Directory  ${OUTPUT_DIR}/Results/Evidencias_${time}[0]${time}[1]${time}[2]_${time}[3]_${time}[4]
    Set Selenium Speed    0.5s
    Wait Until Element Is Visible    ${Login.text_Swag}

Quando eu preencho dados de um Login válido
    Input Text                ${Login.input_Username}    standard_user
    Input Text                ${Login.input_Password}    secret_sauce    


Quando eu preencho dados de um Login com o nome incorreto
    Input Text                ${Login.input_Username}    nomeerrado
    Input Text                ${Login.input_Password}    senhaerrada   


Quando eu preencho dados de um Login com a senha incorreta
    Input Text                ${Login.input_Username}    standard_user
    Input Text                ${Login.input_Password}    senhaerrada   


Quando eu preencho dados de um Login bloqueado
    Input Text                ${Login.input_Username}    locked_out_user
    Input Text                ${Login.input_Password}    secret_sauce
    

E clico em Login
    Click Element             ${Login.button_Login}


Então eu consigo logar no Swag Labs
    Wait Until Element Is Visible  ${Iventory.text_Products}
    Capture Page Screenshot          filename=Cenario_01.png


Então eu não consigo logar no Swag Labs
    Sleep    1s

E mensagem de nome incorreto aparece
    Wait Until Element Is Visible  ${Login.msg_Login_WrongPassword}
    Capture Page Screenshot          filename=Cenario_02.png


E mensagem de senha incorreta aparece
    Wait Until Element Is Visible  ${Login.msg_Login_WrongPassword}
    Capture Page Screenshot          filename=Cenario_03.png


E mensagem de login bloqueado
    Wait Until Element Is Visible  ${Login.msg_Login_Locked}
    Capture Page Screenshot          filename=Cenario_04.png


Dado que eu esteja logado no Swag Labs
    Wait Until Element Is Visible  ${Iventory.text_Products}


E clico no Menu
    Click Element                     ${Iventory.button_Menu}
    Wait Until Element Is Visible     ${Menu.button_AllItems} 

E depois no botão Logout
    Click Element             ${Menu.button_Logout}

Então eu saio da conta e volto para tela Início
    Capture Page Screenshot           filename=Cenario_05.png
    Wait Until Element Is Visible    ${Login.text_Swag}

Fechar Navegador
    Close Browser