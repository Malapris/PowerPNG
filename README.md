# PowerPNG
Multithreaded utility to recompress recursively PNG files, based on PNGQUANT (Win32 only).
More than 50% gain !

DOWNLOAD latest release here : 
https://github.com/Malapris/PowerPNG/releases

![image](https://user-images.githubusercontent.com/123722969/216791664-796e00de-4ffc-4a03-a940-fb9fa4108724.png)

Features : 
- Simple : just drop a folder on the shortcut and the program will find PNG files
- Fast ! The program is multithreaded with 5 simultaneous compressions
- 66% Gain ! For files generated with A1111 (average)
- KEEP METADATA ! PowerPNG will keep your metadata contained in the PNG files

Instructions : just extract the zip file on your desktop (or anywhere you want) and drap'n'drop a folfer containing PNG files to the PowerPNG.bat icon (the one with many colors). This will launch the software :)

Use the colored icon to drop a folder :
![drop](https://user-images.githubusercontent.com/123722969/215043585-bb7f1aa8-7087-4b5e-a856-d81c8383a5e0.png)

Compression :
![image](https://user-images.githubusercontent.com/123722969/215035494-bf532451-8c37-4e51-af80-b76365e83c06.png)

Multithreading :
![image](https://user-images.githubusercontent.com/123722969/215035561-9695204a-c11e-4dcb-8bbe-3f49ace55830.png)

Result :
![image](https://user-images.githubusercontent.com/123722969/215036264-ca410a67-4ee0-456e-8cf9-161824b06ced.png)

If you like this work please consider buying me a coffe :)
https://www.buymeacoffee.com/malapris

<hr>

Technical considerations :
- PowerPNG will NOT DROP any files but your PNG files will be REPLACED by smaller ones (with the same name), only if the size is smaller.
- PowerPNG is a batch DOS script who launches a powershell script who lanches PNGQUANT (for effective compression)
- The binary file of PNGQUANT is provided with no known viruses. Please refer to PNGQUANT website for original and updated software : https://pngquant.org/
