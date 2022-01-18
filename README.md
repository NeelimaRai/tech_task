# Installation Instructions

## Introduction:

This is an automated script written to test some functionalities of the housing page of the website https://madrid.craigslist.org/
The script `craigslist.robot` uses the file `keywords.robot`. This script will work for both chrome and firefox 
browsers. The details on prerequisites and how to run the script are mentioned below.

## Dependencies:

This code uses the following software packages and related dependencies:

	-Python 3.8.9 version
	-pip 21.3.1
	-robotframework
	-robotframework-seleniumlibrary


These can be installed via following commands:

	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

	python3 get-pip.py

	pip3 install robotframework

	pip3 install robotframework-seleniumlibrary

Pycharm IDE used for test creation and test run.

For Windows:
Add the python path to the system environment variable PATH.
Also, add the path to the directory that contains the webdrivers.

For Mac:
Add the path to `.bash_profile` or `.zsh_profile` whichever you use and save the file. Then run `source .zsh_profile` to reload the file.

Install webdrivers for chrome and firefox

## How to run

Open this project in PyCharm. 
Make sure to add the Python Interpreter from the PyCharm settings and verify this is path you installed the above mentioned libraries in.
Otherwise you might see errors like:
	
	File or directory not found
	zsh: robot: command not found…

To run the robot test file, cd to the folder `/tech_task/TestCases/` use the following command:

	robot -d results -v browser:chrome --include 'FUNCTIONAL' craigslist.robot
	
Once the test is run, there will be a new directory created called `results`. To check the report on passed/failed test cases, open 
`report.html` file in the `/results` directory in a browser. This file is created after the test run and can beused for debugging
failed test steps.

The same test can be run with python command as well:

    python3 -m robot craigslist.robot


To run a single testcase, use the following command:
  
    robot -d results -v browser:chrome --include TestCase1 TestCases/craigslist.robot
  
replacing `TestCase1` with test case of choice.


