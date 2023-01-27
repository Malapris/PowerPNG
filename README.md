# PowerPNG
Multithreaded utility to recompress recursively PNG files, based on PNGQUANT.

Features : 
- Simple : just drop a folder on the shortcut and the program will find PNG files
- Fast ! The program is multithreaded with 5 simultaneous compressions
- 60% Gain ! For files generated with A1111
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


Demonstration : 

https://user-images.githubusercontent.com/123722969/215043292-88b83596-c062-45f5-93b7-346872c1887d.mp4



<hr>

Technical considerations :
- PowerPNG will NOT DROP any files but your PNG files will be REPLACED by smaller ones (with the same name), only if the size is smaller.
- PowerPNG is a batch DOS script who launches a powershell script who lanches PNGQUANT (for effective compression)
- The binary file of PNGQUANT is provided with no known viruses. Please refer to PNGQUANT website for original and updated software : https://pngquant.org/
