echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /C "%~dp0"
:--------------------------------------    

COLOR A
:: This batch file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
 
ECHO OS INFO

ECHO ============================
 
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.

ECHO ============================

ECHO HARDWARE INFO

ECHO ============================

systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Software information.

ECHO ============================

ECHO SOFTWARE CHECK 

ECHO ============================
goto :check_lua
:check_lua
::if NOT lua -v == 90090x2331 ( ECHO Lua Version | lua -v && goto Contiue)
::else ( goto GetLua )
where lua -v >nul 2>nul
IF NOT ERRORLEVEL 0 (
    echo Lua not found in path.
    setx path "%path%;C:\Users\%USERNAME%\Desktop\Text_Game\lua\bin" /m
) else ( lua -v && Goto FileCheck)

:FileCheck
:: Section 4: File information.
ECHO ============================

ECHO FILE CHECK 

ECHO ============================

SET Esc_LinkDest=%%HOMEDRIVE%%%%HOMEPATH%%\Desktop\Start Text Game.lnk

if not exist "!Esc_LinkDest!" (
	SETLOCAL ENABLEDELAYEDEXPANSION
	SET Esc_LinkStart=%HOMEDRIVE%%HOMEPATH%\Desktop\Text_Game\
	SET LinkName=run.bat
	SET Esc_LinkDest=%%HOMEDRIVE%%%%HOMEPATH%%\Desktop\Start Text Game.lnk
	SET Esc_LinkTarget=%%HOMEDRIVE%%%%HOMEPATH%%\Desktop\Text_Game\!LinkName!
	SET cSctVBS=CreateShortcut.vbs
	SET LOG=".\%~N0_runtime.log"
	((
	  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
	  echo sLinkFile = oWS.ExpandEnvironmentStrings^("!Esc_LinkDest!"^)
	  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
	  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("!Esc_LinkTarget!"^)
	  echo oLink.WorkingDirectory = "!Esc_LinkStart!"
	  echo oLink.Save
	)1>!cSctVBS!
	cscript //nologo .\!cSctVBS!
	DEL !cSctVBS! /f /q
	)1>>!LOG! 2>>&1)
    if not errorlevel 1 (
        echo Desktop Icon Already Gotten
		goto Completed
    )
)

:Completed
echo Everything is Completed The Game should Run now

PAUSE
