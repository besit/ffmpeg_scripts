<# : video_to_gif_choose_files_w640.bat

@echo off
setlocal

:: set Width fo the GIF
set WIDTH=640
:: set FPS for the GIF
set FPS=12

for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
	echo Selected file %%~I
	ffmpeg -i "%%~I" -vf "fps=%FPS%,scale=%WIDTH%:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 "%%~I.gif"
)

pause

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