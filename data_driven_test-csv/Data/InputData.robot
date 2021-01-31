
*** Variables ***
# Configuration
${BROWSER}    chrome
${ENVIRONMENT}    prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL}    profile/secure/login
${User_Credential}    C:\\robot-scripts\\data_driven_test-csv\\Data\\Users.csv