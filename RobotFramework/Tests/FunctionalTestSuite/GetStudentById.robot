*** Settings ***
Library  RequestsLibrary
*** Variables ***
${base_URL}  http://thetestingworldapi.com/
${student_Id}  96916
*** Test Cases ***
TC_001_Fetch_Student_by_id
    create session  FetchData  ${baseURL}
    ${response}=  get on session  FetchData  api/studentsDetails/${student_Id}
    log to console  ${response.status_code}
    log to console  ${response.content}
    ${actual_code}=  convert to string  ${response.status_code}
    should be equal  ${actual_code}  200

*** Keywords ***
