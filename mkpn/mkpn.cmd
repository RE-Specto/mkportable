@echo off
cd ^"%~dp0^"

if [%1] == [] GOTO about
set exename=^"%~nx1^"
set folder=^"%~dp1*^"
set output=^"%~dpn1-sfx.exe^"

echo creating config file
echo.
echo ;!@Install@!UTF-8! >config.txt
echo RunProgram=%exename% >>config.txt
echo ;!@InstallEnd@! >>config.txt

del archive.7z 2>nul
echo compressing
echo.
7zr a archive.7z %folder% -mx -mf=BCJ2

echo creating sfx
copy /b 7zS2n.sfx + config.txt + archive.7z %output%

del archive.7z>nul
del config.txt>nul
set exename=
set folder=
set output=

GOTO end

:about
echo a script to create a portable app from your files
echo including all prerequesites from the same directory
echo.
echo usage: mkpn YourExecutableFile.exe
echo.
echo also you can drag and drop a file here, and press enter
echo or just press enter to exit
set /p file=
if [%file%] == [] exit
if exist %file% (%0 %file%) else (%0)
exit

:end
