@echo off
echo paste the path to the sid file here:
set /p sidfile=
echo type the output file
set /p output=
echo would you like to enable digi samples? (Y/N)
set /p digi=


if not exist sidplayfp.exe (
	echo could not find sidplayfp
	pause
)

if %digi% == "Y" (
	sidplayfp -u2 -u3 -g1 -w%output%chan1.wav %sidfile%
    sidplayfp -u1 -u3 -g2 -w%output%chan2.wav %sidfile%
    sidplayfp -u1 -u2 -g3 -w%output%chan3.wav %sidfile%
    sidplayfp --digiboost -u1 -u2 -u3 -w%output%chanmas.wav %sidfile%
	pause
) else (
    sidplayfp -u2 -u3 -w%output%chan1.wav %sidfile%
    sidplayfp -u1 -u3 -w%output%chan2.wav %sidfile%
    sidplayfp -u1 -u2 -w%output%chan3.wav %sidfile%
    sidplayfp -w%output%chanmas.wav %sidfile%
	pause
)

start play.bat