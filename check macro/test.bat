@if (@CodeSection == @Batch) @then


@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"

start "notepad" "D:\hi.txt"

Timeout 5
REM %SendKeys% "{ENTER}"
REM Timeout 1

%SendKeys% "%% x"

REM %SendKeys% " "
REM %SendKeys% "x"
cmd /K

goto :EOF


@end


// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));