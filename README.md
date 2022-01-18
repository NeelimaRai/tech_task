# Installation Instructions

## Introduction:

This is an automated script written to test some functionalities of the housing page of the website https://madrid.craigslist.org/
The script `craigslist.robot` uses the file `keywords.robot` and this keywords file references the objects defined under `PageObjects` 
directory. This script will work for both chrome and firefox browsers. The details on prerequisites and how to run the script are 
mentioned below.

## Dependencies:

This code uses the following software packages and related dependencies:

	-Python 3.8.9 version
	-pip 21.3.1
	-robotframework
	-robotframework-seleniumlibrary

Download python from here https://www.python.org/downloads/

The dependencies can be installed via following commands:

	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

	python3 get-pip.py

	pip3 install robotframework

	pip3 install robotframework-seleniumlibrary

Pycharm IDE used for test creation and test run.

Install webdrivers for chrome and firefox.

For Windows:
Add the python path to the system environment variable PATH.
Also, add the path to the directory that contains the webdrivers.

For Mac:
Add the path to `.bash_profile` or `.zsh_profile` whichever you use and save the file. Then run `source .zsh_profile` to reload the file.


## How to run

Open this project in PyCharm. Make sure to add the correct Python Interpreter from the PyCharm settings and verify this is path you 
installed the above mentioned libraries in. 

Otherwise you might see errors like:
	
	File or directory not found
	zsh: robot: command not found…

To run the robot test file, cd to the folder `/tech_task/TestCases/` and run the following command:

	robot -d results -v browser:chrome --include 'FUNCTIONAL' craigslist.robot
	
Once the test is run, there will be a new directory created called `results`. To check the report on passed/failed test cases, open 
`report.html` file in the `/results` directory in a browser. This file can be used for debugging failed test cases and test steps.

The same test can be run with python command as well:

    python3 -m robot craigslist.robot


To run a single test case, use the following command:
  
    robot -d results -v browser:chrome --include TestCase1 craigslist.robot
  
replacing `TestCase1` with test case of choice.


