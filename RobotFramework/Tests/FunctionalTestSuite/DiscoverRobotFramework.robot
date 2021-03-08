*** Settings ***

*** Variables ***
${operand1}=  12
${operand2}=  15
*** Test Cases ***
Calcul
    ${ints1}=  convert to number  ${operand1}
    ${ints2}=  convert to number  ${operand2}
    log to console  ${operand1}  +  ${operand2}
    log to console  ${operand2}
*** Keywords ***
