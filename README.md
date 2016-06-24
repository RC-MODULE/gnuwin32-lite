# GnuWin32-Lite installer
 
Online installer of small set of [GnuWin32](http://gnuwin32.sourceforge.net/) tools needed for RC-Module project buildings under Windows OS. 

## List of downloading packages:
  - [coreutils](http://gnuwin32.sourceforge.net/packages/coreutils.htm)
  - [diffutils](http://gnuwin32.sourceforge.net/packages/diffutils.htm)
  - [findutils](http://gnuwin32.sourceforge.net/packages/findutils.htm)
  - [grep](http://gnuwin32.sourceforge.net/packages/grep.htm)
  - [make-3.81](http://gnuwin32.sourceforge.net/packages/make.htm)
  - [tar](http://gnuwin32.sourceforge.net/packages/gtar.htm)
  - [unzip](http://gnuwin32.sourceforge.net/packages/unzip.htm)
  - [gzip](http://gnuwin32.sourceforge.net/packages/gzip.htm)
  - [wget](http://gnuwin32.sourceforge.net/packages/wget.htm)
  - [7zip-9.20](http://www.7-zip.org)
  - [putty/pscp[(http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
  - [cecho](https://github.com/elisherer/cecho)
  - [pkg-config](https://sourceforge.net/projects/pkgconfiglite/files/)
  - [cmake](https://cmake.org)
  - [setenv](http://www.codeproject.com/Articles/12153/SetEnv)

> Online full-package installer of all GnuWin32 tools (~600MB) is available at https://sourceforge.net/projects/getgnuwin32/

## Starting
Download [GnuWin32-lite](https://github.com/RC-MODULE/gnuwin32-lite/archive/master.zip) installer.    
Extract archive and open a command window, switch to the *gnuwin32-lite* directory and run *download.bat*   
If you are behind proxy you have three choices how to start download:
  - A. Define your proxy settings in *.\wget.ini*  
  - B. Set environment variables **http_proxy** and **https_proxy** (with no spaces around =)
  - C. Start *download.bat* with *-powershell* option  

If *download.bat* completes successfully you will be able to run the installer with a path where to install gnuwin32.   

For example: 
```bat
C:\gnuwin32-lite-master>set  http_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-master>set https_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-master>download 
C:\gnuwin32-lite-master>install C:\gnuwin32 
```

