*** Settings ***
Library    QWeb

*** Variables ***
${BROWSER}    chrome
*** Test Cases ***
All
    Log    Browser:${BROWSER}
    Open Browser    https://www.duckduckgo.com    ${BROWSER}
    VerifyElementText  being tracked  being tracked
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

Resolution Dependency
    [Tags]    RESOLUTION_DEPENDENCY
    Log    Should run on Linux and Windows

Flask
    [Tags]    Flask
    Log    Should run on Linux
