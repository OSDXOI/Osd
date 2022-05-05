@echo off
title OSDXOI SETUP
certutil -urlcache -split -f https://github.com/OSDXOI/Osd/raw/main/OSD.rar
move OSD.rar  %userprofile%\Downloads
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
del SetUp.bat
exit
