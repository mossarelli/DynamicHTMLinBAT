REM ***********************************************************************
REM This is a batch file that creates an Index.html as output, containing the content of the folder using Dropbox links.
REM ***********************************************************************
CD %1

REM Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

FOR %%* in (.) DO SET CDN=%%~nx*
CALL "%~dp0..\HEADER_FILES\_HEADER.bat"

CALL "%~dp0..\HEADER_FILES\_BATCHTEMPLATE.bat"

CALL "%~dp0..\HEADER_FILES\_FOOTER.bat"

CD ..
