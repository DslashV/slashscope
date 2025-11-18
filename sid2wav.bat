@echo off
echo paste the path to the sid file here:
set /p sidfile=
echo type the output file
set /p output=

if not exist sidplayfp.exe (
	echo could not find sidplayfp
	echo you must place sidplayfp in your path or in the same folder as the bat file
	pause
)

sidplayfp -u2 -u3 -g1 -w%output%chan1.wav %sidfile%
sidplayfp -u1 -u3 -g1 -w%output%chan2.wav %sidfile%
sidplayfp -u1 -u2 -g1 -w%output%chan3.wav %sidfile%
sidplayfp -u1 -u2 -u3 -w%output%chanpcm.wav %sidfile%
sidplayfp -w%output%chanmas.wav %sidfile%
