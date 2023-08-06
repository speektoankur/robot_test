## RobotFramework + Selenium2Library 
UI Tests using Robot Framework

### Capabilities used for setup 
***
1. Robot Framework 
2. Selenium Library 
3. Circle CI 

### Commands to run test Locally  
prerequisite python3 installed already on local machine 
***
pip install poetry - to install dependency management
***
poetry install - will install all dependencies
***
robot --version - to verify if Robot Framework is installed
***
robot ebay.search.tests.robot - for executing test file.

### Commands to run test on Docker
***
Circle CI - config.yml - to cater CI requirements & running tests on Remote webDriver hub.


### References 

* Selenium Library - https://robotframework.org/Selenium2Library/Selenium2Library.html
* Robot Framework - https://robotframework.org/

    
