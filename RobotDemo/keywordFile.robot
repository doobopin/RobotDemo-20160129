*** Settings ***
Documentation     Example test cases using the keyword-driven testing approach.
...
...               All tests contain a workflow constructed from keywords in
...               ``CalculatorLibrary.py``. Creating new tests or editing
...               existing is easy even for people without programming skills.
...
...               The _keyword-driven_ appoach works well for normal test
...               automation, but the _gherkin_ style might be even better
...               if also business people need to understand tests. If the
...               same workflow needs to repeated multiple times, it is best
...               to use to the _data-driven_ approach.
Library           CommandLineLibrary.py

*** Test Cases ***
Command Line
    Test command line    dir
    Test command line    Get-ChildItem

#Clear
#    Push button    1
#    Push button    C
#    Result should be    ${EMPTY}    # ${EMPTY} is a built-in variable
