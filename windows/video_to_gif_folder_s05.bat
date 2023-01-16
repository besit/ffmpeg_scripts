:: set list of extensions in format "*.ext1 *.ext2 *.ext3"
set EXT=*.mp4 *.mov
:: set Scale relative to the video frame size
set SCALE=.5
:: set FPS for the GIF
set FPS=12

if not exist "./gif" mkdir "./gif"
for /r %%F in (%EXT%) do (if not exist "./gif/%%~nF.gif" echo %%~nF%%~xF & echo %%~nF.gif & ffmpeg -i "%%~nF%%~xF" -vf "fps=%FPS%,scale=iw*%SCALE%:ih*%SCALE%,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "gif/%%~nF.gif")
::pause