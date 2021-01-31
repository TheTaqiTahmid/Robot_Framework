
*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login

# Input Data
&{UNREGISTERED_USER}  Email=notverifiedemail@fake.com  Password=TestPassword!  ExpectedErrorMessage=Sorry, we're having trouble logging you in right now. Please try again.
&{INVALID_PASSWORD_USER}  Email=fakeemail@fake.com  Password=TestPassword!  ExpectedErrorMessage=Sorry, we're having trouble logging you in right now. Please try again.
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.