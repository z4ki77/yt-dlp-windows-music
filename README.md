🎧 YT-DLP Music Downloader



A simple Windows batch script to download music and playlists from YouTube and convert them to MP3 format with automatic metadata embedding.



&nbsp;   Note: This tool is intended for personal, legal use only. Respect copyright laws and YouTube's terms of service.



Features



✅ Download single videos or complete playlists

✅ Automatic conversion to MP3 (maximum quality)

✅ Embed thumbnails and metadata automatically

✅ Fast download mode (optional, without thumbnails)

✅ Organized by playlist folders

✅ Visual progress bar

✅ Auto-cleanup of temporary files (.json, .webp, .webm)

✅ Retry on errors with infinite retries

✅ Support for aria2 (optional, for faster downloads)

Requirements



You need to download and install these tools separately (not included in this repo):



&nbsp;   yt-dlp — YouTube downloader

&nbsp;       Download: https://github.com/yt-dlp/yt-dlp/releases

&nbsp;       Get the latest yt-dlp.exe

&nbsp;   FFmpeg — Audio/video converter

&nbsp;       Download: https://ffmpeg.org/download.html

&nbsp;       Or: https://www.gyan.dev/ffmpeg/builds/

&nbsp;   aria2 (optional) — For faster downloads

&nbsp;       Download: https://github.com/aria2/aria2/releases

&nbsp;       Get aria2-x.x.x-win-64bit-build1.zip



Installation

1\. Create folder structure



C:\\yt-dlp\\

├── yt-music.bat          (this script)

├── README.md

├── THIRD-PARTY-NOTICES.md

├── LICENSE

├── musique\\              (output folder, can be empty)

└── ffmpeg\\

&nbsp;   └── bin\\

&nbsp;       ├── yt-dlp.exe

&nbsp;       ├── ffmpeg.exe

&nbsp;       ├── ffprobe.exe

&nbsp;       └── aria2c.exe (optional)



2\. Download executables



&nbsp;   Download yt-dlp.exe from https://github.com/yt-dlp/yt-dlp/releases/latest

&nbsp;   Download FFmpeg (full build) and extract bin\\ contents

&nbsp;   Download aria2 and extract aria2c.exe

&nbsp;   Place all .exe files in C:\\yt-dlp\\ffmpeg\\bin\\



3\. Clone or download this repository

bash



git clone https://github.com/YOUR\_USERNAME/yt-dlp-windows-music.git

cd yt-dlp-windows-music



Or download as ZIP and extract.

Usage



&nbsp;   Double-click yt-music.bat

&nbsp;   Choose an option:

&nbsp;       1 = Download a single video

&nbsp;       2 = Download a complete playlist

&nbsp;   Paste the YouTube link and press Enter

&nbsp;   Choose quality mode:

&nbsp;       1 = Maximum quality with thumbnail (slower)

&nbsp;       2 = Fast mode without thumbnail (faster)

&nbsp;   Files will be saved to C:\\yt-dlp\\musique\\



Example output



C:\\yt-dlp\\musique\\

├── Chill Lo-Fi Mix\\

│   ├── Track 1.mp3

│   ├── Track 2.mp3

│   └── Track 3.mp3

└── Study Music\\

&nbsp;   ├── Song A.mp3

&nbsp;   └── Song B.mp3



Troubleshooting

Error 403 (Forbidden)



YouTube is blocking the download. Try:



&nbsp;   Restart your router (wait 30 seconds)

&nbsp;   Use a VPN (ProtonVPN, Windscribe, etc.)

&nbsp;   Wait 24-48 hours for YouTube to unblock your IP

&nbsp;   Try a different playlist to test



Missing files error



Make sure all .exe files are in C:\\yt-dlp\\ffmpeg\\bin\\:



&nbsp;   yt-dlp.exe

&nbsp;   ffmpeg.exe

&nbsp;   ffprobe.exe



Slow download speed



&nbsp;   Enable aria2c by placing it in the bin folder

&nbsp;   Use fast mode (option 2) which skips thumbnails

&nbsp;   Check your internet connection



Legal Notice



&nbsp;   This tool is for personal, educational use only

&nbsp;   Do not download copyrighted content without permission

&nbsp;   Respect YouTube's Terms of Service

&nbsp;   The author is not responsible for misuse of this tool



Credits \& Attribution



See THIRD-PARTY-NOTICES.md for detailed credits to:



&nbsp;   yt-dlp project

&nbsp;   FFmpeg project

&nbsp;   aria2 project



License



This project is licensed under the MIT License — see LICENSE file for details.

Author



Created by Zaki



Feel free to fork, modify, and improve this script for your own use.

Support



If you encounter issues:



&nbsp;   Check the Troubleshooting section above

&nbsp;   Verify all .exe files are in the correct folder

&nbsp;   Try with a VPN if you get error 403

&nbsp;   Test with a different playlist to narrow down the problem





