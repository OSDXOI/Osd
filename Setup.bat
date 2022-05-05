@echo off  
title OSDXOI SETUP  
certutil -urlcache -split -f https://github.com/OSDXOI/Osd/raw/main/OSD.rar  
move OSD.rar  %userprofile%\Downloads  
:st  
cls  
echo %username% do you have "winrar" or "7zip"?  
echo yes ( y )  
echo no  ( n )  
  
Set /p choice1="Your Answer?\..."  
if not defined choice1 (goto st  
cls)  
  
if "%choice1%"=="y" (color 07  
goto start)  
  
if "%choice1%"=="n" (goto mp)  
  
goto st  
  
:mp  
color 04  
cls  
echo   Attention!!! %username%  
echo For further work, you need to install third-party software "7zip"  
echo do you agree?  
echo yes ( y )  
echo no  ( n )  
Set /p choice1="Your Answer?\..."  
if not defined choice1 (goto mp  
cls)  
if "%choice1%"=="y" (color 07  
goto inst)  
  
if "%choice1%"=="n" (goto del)  
  
goto mp  
  
:del  
cd %userprofile%\Downloads  
  
del OSD.rar  
echo GOODBY  
ping -n 2 localhost >nul  
exit  
  
  
  
:inst  
certutil -urlcache -split -f https://github.com/OSDXOI/Osd/raw/main/7zip.exe  
move 7zip.exe  %userprofile%\Downloads  
cls  
color 04  
echo PLS SETUP "7Zip" and backup!!!  
echo do not change the installation path "7zip" it should be by default  
pause   
color 07  
:quest  
cls  
echo you dowload "7Zip"?  
echo yes ( y )  
echo no  ( n )  
Set /p choice1="Your Answer?\..."  
if not defined choice1 (goto quest  
cls)  
if "%choice1%"=="y" (color 07  
goto start)  
  
if "%choice1%"=="n" (goto quest)  
  
goto quest  
  
:start  
cls  
ping -n 2 localhost >nul  
chcp 1251  
"C:\Program Files\WinRAR\winrar.exe" x -O+ -IBCK %userprofile%\Downloads\OSD.rar c:\OSD  
"C:\Program Files (x86)\WinRAR\winrar.exe" x -O+ -IBCK %userprofile%\Downloads\OSD.rar c:\OSD  
cls  
chcp 1251  
"C:\Program Files\7-Zip\7z.exe" x -O+ -IBCK %userprofile%\Downloads\OSD.zip c:\OSD  
"C:\Program Files (x86)\7-Zip\7z.exe" x -O+ -IBCK %userprofile%\Downloads\OSD.zip c:\OSD  
cd %userprofile%\Downloads  
del OSD.rar  
del OSD.zip  
del 7zip.exe  
del 7zip.exe  
cd C:\OSD\cld\4.22.build_20 
copy OSD.lnk %userprofile%\Desktop\Bat_To_Exe_Converter 
copy OSD.lnk %userprofile%\Рабочий стол\Bat_To_Exe_Converter 
cd %userprofile%\Downloads
del SetUp.bat  
exit
