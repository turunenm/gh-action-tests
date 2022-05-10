*** Settings ***
Library    QWeb
Library    QWeb
Library    QWeb

*** Test Cases ***
All
    Log    Browser:${BROWSER}
    Open Browser    ${BROWSER}    about:blank
    Log Screenshot
    Close All Browsers

No Mac
    [Tags]  PROBLEM_IN_MACOS
    Log    Should never run on Mac

No Linux
    [Tags]  PROBLEM_IN_LINUX
    Log    Should never run on Linux

No Win
    [Tags]  PROBLEM_IN_WINDOWS
    Log    Should never run on Windows

Only Mac
    [Tags]  PROBLEM_IN_LINUX  PROBLEM_IN_WINDOWS
    Log    Should only run on Mac
Only Linux
    [Tags]  PROBLEM_IN_MAC  PROBLEM_IN_WINDOWS
    Log    Should only run on Linux

Only Windows
    [Tags]  PROBLEM_IN_MAC  PROBLEM_IN_LINUX
    Log    Should only run on Windows
