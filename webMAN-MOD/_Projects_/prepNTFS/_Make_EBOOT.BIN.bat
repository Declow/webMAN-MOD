@echo off
title Compiling prepNTFS
taskkill /IM cmd.exe /T /FI "WINDOWTITLE eq Administrator:*">NUL
cls

set PS3SDK=/c/PSDK3v2
set WIN_PS3SDK=C:/PSDK3v2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%WIN_PS3SDK%/ps3dev/bin;%WIN_PS3SDK%/ps3dev/ppu/bin;%WIN_PS3SDK%/ps3dev/spu/bin;%WIN_PS3SDK%/mingw/Python27;%PATH%;
set PSL1GHT=%PS3SDK%/psl1ght
set PS3DEV=%PS3SDK%/ps3dev

rem make npdrm
make pkg

del EBOOT.BIN
del *.elf
del /s/q build
rd /s/q build

:quit
pause