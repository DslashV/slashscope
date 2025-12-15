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
    
    
C:\sidplayfp\sidplayfp.exe -u2 -u3 -u4 -u5 -u6 -w%output%chan1sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u3 -u4 -u5 -u6 -w%output%chan2sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -u4 -u5 -u6 -w%output%chan3sid1.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -u3 -u5 -u6 -w%output%chan1sid2.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -u3 -u4 -u6 -w%output%chan2sid2.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -u1 -u2 -u3 -u4 -u5 -w%output%chan3sid2.wav %sidfile%
C:\sidplayfp\sidplayfp.exe -w%output%chanmassid1.wav %sidfile%