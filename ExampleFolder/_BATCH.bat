REM ***********************************************************************
REM
REM TITLE:
REM _BATCH.bat
REM
REM FILE PURPOSE:
REM This batch file calls on the 3 files that creates the HTML file.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

REM Switch to directory of this file:
CD %1

REM Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

REM CDN is Current Directory Name. Altered for every directory:
FOR %%* in (.) DO SET CDN=%%~nx*

REM Call each BATCH file:
CALL "%~dp0..\HEADER_FILES\_HEADER.bat"

CALL "%~dp0..\HEADER_FILES\_BATCHTEMPLATE.bat"

CALL "%~dp0..\HEADER_FILES\_FOOTER.bat"

REM Go back to parent folder:
CD ".."
