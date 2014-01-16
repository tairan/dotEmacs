@ECHO OFF

DEL /Q /S %APPDATA%\.emacs.d

cd %~dp0

XCOPY emacs.d %APPDATA%\.emacs.d /E /Q