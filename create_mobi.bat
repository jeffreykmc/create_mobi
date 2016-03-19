@echo off


set tmpdir=d:\temp
set srcdir=d:\comic\

set curwork=test
rem create a tmp directory for working.

if not exist %tmpdir%\%curwork% then
	mkdir %tmpdir%\%curwork%
endif

if not exist %tmpdir%\%curwork% then
	mkdir %tmpdir%\%curwork%\pic
endif

cd %tmpdir%\%curwork%

dir /b > tmp.txt

copy /y %srcpath%\%srcbook%\%srcver%\*.* %tmpdir%\%curwork%\pic

echo:List only files:
for %%a in ("%tmpdir%\%curwork%\pic\*") do (
  echo "%%~fa"
  
  
)

echo:List only directories:
for /d %%a in ("%yourDir%\*") do echo %%~fa

echo:List directories and files in one command:
for /f "usebackq tokens=*" %%a in (`dir /b "%yourDir%\*"`) do echo %yourDir%\%%~a
