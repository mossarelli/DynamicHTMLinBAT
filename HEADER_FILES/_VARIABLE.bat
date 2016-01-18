:: ***********************************************************************
::
:: TITLE:
:: _VARIABLE.bat
::
:: FILE PURPOSE:
:: This file contains all variables used in the scripts.
::
:: CREATED BY:
:: Mossarelli
::
:: LICENSE: BSD
::
:: Long version of license is in START.bat.
::
:: ***********************************************************************

:: Blacklist, ignored files list: %TESTFILE%
SET "TESTFILE=;Index.html;_BATCH.bat;"
:: Tab charachter: %TAB%
SET "TAB=	"
:: Write to File macro:
SET WTF=^>^>Index.html
:: Dropbox user ID:
SET DROPBOXUID=28058839
:: Dropbox URL or template:
:: CDN is Current Directory Name:
SET DROPBOXLINK=https://dl.dropboxusercontent.com/u/%DROPBOXUID%/%CDN%/%%A
