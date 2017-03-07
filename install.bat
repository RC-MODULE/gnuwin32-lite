@set GNUWIN32_INSTALL_DIRECTORY=%1
@if "%GNUWIN32_INSTALL_DIRECTORY%"=="" set GNUWIN32_INSTALL_DIRECTORY=%cd%
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% coreutils-5.3.0-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% coreutils-5.3.0-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% diffutils-2.8.7-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% diffutils-2.8.7-1-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% findutils-4.2.20-2-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% findutils-4.2.20-2-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% findutils-4.2.20-2-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% grep-2.5.4-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% grep-2.5.4-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% make-3.81-bin.zip 
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% make-3.81-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% wget-1.11.4-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% wget-1.11.4-1-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% tar-1.13-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% tar-1.13-1-dep.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% gzip-1.3.12-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% unzip-5.51-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY%\bin 7za920.zip 
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY%\bin putty.zip 
bin\unzip -p master.zip cecho-master\cecho\bin\Release\cecho.exe  > %GNUWIN32_INSTALL_DIRECTORY%\bin\cecho.exe
bin\unzip -p pkg-config-lite-0.28-1_bin-win32.zip pkg-config-lite-0.28-1\bin\pkg-config.exe   > %GNUWIN32_INSTALL_DIRECTORY%\bin\pkg-config.exe
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% cmake-3.5.2-win32-x86.zip
copy .\bin\setenv.exe %GNUWIN32_INSTALL_DIRECTORY%\bin
copy %GNUWIN32_INSTALL_DIRECTORY%\bin\find.exe %GNUWIN32_INSTALL_DIRECTORY%\bin\gfind.exe
copy %GNUWIN32_INSTALL_DIRECTORY%\bin\libiconv2.dll %GNUWIN32_INSTALL_DIRECTORY%\bin\libiconv-2.dll

xcopy %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\*.* %GNUWIN32_INSTALL_DIRECTORY%  /E /Q /Y
rmdir %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86 /S /Q

@echo Your current PATH is 
@path
@echo. GnuWin32-lite instalation completed!
@set /P x=Do you want to add "%GNUWIN32_INSTALL_DIRECTORY%\bin" folder to the PATH environment variable? (y/n)?
@set x=%x:~0,1%
@if (%x%)==(y) goto add2path 
@if (%x%)==(Y) goto add2path 
@goto end

:add2path
%GNUWIN32_INSTALL_DIRECTORY%\bin\setenv -a path %%%GNUWIN32_INSTALL_DIRECTORY%\bin

:end



@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\cp -rl %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\bin %GNUWIN32_INSTALL_DIRECTORY% 
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\cp -rl %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\doc %GNUWIN32_INSTALL_DIRECTORY% 
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\cp -rl %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\man %GNUWIN32_INSTALL_DIRECTORY% 
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\cp -rl %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\plugins %GNUWIN32_INSTALL_DIRECTORY%
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\cp -rl %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\share %GNUWIN32_INSTALL_DIRECTORY%
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\rm -r  %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\mv %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\bin\*.* %GNUWIN32_INSTALL_DIRECTORY%\bin -f
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\mv %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\doc\*.* %GNUWIN32_INSTALL_DIRECTORY%\doc -f
@ rem %GNUWIN32_INSTALL_DIRECTORY%\bin\rm %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86 -r -f
@
@ rem @rem Script adds full path of %1 argument to %PATH% system environment variable
@ rem @echo off
@ rem set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
@ rem set folderToAdd="%GNUWIN32_INSTALL_DIRECTORY%\bin"
@ rem For /f "tokens=2*" %%a In ('Reg.exe query "%key%" /v Path^|Find "Path"') do set CurPath=%%~b
@ rem reg.exe add "%Key%" /v Path /t REG_EXPAND_SZ /d "%CurPath%;%folderToAdd%" /f
@ rem @echo Restart Windows
@ 
@ rem where setx
@ rem if %errorlevel%  (
@ rem @echo SETX.EXE is not found on this computer!
@ rem @echo If you are using Windows XP install [Windows Support Tools for Microsoft Windows XP] from
@ rem @echo https://www.microsoft.com/en-us/download/details.aspx?id=18546
@ rem @echo It is recommended before continue
@ rem @set /P x=Do you want to continue ? (y/n)?
@ rem @set x=%x:~0,1%
@ rem @if (%x%)==(y) goto inst 
@ rem @if (%x%)==(Y) goto inst
@ rem @exit
@ rem 
@ rem :inst