@echo off
echo This will download GnuWin32-lite packeages to the current directory
ping vmproxy1.module.ru -n 1 > proxy.test
if  %ERRORLEVEL%==0 set bypass_rcm_proxy=--no-proxy
echo %bypass_rcm_proxy%
choice /M "Do you have proxy server?"
if errorlevel 2 goto start 

set /p login="Enter login:"
set "psCommand=powershell -Command "$pword = read-host 'Enter Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
set /p proxy="Enter proxy:port "
set  http_proxy=http://%login%:%password%@%proxy%
set https_proxy=https://%login%:%password%@%proxy%

:start

set WGET=bin\wget -nc --no-check-certificate

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
rem @set WGET=%WGET% https://winscp.net/download/WinSCP-5.9.4-Portable.zip
rem @set WGET=%WGET%  http://www.module.ru/mb7707/soft/libxslt-1.1.26.win32.zip %bypass_rcm_proxy% 



%WGET%