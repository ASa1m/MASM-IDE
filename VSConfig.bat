REM  make32.bat -  Batch file for assembling/linking 32-bit Assembly programs
REM  Revised: 14/9/2022 by Saim

@echo off
cls

REM The following three lines can be customized for your system:
REM ********************************************BEGIN customize
SET PATH=%~dp0Masm615;C:\WINDOWS;C:\WINDOWS\SYSTEM32
SET INCLUDE=%~dp0Masm615\INCLUDE
SET LIB=%~dp0Masm615\LIB
REM ********************************************END customize

cd Assemble

set FNAME=%1

move "%~dp0Assemble\%FNAME%.asm" "%~dp0Masm615" >nul
cd %~dp0Masm615

ML -Zi -c -Fl -coff %FNAME%.asm

if errorlevel 1 goto terminate

REM add the /MAP option for a map file in the link command.

LINK32 %FNAME%.obj irvine32.lib kernel32.lib /SUBSYSTEM:CONSOLE /DEBUG

if errorLevel 1 goto terminate

:terminate

move "%~dp0Masm615\%FNAME%.asm" "%~dp0Assemble">nul
move "%~dp0Masm615\%FNAME%.ilk" "%~dp0Outputs" >nul
move "%~dp0Masm615\%FNAME%.exe" "%~dp0Outputs" >nul
move "%~dp0Masm615\%FNAME%.obj" "%~dp0Outputs" >nul
move "%~dp0Masm615\%FNAME%.lst" "%~dp0Outputs" >nul
move "%~dp0Masm615\%FNAME%.pdb" "%~dp0Outputs" >nul

cd %~dp0Outputs

ECHO Below is the Output from last successful build executable file:

%FNAME%.exe