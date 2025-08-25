@echo off

rem Where the source files are located
set SRC=GPL
rem Where the compiled code will go
set DEST=.
rem The name of the compiled GPL byte code.
set OUTPUTNAME=CaravanGuards.bcd
rem The project file that defines what files will be compiled
set GPLPROJECTFILE=TempProject.gplproj

set GPLBCC=""
rem Is the compiler in the Quest's source directory?
if EXIST gplbcc.exe (
 set GPLBCC="%CD%\gplbcc.exe"
 goto foundCompiler
)

rem How about one up from where this file is?
if EXIST ..\gplbcc.exe (
 set GPLBCC="%CD%\..\gplbcc.exe"
 goto foundCompiler
)

rem Is the Majesty SDK installed?
if NOT "%MAJESTYSDK%"=="" (
 set GPLBCC="%MAJESTYSDK%\gplbcc.exe"
)

rem Check to make sure the compiler is available
if NOT EXIST %GPLBCC% goto missingCompiler

:foundCompiler

echo Using GPL compiler at %GPLBCC%
call :buildit %GPLPROJECTFILE% %OUTPUTNAME%

goto :EOF

rem ************************************************
:buildit

if EXIST %2 del %2
echo Building %1, output as %2
%GPLBCC% -in %1 -out %2 -stdout

goto :EOF

rem ************************************************
:missingCompiler
echo ERROR: Unable to find the GPL compiler.  Set the MAJESTYSDK environment variable to point to the SDK path.
goto :EOF

rem ************************************************
:buildFailed
echo ERROR: Compile failed.
goto :EOF
