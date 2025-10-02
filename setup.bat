@echo off
echo checking if you have corrscope installed... please wait.......
if not exist corrscope/corrscope.exe (
	echo it seems that you don't have corrscope. downloading.....
	wget https://github.com/corrscope/corrscope/releases/download/0.11.0/corrscope-0.11.0-win64.7z
	echo now extract the corrscope 7z file
)



