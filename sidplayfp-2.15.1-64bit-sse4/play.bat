@echo off
set /p output=which file would you like to play:
set /p numchan=and which channel number?
start %output%chan%numchan%.wav
pause