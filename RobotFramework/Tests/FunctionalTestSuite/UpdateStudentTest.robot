*** Settings ***
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${base_URL}=  http://thetestingworldapi.com
${student_Id}=  1
*** Test Cases ***
TC_004 create new resource
    create session  AddData  ${base_URL}
    ${data}=  create dictionary  first_name=Testing  middle_name=A  date_of_birth=12/10/2021  last_name=B
    ${header}=  create dictionary  Content-Type=application/json

    ${response}=  put on session  AddData  api/studentsDetails/${student_Id}  json=${data}  headers=${header}
    ${code}=  convert to string  ${response.status_code}
    log to console  ${response.status_code}

    should be equal  ${code}  201
    log to console  ${response.content}