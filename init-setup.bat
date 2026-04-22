@echo off
setlocal

set DOWNLOAD_DIR=C:\data-engineering-bootcamp

echo Checking Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed. Please install Python and re-run this script.
    pause
    exit /b
)

echo Installing gdown...
python -m pip install --upgrade pip
python -m pip install gdown

if not exist %DOWNLOAD_DIR% mkdir %DOWNLOAD_DIR%

echo Downloading environments...
python -m gdown 1J0nHyjzdk8eBGzbX32EBpwZg4P2vm6NQ -O %DOWNLOAD_DIR%\environments.zip

echo Downloading softwares...
python -m gdown 13Gx-to38lxxKjNIvOXa8vgxd_hUGUYh8 -O %DOWNLOAD_DIR%\softwares.zip

echo Download completed!

pause