@echo off
echo paste the path to the sid file here:
set /p sidfile=
echo type the output file
set /p output=
echo type in the length of the sid (in seconds only)
set /p timesec=

if not exist sidplayfp.exe (
	echo could not find sidplayfp
	echo you must place sidplayfp in your path or in the same folder as the bat file
	pause
)
    
    
C:\sidplayfp\sidplayfp.exe -u2 -u3 -g1 -t%timesec% -w%output%chan1sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u3 -g1 -t%timesec% -w%output%chan2sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -g1 -t%timesec% -w%output%chan3sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -u3 -t%timesec% -w%output%chanpcmsid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -t%timesec% -w%output%chanmassid1.wav %sidfile%
