ECHO off
SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
title Jerrad Monagan Project 4
ECHO Welcome to the Linux Bash Command Line simulator!
ECHO Enter your commands below
:Start
SET /P %command="lcl>"
echo %command%>input.txt
FOR /F "tokens=1,2,3 delims= " %%a in (input.txt) do (
set command1=%%a
set command2=%%b
set command3=%%c)
set check=true
if "%command1%"=="ls" (echo using DOS commmand: dir %command2%
	dir %command2%
	echo "done"
	goto :Start)
if "%command1%"=="cp" (goto :checkCP)
if "%command1%"=="rm" (goto :checkRm)
if "%command1%"=="mv" (goto :checkMv)
if "%command1%"=="cd" (goto :checkCd)
if "%command1%"=="ifconfig" (goto :ifconfig)
if "%command1%"=="pwd" (goto :pwd)
if "%command1%"=="help" (goto :help)
if "%command1%"=="exit" (goto :EndNow
) else (echo ERROR: unrecoginized command
goto :Start)
:checkCP
	if "%command2%"=="" (set check=false)
	if "%command3%"=="" (set check=false)
	if "%check%"=="false" (echo usage: cp sourcefile destinationfile
		goto :Start) else (
		echo using Dos command: copy %command2% %command3%
		copy %command2% %command3%
		echo done
		goto :Start
	)
:checkRm
	if "%command2%"=="" (set check=false)
	if "%check%"=="false" (echo usage: rm sourcefile
		goto :Start) else (
		echo using Dos command: del %command2%
		del %command2%
		echo done
		goto :Start
	)
:checkMv
	if "%command2%"=="" (set check=false)
	if "%command3%"=="" (set check=false)
	if "%check%"=="false" (echo usage: mv sourcefile destinationfile
		goto :Start) else (
		echo using Dos command: copy %command2% %command3%
		copy %command2% %command3%
		echo done
		goto :Start
	)
:checkCd
	if "%command2%"=="" (set check=false)
	if "%check%"=="false" (echo "usage: cd sourcefile"
		goto :Start) else (
		echo using Dos command: cd %command2%
		cd %command2%
		echo done
		goto :Start
	)	
:ifconfig
	echo using Dos command: ipconfig
	ipconfig
	goto :Start
:pwd
	echo using Dos command: %%cd%%
	echo %cd%
	goto :Start
:help
	echo ls:		list directory contents:	ls [FILE]...
	echo cp:  		copy files and directories:	cp SOURCE... DIRECTORY
	echo rm:		delete files or directories:	rm FILE...
	echo mv:		move files:			mv SOURCE... DIRECTORY
	echo cd:		change directory:		cd SOURCE...
	echo ifconfig:	configure a network interface:	ifconfig
	echo help:		a menu of available commands	help
	echo exit:		ends application:		exit
	goto :Start
:EndNow
pause