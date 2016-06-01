# GnuWin32-Lite installer
 
Online installer of small set of [GnuWin32](http://gnuwin32.sourceforge.net/) tools needed for RC-Module project buildings under Windows OS. 

## List of included packages:
  - coreutils-5.3.0
  - diffutils-2.8.7-1
  - findutils-4.2.20-2
  - grep-2.5.4
  - make-3.81
  - tar-1.13-1
  - unzip-5.51-1
  - gzip-1.3.12-1
  - wget-1.11.4-1
  - 7zip-9.20
  - putty
  - cecho

> Online full-package installer of all GnuWin32 tools (~600MB) is available at https://sourceforge.net/projects/getgnuwin32/

## Installation
Download [GnuWin32-lite](https://github.com/RC-MODULE/gnuwin32-lite/archive/master.zip) installer.    
Extract archive and open a command window, switch to the *gnuwin32-lite* directory and run download.bat.   
If you are behind proxy you have three choices how to start download:
  - A. Define your proxy settings in *.\wget.ini*  
  - B. Set environment variables **http_proxy** and **https_proxy** (with no spaces around =)
  - C. Start *download.bat* with *-powershell* option  

If download.bat completes successfully you will be able to run the installer with a path where to install gnuwin32.   

For example: 
```bat
C:\gnuwin32-lite-mater>set  http_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-mater>set https_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-mater>download 
C:\gnuwin32-lite-mater>install C:\gnuwin32 
```

