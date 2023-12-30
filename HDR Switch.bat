Echo Welcome To HDR / SDR Switch
Echo Press 1 for SDR 2 for HDR
Echo Off
cd C:\Users\raidf\Documents\mpv
del mpv.conf.bak
type mpv.conf >> mpv.conf.bak
del mpv.conf
set /p input=Enter some text: 
If /I %input% == 1 goto HDR
If /I %input% == 2 goto SDR
If /I %input% == 3 goto YT

:SDR
type SDR_Conf >> mpv.conf
Echo You chose SDR
Echo Exiting in 5 seconds
timeout /T 5

EXIT /B

:HDR
ECHO You Chose HDR
type HDR_Conf >> mpv.conf
Echo Exiting in 5 seconds
timeout /T 5

EXIT /B

:YT
ECHO You Chose SDR with Browser Server
type SDR_Conf >> mpv.conf
Echo Starting server in 5 seconds
timeout /T 5
Echo CTRL-C or close this window to shut down server
"MPV Browser Server.exe"


EXIT /B