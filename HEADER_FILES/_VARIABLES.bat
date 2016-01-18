REM ***********************************************************************
REM
REM TITLE:
REM _VARIABLE.bat
REM
REM FILE PURPOSE:
REM This file contains all variables used in the scripts.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

REM Blacklist, ignored files list: %TESTFILE%
SET "TESTFILE=;Index.html;_BATCH.bat;"
REM Tab charachter: %TAB%
SET "TAB=	"
REM Write to File macro:
SET WTF=^>^>Index.html
REM Dropbox user ID:
SET DROPBOXUID=28058839
REM Dropbox URL or template:
REM CDN is Current Directory Name:
SET DROPBOXLINK=https://dl.dropboxusercontent.com/u/%DROPBOXUID%/%CDN%/%%A
