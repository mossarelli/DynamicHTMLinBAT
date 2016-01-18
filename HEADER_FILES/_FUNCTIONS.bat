REM ***********************************************************************
REM
REM TITLE:
REM _FUNCTIONS.bat
REM
REM FILE PURPOSE:
REM Contains functions called by the HTML creation file.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

call %*
exit /b

REM Calculate filesize and return Kilobytes.
:showThousands  inVar  outVar
setlocal enableDelayedExpansion
set num=!%~1!
set "sign="
if %num:~0,1% equ - (
  set "sign=-"
  set "num=%num:~1%"
)
for /f "delims=0123456789" %%A in ("%num%") do goto :showThousandsReturn
call :strlen len num
if %len% leq 3 goto :showThousandsReturn
set /a end=len%%3
if %end% equ 0 set /a end=3
set /a start=(len-4)/3*3+end
for /l %%N in (%start% -3 %end%) do set "num=!num:~0,%%N! !num:~%%N!"
:showThousandsReturn
endlocal & set "%~2=%sign%%num%"
exit /b


:strlen <resultVar> <stringVar>
(
  setlocal EnableDelayedExpansion
  set "s=!%~2!#"
  set "len=0"
  for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
    if "!s:~%%P,1!" NEQ "" (
      set /a "len+=%%P"
      set "s=!s:~%%P!"
    )
  )
)
(
  endlocal
  set "%~1=%len%"
  exit /b
)
