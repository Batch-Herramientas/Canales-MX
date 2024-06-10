set canal=
:I
set "reproductor=%~dp0\Assets\ffplay.exe"
mode 50,25
title CANALES MX @BatchHerramientas - %canal%
@echo off
cls
echo  " +-+-+-+-+-+-+-+      ";
echo  " |C|a|n|a|l|e|s|      ";
echo  " ++-+-+-+-+-+-+-+-+-+ ";
echo  "  |D|i|g|i|t|a|l|e|s| ";
echo  "  ++-+-+++-+-+-+-+-+-+";
echo  "   |d|e| |M|e|x|i|c|o|";
echo  "   +-+-+ +-+-+-+-+-+-+";
echo ......@BatchHerramientas.
echo ........Version: 1.0......
echo  Canal Actual %canal%
echo  Fecha: %date%
echo.
echo  1)  ADN40
echo  2)  Las estrellas
echo  3)  Azteca uno
echo  4)  Canal 5
echo  5)  Canal 6
echo  6)  Azteca 7
echo  7)  Canal Nu9ve
echo  8)  Foro tv
echo  9)  N+
echo  10) Jalisco TV
echo  11) Creditos
echo  12) ver si ay una actualizacion
echo  13) Salir
echo  dijite la opcion del canal:
set /p opi=Aqui: 
if "%opi%"=="1" goto 1
if "%opi%"=="2" goto 2
if "%opi%"=="3" goto 3
if "%opi%"=="4" goto 4
if "%opi%"=="5" goto 5
if "%opi%"=="6" goto 6
if "%opi%"=="7" goto 7
if "%opi%"=="8" goto 8
if "%opi%"=="9" goto 9
if "%opi%"=="10" goto 10
if "%opi%"=="11" goto 11
if "%opi%"=="12" start "" "https://github.com/Batch-Herramientas/Canales-MX/tree/main/Files" & goto I
if "%opi%"=="13" goto exit
echo Opcion No encontrada
pause 
goto I
:1
set canal="ADN40"
taskkill /im "%reproductor%" >nul
@echo off
echo ADN40
"%reproductor%" "https://mdstrm.com/live-stream-playlist/60b578b060947317de7b57ac.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:2
set canal="Las estrellas"
taskkill /im "%reproductor%" >nul
@echo off
echo Las estrellas
"%reproductor%" "https://channel01.akamaized.net/hls/live/2022749/event01/index.m3u8" -window_title %canal% -nostats -fs >nul
echo cerrando 
timeout /t 5 /nobreak >nul
goto I

:3
set canal="Azteca uno"
taskkill /im "%reproductor%" >nul
@echo off
echo Azteca uno
"%reproductor%" "https://mdstrm.com/live-stream-playlist/609b243156cca108312822a6.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:4
set canal="Canal 5"
taskkill /im "%reproductor%" >nul
@echo off
echo Canal 5
"%reproductor%" "https://channel05.akamaized.net/hls/live/2033783/event01/index.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:5
set canal="Canal 6"
taskkill /im "%reproductor%" >nul
@echo off
echo Canal 6
"%reproductor%" "https://mdstrm.com/live-stream-playlist/5c54d38ca392a5119bb0aa0d.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:6
set canal="Azteca 7"
taskkill /im "%reproductor%" >nul
@echo off
echo Azteca 7
"%reproductor%" "https://mdstrm.com/live-stream-playlist/609ad46a7a441137107d7a81.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:7
set canal="Canal Nu9ve"
taskkill /im "%reproductor%" >nul
@echo off
echo Canal Nu9ve
"%reproductor%" "https://channel06.akamaized.net/hls/live/2033784/event01/index.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:8
set canal="Foro Tv"
taskkill /im "%reproductor%" >nul
@echo off
echo Foro tv
"%reproductor%" "https://channel02-notusa.akamaized.net/hls/live/2023914/event01/index.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:9
set canal="N+"
taskkill /im "%reproductor%" >nul
@echo off
echo N+
"%reproductor%" "https://channel07-notusa.akamaized.net/hls/live/2036971/event01/index.m3u8" -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:10
set canal="Jalisco Tv"
taskkill /im "%reproductor%" >nul
@echo off
echo Jalisco Tv
"%reproductor%" https://5fa5de1a545ae.streamlock.net/sisjalisciense/sisjalisciense/playlist.m3u8 -window_title %canal% -nostats -fs -sws_flags Spline>nul
echo abriendo 
timeout /t 5 /nobreak >nul
goto I

:11
echo off
cls
echo.
echo ........Creditos........
echo -- programador y Diseñador:
echo   Batch-Herramientas
echo link: https://github.com/Batch-Herramientas
echo --  reproductor de video:
echo   FFmpg/ffplay
echo link: https://ffmpeg.org
echo --  repositorios de televisoras:
echo   Internet
echo.
start "" "https://github.com/Batch-Herramientas"

pause
goto I

:exit
taskkill /im "%reproductor%" >nul
exit

