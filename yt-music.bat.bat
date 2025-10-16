@echo off
title 🎧 Telechargeur Musique YouTube
chcp 65001 >nul

setlocal enabledelayedexpansion

set "BASE_PATH=D:\yt-dlp"
set "BIN_PATH=%BASE_PATH%\ffmpeg\bin"
set "OUTPUT_DIR=%BASE_PATH%\musique"

if not exist "%BIN_PATH%\yt-dlp.exe" (
    echo ❌ yt-dlp.exe manquant dans %BIN_PATH%
    pause
    exit /b
)

if not exist "%BIN_PATH%\ffmpeg.exe" (
    echo ❌ ffmpeg.exe manquant dans %BIN_PATH%
    pause
    exit /b
)

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:menu
cls
echo ============================================
echo    🎶 YT-DLP MUSIC DOWNLOADER PRO
echo ============================================
echo           Created by Zaki
echo ============================================
echo.
echo 1 - Telecharger UNE seule video
echo 2 - Telecharger une PLAYLIST complete
echo.
set /p choix=Choisis une option [1 ou 2] : 

if "%choix%"=="1" goto solo
if "%choix%"=="2" goto playlist
echo Option invalide
timeout /t 2 >nul
goto menu

:solo
set "URL="
echo.
echo Entre le lien de la video :
set /p URL=
if "!URL!"=="" (
    echo Aucun lien fourni
    timeout /t 2 >nul
    goto menu
)
echo.
echo Choisis le mode de telechargement :
echo 1 - Qualite maximale avec miniature (plus lent)
echo 2 - Mode rapide sans miniature
echo.
set /p mode=Choix [1 ou 2] : 

if "%mode%"=="1" (
    set "EMBED=--embed-thumbnail"
) else (
    set "EMBED="
)

echo.
call :show_progress "Telechargement en cours..."
call :download_single
goto cleanup

:playlist
set "URL="
echo.
echo Entre le lien de la playlist :
set /p URL=
if "!URL!"=="" (
    echo Aucun lien fourni
    timeout /t 2 >nul
    goto menu
)
echo.
echo Choisis le mode de telechargement :
echo 1 - Qualite maximale avec miniature (plus lent)
echo 2 - Mode rapide sans miniature
echo.
set /p mode=Choix [1 ou 2] : 

if "%mode%"=="1" (
    set "EMBED=--embed-thumbnail"
) else (
    set "EMBED="
)

echo.
call :show_progress "Telechargement de la playlist en cours..."
call :download_playlist
goto cleanup

:download_single
"%BIN_PATH%\yt-dlp.exe" -U >nul 2>&1
"%BIN_PATH%\yt-dlp.exe" -x --audio-format mp3 --audio-quality 0 ^
%EMBED% --add-metadata ^
--output "%OUTPUT_DIR%\%%(title)s.%%(ext)s" ^
--no-write-playlist-metafiles ^
--no-write-info-json ^
--no-warnings ^
--ignore-errors ^
--ffmpeg-location "%BIN_PATH%" ^
--socket-timeout 60 ^
--http-chunk-size 10485760 ^
--concurrent-fragments 10 --throttled-rate 0 ^
--retries infinite --fragment-retries infinite ^
"!URL!"
exit /b

:download_playlist
"%BIN_PATH%\yt-dlp.exe" -U >nul 2>&1
"%BIN_PATH%\yt-dlp.exe" -x --audio-format mp3 --audio-quality 0 ^
%EMBED% --add-metadata ^
--output "%OUTPUT_DIR%\%%(playlist_title)s\%%(title)s.%%(ext)s" ^
--no-write-playlist-metafiles ^
--no-write-info-json ^
--no-warnings ^
--ignore-errors ^
--ffmpeg-location "%BIN_PATH%" ^
--socket-timeout 60 ^
--http-chunk-size 10485760 ^
--concurrent-fragments 10 --throttled-rate 0 ^
--retries infinite --fragment-retries infinite ^
"!URL!"
exit /b

:show_progress
setlocal enabledelayedexpansion
for /l %%A in (1,1,5) do (
    cls
    echo %~1
    echo.
    set "bar="
    for /l %%B in (1,1,%%A) do set "bar=!bar!█"
    echo !bar!
    timeout /t 1 >nul
)
endlocal
exit /b

:cleanup
cls
echo.
echo Nettoyage des fichiers inutiles...
for /r "%OUTPUT_DIR%" %%F in (*.webp *.jpg *.png *.json *.webm *.m4a.part) do (
    if exist "%%F" del /q "%%F" >nul 2>&1
)
echo.
echo ============================================
echo Telechargement termine sans fichiers parasites !
echo ============================================
echo.
pause

:end_menu
cls
echo ============================================
echo       Telechargement termine !
echo ============================================
echo.
echo 1 - Telecharger une autre playlist
echo 2 - Retour au menu principal
echo 3 - Quitter
echo.
set /p end_choix=Choisis une option [1, 2 ou 3] : 

if "%end_choix%"=="1" goto playlist
if "%end_choix%"=="2" goto menu
if "%end_choix%"=="3" (
    echo.
    echo ============================================
    echo Thank you for using YT-DLP Music Downloader
    echo           Created by Zaki
    echo ============================================
    timeout /t 2 >nul
    exit /b
)
echo Option invalide
timeout /t 2 >nul
goto end_menu