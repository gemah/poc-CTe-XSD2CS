    
@echo off

cd .\model
del *.cs

cd ..\schema

echo Generating POC#O (Plain Old C# Objects) from Schema
echo WARNING: This Script currently relies on xsd.exe from Win10 .NET 4.6.1

SET index=1
SETLOCAL ENABLEDELAYEDEXPANSION
for /R %%S in (\*.xsd) do (
   "%programfiles(x86)%\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\xsd.exe" %%S xmldsig-core-schema_v1.01.xsd /c /o:..\model /n:CTe.v!index! /l:cs /edb
   SET /A index=!index!+1
)
SETLOCAL DISABLEDELAYEDEXPANSION
