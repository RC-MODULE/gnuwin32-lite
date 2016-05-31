# GnuWin32-Lite installer
 
Lite package of [GnuWin32](http://gnuwin32.sourceforge.net/)  tools needed for RC-Module product building would be installed . 

## List of packages:
-coreutils-5.3.0
-diffutils-2.8.7-1
-findutils-4.2.20-2
-grep-2.5.4
-make-3.81
-tar-1.13-1
-unzip-5.51-1
-wget-1.11.4-1
-7zip-9.20
-putty
-cecho

> Полный пакет GnuWin32 утилит (600MB) можно установить с помощью инсталлятора [GetGnuWin32-0.6.3.exe] с сайта https://sourceforge.net/projects/getgnuwin32/

## Installation
Download [GnuWin32-lite](https://github.com/RC-MODULE/gnuwin32-lite/archive/master.zip) installer.  
Exract archive and open a command window, switch to the GnuWin32-lite directory and run download.bat.  
If you are behind proxy define your proxy settings in .\wget.ini or add environment variables **http_proxy** and **https_proxy**  to your system.
If download.bat completes successfully you will be able to run the installer with path where to install gnuwin32. 
For example: 
```bat
C:\gnuwin32-lite-mater>set  http_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-mater>set https_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-mater>download 
C:\gnuwin32-lite-mater>install C:\gnuwin32 
```

