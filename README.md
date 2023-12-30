# VideoPhile-MPV---Win11
MPV Config for Win11 with preconfigured HQ GPU decoding, passthru HDR, Display Scaling, Python free precompiled add on - Browser to MPV server with yt-dlp backend.
Seperate Config files for SDR and HDR content easily switched before running MPV by executing HDR_SWITCH.BAT which DELETES the running config and copies the default SDR or HDR settings based on the option chosen. All updates to config must be copied to either the SDR_CONF or HDR_CONF to be made permanant, currently running config will be saved to a .bak file before the main conf file is updated.

To pass Youtube and other browser based video platforms to MPV install the following browser extension for Chrome or Edge, once installed goto extension settings and make the button visable. https://chromewebstore.google.com/detail/play-with-mpv/hahklcmnfgffdlchjigehabfbiigleji

Ensure you have downloaded the latest version of YT.DLP https://github.com/yt-dlp/yt-dlp/ (yt-dlp_win.zip) extract the exe to the same directory as MPV. There is a working version of the exe in this repository.

Run the server MPV Browser Server.exe, now open a youtube video in your browser and click the MPV button, you should see the request passed to the server window, after a couple of seconds the MPV window should open.


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
Fine tuned shaders to remap SDR to HDR tonemaps, using logic to read the videofile tonemapping format and apply the correct profile to remap to the correct HDR values, this does not create false HDR it takes the SDR colour values and converts them to equivalent colour values in the HDR range, without the luminosity data requirewd for HDR, this allows MPV to display the correct colours without turning off HDR in display settings, it can be left on permanently.
Inerpolation and debanding OFF
