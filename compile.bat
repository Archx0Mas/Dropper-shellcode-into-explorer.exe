@ECHO OFF

rc resources.rc
cvtres /MACHINE:x64 /OUT:resources.o resources.res
cl.exe /nologo /Ox /MT /W0 /GS- /DNDEBUG /Tcimplementim.cpp /link /OUT:CombinedMethod.exe /SUBSYSTEM:WINDOWS /MACHINE:x64 resources.o