@echo off
echo paste the path to the sid file here:
set /p sidfile=
echo type the output file
set /p output=
echo type in the length of the sid (in seconds only)
set /p timesec=
echo put in the sidplayfp exe file here:
setx /p sidplayfpexe=
echo you want to disable samples? (useful if you want to hear SIDs with the echo routine) (Y for yes, N for no)
set /p smpen=

if %smpen%=="N" (
	%sidplayfpexe% -u2 -u3 -t%timesec% -w%output%chan1sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u3 -t%timesec% -w%output%chan2sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u2 -t%timesec% -w%output%chan3sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u2 -t%timesec% -w%output%chanpcmsid1.wav %sidfile%
	%sidplayfpexe% -t%timesec% -w%output%chanmassid1.wav %sidfile%
) else (
	%sidplayfpexe% -u2 -u3 -g1 -t%timesec% -w%output%chan1sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u3 -g1 -t%timesec% -w%output%chan2sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u2 -g1 -t%timesec% -w%output%chan3sid1.wav %sidfile%
	%sidplayfpexe% -u1 -u2 -u3 -t%timesec% -w%output%chanpcmsid1.wav %sidfile%
	%sidplayfpexe% -t%timesec% -w%output%chanmassid1.wav %sidfile%
)
goto :eof
