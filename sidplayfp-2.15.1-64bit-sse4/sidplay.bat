@echo off
if not exist sidplayfp.exe (
	echo could not find sidplayfp
	pause
)
echo paste the sid file here:
set /p sidfile=

sidplayfp %sidfile%

