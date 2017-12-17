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
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% libiconv-1.9.2-1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% sed-4.2.1-bin.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY%\bin 7za920.zip 
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY%\bin putty.zip 
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY%\bin premake-5.0.0-alpha11-windows.zip
bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% irontcl-amd64-8.6.7.zip
bin\unzip -p master.zip cecho-master\cecho\bin\Release\cecho.exe  > %GNUWIN32_INSTALL_DIRECTORY%\bin\cecho.exe

xcopy %GNUWIN32_INSTALL_DIRECTORY%\IronTcl\*.* %GNUWIN32_INSTALL_DIRECTORY% /E /Q /Y
rmdir %GNUWIN32_INSTALL_DIRECTORY%\IronTcl /S /Q
copy  %GNUWIN32_INSTALL_DIRECTORY%\bin\find.exe %GNUWIN32_INSTALL_DIRECTORY%\bin\gfind.exe
copy  %GNUWIN32_INSTALL_DIRECTORY%\bin\libiconv2.dll %GNUWIN32_INSTALL_DIRECTORY%\bin\libiconv-2.dll
copy  lua53.exe %GNUWIN32_INSTALL_DIRECTORY%\bin\lua53.exe 
copy  .\bin\setenv.exe %GNUWIN32_INSTALL_DIRECTORY%\bin


rem bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% cmake-3.5.2-win32-x86.zip
rem xcopy %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86\*.* %GNUWIN32_INSTALL_DIRECTORY%  /E /Q /Y
rem rmdir %GNUWIN32_INSTALL_DIRECTORY%\cmake-3.5.2-win32-x86 /S /Q
rem bin\unzip -p pkg-config-lite-0.28-1_bin-win32.zip pkg-config-lite-0.28-1\bin\pkg-config.exe   > %GNUWIN32_INSTALL_DIRECTORY%\bin\pkg-config.exe
rem bin\unzip -u -o -q -d %GNUWIN32_INSTALL_DIRECTORY% WinSCP-5.9.4-Portable.zip


@echo GnuWin32-lite installation completed!
@choice /M "Do you want to add "%GNUWIN32_INSTALL_DIRECTORY%\bin" folder to the PATH environment variable"
@if errorlevel 2 goto end 

.\bin\setenv -a path %%%GNUWIN32_INSTALL_DIRECTORY%\bin >NUL
@if errorlevel 1 (
	@echo Access denied to modify PATH variable in system-space.
	@echo Trying to modify PATH in user-space...
	.\bin\setenv -ua path %%%GNUWIN32_INSTALL_DIRECTORY%\bin 
	@if errorlevel 1 (
		@echo ERROR!
	) else (
		@echo Done!
	)
) else (
	@echo Done!!
)
:end
