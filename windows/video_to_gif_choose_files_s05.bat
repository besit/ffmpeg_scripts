<# : video_to_gif_choose_files_s05.bat

@echo off
setlocal

:: set Scale relative to the video frame size
set SCALE=.5
:: set FPS for the GIF
set FPS=12

for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
	echo Selected file %%~I
	ffmpeg -i "%%~I" -vf "fps=%FPS%,scale=iw*%SCALE%:ih*%SCALE%,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "%%~I.gif"
)

::pause

goto :EOF

: end Batch / begin PowerShell #>

Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.OpenFileDialog
$f.InitialDirectory = pwd
$f.Filter = "All Files (*.*)|*.*|MP4 Files (*.mp4)|*.mp4|MOV Files (*.mov)|*.mov"
$f.ShowHelp = $true
$f.Multiselect = $true
[void]$f.ShowDialog()
if ($f.Multiselect) { $f.FileNames } else { $f.FileName }