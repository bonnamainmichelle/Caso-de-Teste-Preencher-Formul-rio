*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${input_name}           id:name
${input_phone}          id:phone
${input_email}          id:email
${input_password}       id:password
${textarea_adress}      id:address
${button_submit}        name:submit


*** Keywords ***
abrir navegador acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation      chrome

navegador
    Sleep           5s

preencher campos
    Input Text    ${input_name}           Bianca
    Input Text    ${input_phone}          98000098
    Input Text    ${input_email}          bianca@teste.com
    Input Text    ${input_password}       12345
    Input Text    ${textarea_adress}         xxxxxxxxxxxxxxxxx

clicar em submit
    click element       ${button_submit}  
    Sleep           5s  





*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador acessar o site
    navegador
    preencher campos
    clicar em submit
    
    

