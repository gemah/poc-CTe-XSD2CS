@echo off

cd .\model
del *.cs

cd ..\schema

echo Generating POC#O (Plain Old C# Objects) from Schema
echo WARNING: This Script currently relies on xsd.exe directory being in the "Path" Enviroment Variable 

for /R %%S in (\*.xsd) do xsd %%S /c /o:..\model /n:CTe.v300 /l:cs /edb