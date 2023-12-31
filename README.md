# VideoPhile-MPV Config---Win11

MPV not included, please install first, this is just many hours of fine tuning config files and add ons. https://github.com/mpv-player/mpv


MPV Config for Win11 with preconfigured HQ GPU decoding, passthru HDR, Display Scaling, Python free precompiled add on - Browser to MPV server with yt-dlp backend.
Seperate Config files for SDR and HDR content easily switched before running MPV by executing 'HDR SWITCH.BAT' which DELETES the running config and copies the default SDR or HDR settings based on the option chosen. All updates to config must be copied to either the SDR_CONF or HDR_CONF to be made permanant, currently running config will be saved to a .bak file before the main conf file is updated.

To pass Youtube and other browser based video platforms to MPV install the following browser extension for Chrome or Edge, once installed goto extension settings and make the button visable. https://chromewebstore.google.com/detail/play-with-mpv/hahklcmnfgffdlchjigehabfbiigleji

Ensure you have downloaded the latest version of YT.DLP https://github.com/yt-dlp/yt-dlp/ (yt-dlp_win.zip) extract the exe to the same directory as MPV. There is a working version of the exe in this repository.

Run the server MPV Browser Server.exe, now open a youtube video in your browser and click the MPV button, you should see the request passed to the server window, after a couple of seconds the MPV window should open.

HDR Switch batch file options:

!. Write HDR Presets to main Config file
2. Write SDR Presets to main config file
3 Write SDR Presets to main config file and start the Browser Server


Current configs: 

HDR

Metadata Passthru

Interpolation on and tuned

Debanding on and tuned

Display not GPU or software scaling

HQ prolife pre applied and tuned

D3d11 Hardware decoding

Audio normailised for 5.1


SDR

Fine tuned shaders to remap SDR to HDR tonemaps, using logic to read the videofile tonemapping format and apply the correct profile to remap to the correct HDR values, this does not create false HDR it takes the SDR colour values and converts them to equivalent colour values in the HDR range, without the luminosity data requirewd for HDR, this allows MPV to display the correct colours without turning off HDR in display settings, it can be left on permanently. For the SDR config to work you will first need to download the shader directory in this repositary and place it in the same directory as MPV.

Interpolation and debanding OFF

TV / Display Setup
My Setup uses a Samsund TV, you will need to find the corresponding settings for your own device
SDR - Picture mode Standard or Entertain, Contrast Enhancer off or Low, clarity assist off or auto depending on personal preferances.
HDR - Filmmmaker mode or entertain, clarity and contrast settings off, contrast enhancement on HDR will lead to loss of detail in shadows and on dark objects and often looks agressivly out of balance.
You should have all files here except the .bak file.
![image](https://github.com/Raidfire-SDR/VideoPhile-MPV---Win11/assets/125891383/0ea29ef9-ab74-44c5-90df-524925ad3971)



