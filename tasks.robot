*** Settings ***
Documentation     Template robot main suite.
...               Slack Windows desktop application Automation robot
Library           RPA.Desktop
Library           RPA.Desktop.Windows

*** Variables ***
${txt}=           Good_Afternoon

*** Tasks ***
Slack Windows desktop application Automation robot
    Open Slack
    Search for Channel
    Write to field    Arshad Bagde
    Send Message
    Schedule for Message

*** Keywords ***
Open Slack
    Open From Search    Slack    Slack    wildcard=True

Search for Channel
    Press Keys    Ctrl    1

Write to field
    [Arguments]    ${text}
    Press Keys    Ctrl    k
    Send Keys To Input    Arshad Bagde

Send Message
    Send Keys To Input    ${txt}    with_enter=False

Schedule for Message
    Send Keys To Input    {TAB}{TAB}{RIGHT}{ENTER}{DOWN}{ENTER}    with_enter=True
