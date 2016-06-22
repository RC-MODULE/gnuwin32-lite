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
xcopy %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\*.* %GNUWIN32_INSTALL_DIRECTORY%  /E /Q /Y
rmdir %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86 /S /Q

@rem %GNUWIN32_INSTALL_DIRECTORY%\bin\mv %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\bin\*.* %GNUWIN32_INSTALL_DIRECTORY%\bin -f
@rem %GNUWIN32_INSTALL_DIRECTORY%\bin\mv %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\doc\*.* %GNUWIN32_INSTALL_DIRECTORY%\doc -f
@rem %GNUWIN32_INSTALL_DIRECTORY%\bin\rm %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86 -r -f


@echo Your current PATH is 
@path
@echo.
@set /P x=Do you want to add "%GNUWIN32_INSTALL_DIRECTORY%\bin" folder to the PATH environment variable? (y/n)?
@set x=%x:~0,1%
@if (%x%)==(y) goto add2path 
@if (%x%)==(Y) goto add2path 
@goto end

:add2path
@rem Script adds full path of %1 argument to %PATH% system environment variable
@echo off
set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set folderToAdd="%GNUWIN32_INSTALL_DIRECTORY%\bin"
For /f "tokens=2*" %%a In ('Reg.exe query "%key%" /v Path^|Find "Path"') do set CurPath=%%~b
reg.exe add "%Key%" /v Path /t REG_EXPAND_SZ /d "%CurPath%;%folderToAdd%" /f
@echo Restart Windows

:end