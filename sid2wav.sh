#!/bin/sh

echo "paste the path to the sid file here: "
read SIDFILE
echo "type the output file "
read OUTPUT
echo "type in the length of the sid (in seconds only) "
read TIMESEC
echo "put in the sidplayfp exe file here: "
read SIDPLAYFPEXE

$SIDPLAYFPEXE -u2 -u3 -t$TIMESEC -w$OUTPUTchan1sid1.wav "$SIDFILE"
$SIDPLAYFPEXE -u1 -u3 -t$TIMESEC -w$OUTPUTchan2sid1.wav "$SIDFILE"
$SIDPLAYFPEXE -u1 -u2 -t$TIMESEC -w$OUTPUTchan3sid1.wav "$SIDFILE"
$SIDPLAYFPEXE -t$TIMESEC -w$OUTPUTchanmassid1.wav "$SIDFILE"
