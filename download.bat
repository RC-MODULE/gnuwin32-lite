if ".%WGETRC%"=="." set WGETRC=%CD%\wget.ini


IF "%1" == "-powershell" (
	@echo Downloading by PowerShell started ...
	set WGET=powershell  -ExecutionPolicy Bypass -file wget.ps1 
	
) ELSE (
	@echo  Downloading by GNU wget started ...
	set WGET=bin\wget -nc --no-check-certificate
)


@set WGET=%WGET% http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0-bin.zip
@set WGET=%WGET% http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/diffutils/2.8.7-1/diffutils-2.8.7-1-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/diffutils/2.8.7-1/diffutils-2.8.7-1-dep.zip
@set WGET=%WGET% https://sourceforge.net/projects/gnuwin32/files/findutils/4.2.20-2/findutils-4.2.20-2-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/findutils/4.2.20-2/findutils-4.2.20-2-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/findutils/4.2.20-2/findutils-4.2.20-2-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/grep/2.5.4/grep-2.5.4-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/grep/2.5.4/grep-2.5.4-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/make/3.81/make-3.81-bin.zip 
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/make/3.81/make-3.81-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/wget/1.11.4-1/wget-1.11.4-1-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/wget/1.11.4-1/wget-1.11.4-1-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/tar/1.13-1/tar-1.13-1-dep.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/gzip/1.3.12-1/gzip-1.3.12-1-bin.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/gnuwin32/unzip/5.51-1/unzip-5.51-1-bin.zip
@set WGET=%WGET% https://github.com/elisherer/cecho/archive/master.zip
@set WGET=%WGET% http://tartarus.org/~simon/putty-snapshots/x86/putty.zip
@set WGET=%WGET% http://www.7-zip.org/a/7za920.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/pkgconfiglite/0.28-1/pkg-config-lite-0.28-1_bin-win32.zip
@set WGET=%WGET% http://downloads.sourceforge.net/project/pkgconfiglite/0.28-1/pkg-config-lite-0.28-1_bin-win32.zip
@set WGET=%WGET% http://www.codeproject.com/KB/applications/SetEnv/SetEnv_exe.zip
@set WGET=%WGET% https://cmake.org/files/v3.5/cmake-3.5.2-win32-x86.zip



%WGET%