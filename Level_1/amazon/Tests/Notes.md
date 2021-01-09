# Robot script
A robot script basically consists of four parts.
* Settings
* Variables 
* Test Cases
* Keywords (Optional. Usually separate file)

Robot Framework uses python style guide. That means two spaces after each section. 

Each Test cases is divided into three parts.
* Documentation 
* Tag
* Test part 

Each command is separated by two spaces in Robot Framework. 
Ex: Open Browser  http://amazon.com  chrome

## Running Robot script
robot <script directory>
If we want to specify the results directory then:
robot -d <result directory> <test script directory>
Otherwise it will save report in the current directory
If we want to give a name to the test report/log:
robot -d <result directory> -n "Report Name" <test script directory>

## Script running options
* To run a specific test case by tag name: robot -d <result directory> --include <test case tag> <test file directory>
* To run a specific test case by test name: robot -d <result directory> -t <test case name> <test file directory>
* We can run robot file from cmd, batch file, microsoft task schedule as any other program
* We can also run robot file using sauce labs, Jenkins, etc.
* saucelabs.com provides robot test result management in a organized way.
* Running multiple suite: robot -d <result directory> <Test directory> This will run all test suites in the directory
* Exit running tests if any of the Test case is failed: --exitonfailure in command line 

## Getting locator from Chrome 
Click on the item, then write click and press inspect.
After that write click - copy - copy selector or copy xpath

## Defining user defined keyword to be used in Test cases
We can define user defined keywords in keywords section of the robot script or in a separate script to be used in the Test Cases.
* The advantage of this is, the test script is lot less verbose and clear to undertand.
* Another advantage of this is, the keywords can be reused in the same script or in different test scripts.
* If we use separate robot file for keywords. Add the directory of that file in test script Settings part. Example: Resource  <keyword robot file directory>
* If we use separate keyword robot file, it is better to add the prefix of the keyword file to the test script keywords. This way even if the keywords have duplicates, 
  Robot Framework will not get confused.

## Variables
* We can use the variables in the keyword files if we define variables in the original test script. Variables allow easy correction, modification, and less repeatition.
* Variables cam be set in variables section as well as in the Test Cases section. 
  Template for variable section: ${My_variable}  value
  Template for Test cases section (scalar): ${My_variable} Set Variable  value
  Template for Test cases section (list): @{My_variable}  Create List  value
* Scalar variables are denoted by $, and list variables are denoted by @
### Variable Scope: Global, Suite, Test case, Keyword
### Variable precedence: command>script>Keyword  This means the varibales set in command line has the highest precedence.
### Passing variables in command line example: robot -d Results -v Browser:chrome -t  'User can search for product' Tests\amazon.robot
### Passing variables to keywords:
* It is possible to pass arguments/varaibles to keywords while when using that keyword in the test case.
  Example:
  Test case: Begin Web Test    http://www.google.com    firefox
  Keyword: 
    Begin Web Test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Close Browser
