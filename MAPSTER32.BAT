@echo off
cd mapster32
mapster32 -j "%~dp0\pk3" -namesfile sdm_names.h
robocopy ".\\" "%~dp0\pk3\maps" *.map /mov /XF autosave*.map backup.map
cd "%~dp0"