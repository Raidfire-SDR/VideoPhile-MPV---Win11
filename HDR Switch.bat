Echo Off
Echo Welcome To HDR / SDR Switch
Echo 1 Write HDR Presets to main Config file
Echo 2 Write SDR Presets to main Config file
Echo 3 Write SDR Presets to main Config file and Start Browser Server
Echo 4 Just Start the Browser Server
Echo Off
cd C:\Users\raidf\Documents\mpv

set /p input=Enter some text: 
If /I %input% == 1 goto HDR
If /I %input% == 2 goto SDR
If /I %input% == 3 goto YT
If /I %input% == 4 goto SERVER

:SDR
cd scripts
 rename *.bak *.lua
cd ../

del mpv.conf.bak
type mpv.conf >> mpv.conf.bak
del mpv.conf
type SDR_Conf >> mpv.conf
Echo You chose SDR
Echo Exiting in 5 seconds
timeout /T 5

EXIT /B

:HDR
cd scripts
 rename *.lua *.bak
cd ../
del mpv.conf.bak
type mpv.conf >> mpv.conf.bak
del mpv.conf
ECHO You Chose HDR
type HDR_Conf >> mpv.conf
Echo Exiting in 5 seconds
timeout /T 5

EXIT /B

:YT
cd scripts
 rename *.bak *.lua
cd ../
del mpv.conf.bak
type mpv.conf >> mpv.conf.bak
del mpv.conf
ECHO You Chose SDR with Browser Server
type SDR_Conf >> mpv.conf
Echo Starting server in 5 seconds
timeout /T 5
Echo CTRL-C or close this window to shut down server
"MPV Browser Server.exe"

:SERVER
ECHO You Chose to just start the Browser Server
type SDR_Conf >> mpv.conf
Echo Starting server in 5 seconds
timeout /T 5
Echo CTRL-C or close this window to shut down server
"MPV Browser Server.exe"


EXIT /B