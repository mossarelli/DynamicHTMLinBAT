:: ***********************************************************************
::
:: TITLE:
:: _BATCH.bat
::
:: FILE PURPOSE:
:: This batch file calls on the 3 files that creates the HTML file.
::
:: CREATED BY:
:: Mossarelli
::
:: LICENSE: BSD
::
:: Long version of license is in START.bat.
::
:: ***********************************************************************

:: Switch to directory of this file:
CD %1

:: Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

:: CDN is Current Directory Name. Altered for every directory:
FOR %%* in (.) DO SET CDN=%%~nx*

:: Call each BATCH file:
CALL "%~dp0..\HEADER_FILES\_HEADER.bat"

CALL "%~dp0..\HEADER_FILES\_BATCHTEMPLATE.bat"

CALL "%~dp0..\HEADER_FILES\_FOOTER.bat"

:: Go back to parent folder:
CD ..
