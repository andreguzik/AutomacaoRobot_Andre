Responsável: André Luiz Ferreira Guzik

*** Comandos de Exeução ***

    Executar arquivos de testes  - robot "PATH"/Regressivo.robot 
    Executar teste por TAG -  robot --include Log..


*** Requisitos de instalação ***
   
    1 - Python 3
    2 - Pip 22.2
    3 - Robot Framework 5.0.1
    4 - Selenium2library
    5 - Webdriver
    6 - ChromeDriver (Problemas com versão do ChromeDriver atualizar a versão igual ao navegador e colocar na pasta BIN (C:\bin).)
    7 - Android Studio Emulador (Path - porta 7247)
    ...

OBS: 

*** Documentação de Apoio ***

    Curso básico de Robot Framework -- https://www.youtube.com/watch?v=wdtqpQrQ598&list=PL5ipcSFH2tk8RWxtvuaOK-qpdAvlWkSoo
    Biblioteca Selenium -- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
    Funções para XPATH -- https://developer.mozilla.org/en-US/docs/Web/XPath/Functions
    Ajuda para navegação em XPATH -- https://www.wwp.northeastern.edu/outreach/seminars/intro_2017-02/presentations/xslt/xml_and_xpath_03.xhtml
    Linguagem Gherkin -- https://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html


*** Organização do projeto ***

    Elements --> Arquivos ".resource" que listam variaveis mapeadas dos elementos WEB.
    Resource --> Arquivos ".resource" com a configuração dos Drivers, Comandos chaves (KeyBoards) e Comandos Selenium.
    Steps --> Arquivos ".robot" com a codificação dos testes com a linguagem Gherkin.
    Test --> Arquivos ".robot" com os comandos para executar os cenários de testes.
    repot.html, output.xml e log.html --> Arquivos de resultados dos testes.
    Results -> Arquivo com evidencias dos testes para report.



    Em caso de duvida consultar a imagem Fluxo_Projeto_Automacao.png
