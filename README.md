🎧 YT-DLP Music Downloader

A simple Windows batch script to download music and playlists from YouTube and convert them to MP3 format with automatic metadata embedding.

⚠️ Important Note: This tool is intended for personal, legal use only. Respect copyright laws and YouTube's terms of service.

✨ Features

· ✅ Download single videos or complete playlists 
· ✅ Automatic conversion to MP3 (maximum quality) 
· ✅ Embed thumbnails and metadata automatically 
· ✅ Fast download mode (optional, without thumbnails) 
· ✅ Organized by playlist folders.
· ✅ Visual progress bar 
· ✅ Auto-cleanup of temporary files (.json, .webp, .webm) 
· ✅ Retry on errors with infinite retries 
· ✅ Support for aria2 (optional, for faster downloads) 

📋 Requirements

You need to download and install these tools separately (not included in this repo):

🛠️ Required Tools:

· yt-dlp — YouTube downloader
    📥 Download: https://github.com/yt-dlp/yt-dlp/releases
    Get the latest yt-dlp.exe
· FFmpeg — Audio/video converter
    📥 Download: https://ffmpeg.org/download.html
    Or: https://www.gyan.dev/ffmpeg/builds/
    Get the full build
· aria2 (optional) — For faster downloads
    📥 Download: https://github.com/aria2/aria2/releases
    Get aria2-x.x.x-win-64bit-build1.zip

🚀 Installation

1. Create Folder Structure

```
C:\yt-dlp\
├── yt-music.bat (this script)
├── musique\          ← ⚠️ REQUIRED OUTPUT FOLDER
├── README.md
├── THIRD-PARTY-NOTICES.md
├── LICENSE
└── ffmpeg\
    └── bin\
        ├── yt-dlp.exe
        ├── ffmpeg.exe
        ├── ffprobe.exe
        └── aria2c.exe (optional)
```

2. Download Executables

· Download yt-dlp.exe from latest releases
· Download FFmpeg (full build) and extract bin\ contents
· Download aria2 and extract aria2c.exe
· Place all .exe files in C:\yt-dlp\ffmpeg\bin\

3. Create the "musique" Folder

This step is crucial for the script to work properly:

```bash
# Navigate to C:\yt-dlp\ and create the folder:
mkdir musique
```

4. Clone or Download Repository

```bash
git clone https://github.com/YOUR_USERNAME/yt-dlp-windows-music.git
cd yt-dlp-windows-music
```

Or download as ZIP and extract.

💻 Usage

1. Double-click yt-music.bat
2. Choose an option:
   · 1 = Download a single video
   · 2 = Download a complete playlist
3. Paste the YouTube link and press Enter
4. Choose quality mode:
   · 1 = Maximum quality with thumbnail (slower)
   · 2 = Fast mode without thumbnail (faster)

Files will be saved to: C:\yt-dlp\musique\

📁 Example Output

```
C:\yt-dlp\musique\
├── Chill Lo-Fi Mix\
│   ├── Track 1.mp3
│   ├── Track 2.mp3
│   └── Track 3.mp3
└── Study Music\
    ├── Song A.mp3
    └── Song B.mp3
```

🔧 Troubleshooting

❌ Error 403 (Forbidden)

YouTube is blocking the download. Try:

· Restart your router (wait 30 seconds)
· Use a VPN (ProtonVPN, Windscribe, etc.)
· Wait 24-48 hours for YouTube to unblock your IP
· Try a different playlist to test

❌ Missing Files Error

Make sure all .exe files are in C:\yt-dlp\ffmpeg\bin\:

· yt-dlp.exe
· ffmpeg.exe
· ffprobe.exe

❌ "musique" Folder Not Found

Create the required folder:

· Navigate to C:\yt-dlp\
· Right-click → New → Folder
· Name it exactly: musique
· Leave it empty - the script will handle the rest

❌ Slow Download Speed

· Enable aria2c by placing it in the bin folder
· Use fast mode (option 2) which skips thumbnails
· Check your internet connection

⚖️ Legal Notice

· This tool is for personal, educational use only
· Do not download copyrighted content without permission
· Respect YouTube's Terms of Service
· The author is not responsible for misuse of this tool

🙏 Credits & Attribution

See THIRD-PARTY-NOTICES.md for detailed credits to:

· yt-dlp project
· FFmpeg project
· aria2 project

📄 License

This project is licensed under the MIT License — see LICENSE file for details.

👨‍💻 Author

Created by Zaki

Feel free to fork, modify, and improve this script for your own use.

🆘 Support

If you encounter issues:

1. Check the Troubleshooting section above
2. Verify all .exe files are in the correct folder
3. **Ensure the "musique" folder exists in C:\yt-dlp\**
4. Try with a VPN if you get error 403
5. Test with a different playlist to narrow down the problem
