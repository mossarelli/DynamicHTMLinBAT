:: ***********************************************************************
:: 
:: TITLE:
:: _VARIABLE.bat
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
:: This is a header file for START.bat that calls it. It initialises variables.
:: ***********************************************************************

:: Ignored files list: %TESTFILE%
SET "TESTFILE=;Index.html;_BATCH.bat;"
:: Tab charachter: %TAB%
SET "TAB=	"
:: Write to File variable:
SET WTF=^>^>Index.html
:: Dropbox user ID:
SET DROPBOXUID=28058839
:: Dropbox URL or template:
SET DROPBOXLINK=https://dl.dropboxusercontent.com/u/%DROPBOXUID%/%CDN%/%%A