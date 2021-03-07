*** Settings ***
Library  RequestsLibrary
Library  RequestsLibrary
*** Variables ***
${base_URL}  http://thetestingworldapi.com/
*** Test Cases ***
Hello World
    create session  GET_STUDENT  ${base_URL}
    ${response}=  get on session  GET_STUDENT  api/studentsDetails
    log to console  ${response.content}
    ${actual_code}=  convert to string  ${response.status_code}
    should be equal  ${actual_code}  200
*** Keywords ***
