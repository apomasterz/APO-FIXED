@echo off
echo Installation des modules 10-20s...

for /f "delims=" %%i in (requirements.txt) do (
    pip install %%i --ignore-installed 2>nul
)

pause

echo Voicemeeter FIXING , CLEAN INSTALLATION...
python Voicemeeter-cleanup.py

pause