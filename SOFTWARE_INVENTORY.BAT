@echo off
 mode 35,10
 :: Set Variables
 echo for /F "tokens=2,3,4 delims=/ " %%i in ('date/t') do set y=%%k
 echo for /F "tokens=2,3,4 delims=/ " %%i in ('date/t') do set d=%%k%%i%%j
 echo set inventory=\\matt\inventory\%computername%_%d%SOFTWARE.csv
 set inventory=\\matt\inventory\%computername%_SOFTWARE.csv
 if exist "%inventory%" exit
 :: Start
 echo *********************************
 echo First Technology
 echo Software Asset Management Department
 echo DO NOT CLOSE THIS WINDOW
 echo *********************************
 echo. >> %inventory%

 wmic product get name,version /format:csv >> %inventory%
