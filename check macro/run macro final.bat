@if (@CodeSection == @Batch) @then


@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"

REM change the file path
start Excel.exe "D:\lmn.txt"

Timeout 5
%SendKeys% "{ENTER}"
Timeout 1

REM check your alt key ka expression here....
%SendKeys% "{%}"

REM %SendKeys% "{space}"
REM echo sent space
REM call mouse position
REM call mouse moveTo 573x159
REM REM call mouse click
REM call mouse moveTo 880x370
REM call mouse click
cmd /K

goto :EOF


@end


// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));