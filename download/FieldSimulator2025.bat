@echo off
cls
setlocal enabledelayedexpansion
set balance=100
:farmStart
if not defined balance set balance=100
echo It's early morning and you are on the farm
pause
cls
echo You are going to cultivate Field 1. Your balance is: !balance! Euros
pause
cls
:tractorSelection
cls
echo Select tractor...
echo A) Claas AXION 800
echo B) Deutz-Fahr Series 6 TTV
choice /C AB /N /M "Select your choice: "
cls
if %errorlevel%==2 echo You selected Deutz-Fahr Series 6 TTV
if %errorlevel%==1 echo You selected Claas AXION 800
pause
cls
echo Select cultivator...
echo A) Horsch Terrano 3.5FX
echo B) Rabe EG 3/9
choice /C AB /N /M "Select your choice: "
cls
if %errorlevel%==2 echo You selected Rabe EG 3/9
if %errorlevel%==1 echo You selected Horsch Terrano 3 DC
pause
cls
echo Select job on the field...
echo A) Cultivate
echo B) Go back
choice /C AB /N /M "Select your choice: "
if %errorlevel%==2 goto tractorSelection
if %errorlevel%==1 (
cls
echo Cultivating Field 1...
timeout /t 5 /nobreak >nul
cls
echo Field Cultivated
pause
cls
)
:sowMenu
cls
echo Select option...
echo A) Sow Field 1
echo B) Show balance
echo C) Exit
choice /C ABC /N /M "Select your choice: "
if %errorlevel%==3 goto exitPrompt2
if %errorlevel%==2 (
cls
echo Your balance is: !balance! Euros
pause
cls
goto sowMenu
)
if %errorlevel%==1 goto sowField1
:sowField1
cls
echo Select tractor...
echo A) Claas AXION 800
echo B) Deutz-Fahr Series 6 TTV
choice /C AB /N /M "Select your choice: "
cls
echo Select seeder...
echo A) Horsch Pronto 3 DC
echo B) Nordsten NS 3003
choice /C AB /N /M "Select your choice: "
cls
echo Sowing Field 1...
timeout /t 5 /nobreak >nul
cls
echo Field Sown
pause
cls
echo Wheat on Field 1 is growing...
timeout /t 8 /nobreak >nul
cls
:fieldHarvest1
cls
echo Field 1 is ready to harvest
echo A) Harvest Field 1
echo B) Exit
choice /C AB /N /M "Select your choice: "
if %errorlevel%==2 goto exitPrompt
if %errorlevel%==1 goto harvestOption
:exitPrompt
cls
echo Do you want to quit the game? Your progress will not be saved
echo A) Yes
echo B) No
choice /C AB /N /M "Select your choice: "
if %errorlevel%==2 goto fieldHarvest1
if %errorlevel%==1 exit
:harvestOption
cls
echo Harvesting Field 1...
timeout /t 7 /nobreak >nul
cls
echo Field 1 harvested
pause
cls
echo Selling crops...
timeout /t 5 /nobreak >nul
cls
echo Crops were sold. You earned 1000 Euros
pause
cls
set /a balance+=1000
cls
echo Select option...
echo A) Sleep until morning (6 AM)
echo B) Exit
choice /C AB /N /M "Select your choice: "
if %errorlevel%==2 exit
if %errorlevel%==1 (
cls
echo Sleeping...
timeout /t 5 /nobreak >nul
cls
goto farmStart
)
:exitPrompt2
cls
echo Do you want to quit the game? Your progress will not be saved
echo A) Yes
echo B) No
choice /C AB /N /M "Select your choice: "
if %errorlevel%==2 goto sowMenu
if %errorlevel%==1 exit