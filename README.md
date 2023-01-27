# PowerPNG
Multithreaded utility to recompress recursively PNG files, based on PNGQUANT.

Features : 
- Simple : just drop a folder on the shortcut and the program will find PNG files
- Fast ! The program is multithreaded with 5 simultaneous compressions
- 60% Gain ! For files generated with A1111

Instructions : just extract the zip file on your desktop (or anywhere you want) and drap'n'drop a folfer containing PNG files to the PowerPNG.bat icon (the one with many colors). This will launch the software :)

![image](https://user-images.githubusercontent.com/123722969/215035359-df3cfb73-8096-4f2d-b28e-ed1519fc7aa6.png)

Compression :
![image](https://user-images.githubusercontent.com/123722969/215035494-bf532451-8c37-4e51-af80-b76365e83c06.png)

Multithreading
![image](https://user-images.githubusercontent.com/123722969/215035561-9695204a-c11e-4dcb-8bbe-3f49ace55830.png)


<hr>

Technical considerations :
- PowerPNG is a batch DOS script who launches a powershell script who lanches PNGQUANT (for effective compression)
- PNGQUANT original and updated software is available here : https://pngquant.org/
