:: ***********************************************************************
:: 
:: TITLE:
:: _BATCH.bat
:: 
:: FILE PURPOSE:
:: Start this file in order to use the program.
:: 
:: CREATED BY:
:: Mossarelli
:: 
:: LICENSE: BSD
:: 
:: Long version of license is in START.bat.
:: 
:: ***********************************************************************

:: ***********************************************************************
:: This is a batch file that creates an Index.html as output, containing the content of the folder using Dropbox links.
:: ***********************************************************************
CD %1

:: Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

FOR %%* in (.) DO SET CDN=%%~nx*
CALL "%~dp0..\HEADER_FILES\_HEADER.bat"

CALL "%~dp0..\HEADER_FILES\_BATCHTEMPLATE.bat"

CALL "%~dp0..\HEADER_FILES\_FOOTER.bat"

CD ..
