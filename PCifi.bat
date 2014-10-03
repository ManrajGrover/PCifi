@echo off
CLS
:MENU
ECHO.
ECHO             PCifi- Convert your PC into Wifi Hotspot instantly
ECHO            Fork me @ github.com/ManrajGrover
ECHO.
ECHO Choose an option given below
ECHO.
ECHO 1. Setup your Wifi
ECHO 2. Start WiFi Sharing
ECHO 3. Stop WiFi Sharing
ECHO 4. Exit
ECHO.
SET /P CH=Choose option 1-4 and Press ENTER:
IF %CH%==1 GOTO SETUP
IF %CH%==2 GOTO START
IF %CH%==3 GOTO STOP
IF %CH%==4 GOTO EOF
:SETUP
netsh wlan set hostednetwork mode=allow ssid=YourWifiName key=YourPassword keyusage=persistent
GOTO MENU
:START
netsh wlan start hostednetwork
GOTO MENU
:STOP
netsh wlan stop hostednetwork
GOTO MENU