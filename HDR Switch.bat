Echo Welcome To HDR / SDR Switch
Echo Press 1 for SDR 2 for HDR
Echo Off
cd C:\Users\raidf\Documents\mpv
del mpv.conf.bak
type mpv.conf >> mpv.conf.bak
del mpv.conf
set /p input=Enter some text: 
If /I %input% == 1 goto SDR
If /I %input% == 2 goto HDR

:SDR
type SDR_Conf >> mpv.conf
Echo You chose SDR
EXIT /B

:HDR
ECHO You Chose HDR
type HDR_Conf >> mpv.conf
EXIT /B