@ECHO off
:top
Clear-Host
Write-Output "+---[ScuggsCorp, Inc.]---+"
Write-Output "|                        |"       
Write-Output "|       JeromeStart      |" 
Write-Output "|   Workflow Automator   |"   
Write-Output "|          v0.1          |"
Write-Output "\________________________/"      
ECHO.      
Write-Output "Whoops! Looks like you fucked"      
Write-Output "up and had to reformat! Let's"     
Write-Output "get back up to speed!" 
ECHO.    
pause

CLS
Write-Output "+---[ScuggsCorp, Inc.]---+"
ECHO.
Write-Output "Pick an option (it is" 
Write-Output "recommended that you" 
Write-Output "run these in order)"
ECHO.
Write-Output "[1] Set general permissions (install cannot continue without this!)"
Write-Output "[2] Install Scoop (package manager)"
Write-Output "[3] Install Chocolatey (package manager)"
Write-Output "[4] Fuck it, I'll do it live! (Quit)" 
ECHO.

CHOICE /N /C:1234 /M "> "
cls
IF (ERRORLEVEL ==4) {GOTO end}
IF (ERRORLEVEL ==3) {iex ((New-Object System.Net.Webclient).DownloadString('https://chocolatey.org/install.ps1'))}
IF (ERRORLEVEL ==2) {iex (new-object net.webclient).downloadstring('https://get.scoop.sh')}
IF (ERRORLEVEL ==1) {Set-ExecutionPolicy RemoteSigned -scope CurrentUser}  

ECHO +---[ScuggsCorp, Inc.]---+
ECHO.
ECHO Initial Setup

ECHO
ECHO
ECHO
ECHO
