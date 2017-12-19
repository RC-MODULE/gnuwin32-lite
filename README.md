# [GnuWin32-Lite installer](https://github.com/RC-MODULE/gnuwin32-lite)
 
Online installer of full tool set needed for RC-Module project buildings under Windows OS. 

## List of downloading packages:
### Script languages & build systems:   
  - [make-3.81](http://gnuwin32.sourceforge.net/packages/make.htm)
  - [premake](https://premake.github.io/)
  - [lua](http://lua-users.org/wiki/LuaBinaries)
  - [tcl](https://www.irontcl.com/)
<!--
  - [pkg-config](https://sourceforge.net/projects/pkgconfiglite/files/)
  - [cmake](https://cmake.org)
 -->
### System [GnuWin32](http://gnuwin32.sourceforge.net/) utilities:   
  - [coreutils](http://gnuwin32.sourceforge.net/packages/coreutils.htm)
  - [diffutils](http://gnuwin32.sourceforge.net/packages/diffutils.htm)
  - [findutils](http://gnuwin32.sourceforge.net/packages/findutils.htm)
  - [grep](http://gnuwin32.sourceforge.net/packages/grep.htm)
  - [libiconv](http://gnuwin32.sourceforge.net/packages/libiconv.htm) 
  - [sed](http://gnuwin32.sourceforge.net/packages/sed.htm)
  - [setenv](http://www.codeproject.com/Articles/12153/SetEnv)
  - [wget](http://gnuwin32.sourceforge.net/packages/wget.htm)
  - [cecho](https://github.com/elisherer/cecho) - colorized echo
  - [putty/pscp](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
### Archivators:   
  - [tar](http://gnuwin32.sourceforge.net/packages/gtar.htm)
  - [gzip](http://gnuwin32.sourceforge.net/packages/gzip.htm)
  - [unzip](http://gnuwin32.sourceforge.net/packages/unzip.htm)
  - [7zip-9.20](http://www.7-zip.org)


## Installation 
Clone this project or download [GnuWin32-lite](https://github.com/RC-MODULE/gnuwin32-lite/archive/master.zip) installer.   
Extract archive and open a command window, switch to the *gnuwin32-lite* directory and run *download.bat*   
If you are behind proxy you have two choices how to enter proxy-settings:
  - A. In dialog mode of *download.bat*  
  - B. Define your proxy settings in environment variables **http_proxy** and **https_proxy** (with no spaces around =) in command line or put it into *.\wget.ini*
  


If *download.bat* completes successfully run *install.bat <your_install_dir>* with a path where to extract tools.   
*Install.bat* without parameters will extract tools to the current *\bin* folder.   
Accept %PATH% modyfication - it will add <your_install_dir>\bin to the PATH variable.

For example: 
```bat
C:\gnuwin32-lite-master>set  http_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-master>set https_proxy=http://username:password@proxy:80/
C:\gnuwin32-lite-master>download 
C:\gnuwin32-lite-master>install C:\gnuwin32 
```

