# Video-to-GIF Scripts

These scripts make it easy to convert video files like .mp4 and .mov to GIFs using ffmpeg.

## Prerequisites
* [ffmpeg](https://ffmpeg.org/) - The command-line tool used to convert the videos

## Windows
### Usage
1. Download and install ffmpeg on your computer. [You can use this guide for example](https://www.wikihow.com/Install-FFmpeg-on-Windows)
2. Clone or download the repository to your local machine.
3. Scripts `video_to_gif_folder_s05.bat` and `video_to_gif_folder_w640.bat` should be copied to folder with video files and run from there. They will create a "GIF" folder and put all the *.gif there.
4. Scripts `video_to_gif_choose_files_s05.bat` and `video_to_gif_choose_files_w640.bat` open a dialog box and let you to choose 1 or more video files to be processed. The results would be in the same folder with *.gif extension.

### Scripts

* `video_to_gif_choose_files_s05.bat` - converts video files to a gif with resloution scaled by 0.5 and 12 FPS. Just double-click the file and a window will open, where you can choose files to be processed.
* `video_to_gif_choose_files_w640.bat` - This script  converts video files to a gif with width of 640px and 12 FPS. Just double-click the file and a window will open, where you can choose files to be processed.
* `video_to_gif_folder_s05.bat` - This script converts all video files in the folder where it's located to gifs with resloution scaled by 0.5 and 12 FPS. Place it in the folder alongside video files and double click.
* `video_to_gif_folder_w640.bat` - This script converts all video files in the folder where it's located to gifs with width of 640px and 12 FPS. Place it in the folder alongside video files and double click.

## Mac
### Usage
1. Download and install ffmpeg on your computer.
2. Clone or download the repository to your local machine.
3. Scripts `video_to_gif_folder_s05` and `video_to_gif_folder_w640` should be copied to folder with video files and run from there. They will create a "GIF" folder and put all the *.gif files there.
4. Scripts `video_to_gif_select_file_s05` and `video_to_gif_select_folder_w640` open a dialog box and let you choose a video file or a folder to be processed. The results would be in the same folder with *.gif extension.

### Scripts

* `video_to_gif_select_file_s05` - This script converts video files to a gif with resloution scaled by 0.5 and 12 FPS. Just double-click the file and a window will open, where you can choose files to be processed.
* ``video_to_gif_select_folder_w640` - This script  converts video files to a gif with width of 640px and 12 FPS. Just double-click the file and a window will open, where you can choose files to be processed.
* `video_to_gif_folder_s05` - This script converts all video files in the folder where it's located to gifs with resloution scaled by 0.5 and 12 FPS. Place it in the folder alongside video files and double click.
* `video_to_gif_folder_w640` - This script converts all video files in the folder where it's located to gifs with width of 640px and 12 FPS. Place it in the folder alongside video files and double click.

## Examples
