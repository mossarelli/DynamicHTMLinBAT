:: ***********************************************************************
:: 
:: TITLE:
:: _HEADER.bat
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
:: This is a header file for any BATCH.bat that calls it. It initialises the HTML file.
:: ***********************************************************************
:: CREATES HTML FILE
COPY /y NUL Index.html >NUL

:: HTML HEADER FOR ALL FILES:
@ECHO.^<^^!doctype html^>%WTF%

@ECHO.^<head^>%WTF%
@ECHO.%TAB%^<link rel="stylesheet" type="text/css" href="../HEADER_FILES/_CSS.css"^>%WTF%
@ECHO.%TAB%^<title^>%WTF%
@ECHO.%TAB%%TAB%%CDN% - Dropbox repo%WTF%
@ECHO.%TAB%^</title^>%WTF%
@ECHO.^</head^>%WTF%

@ECHO.^<body^>%WTF%

@ECHO.%TAB%^<h1^>%WTF%
@ECHO.%TAB%%TAB%%CDN% folder:%WTF%
@ECHO.%TAB%^</h1^>%WTF%

@ECHO.%TAB%^<p^>%WTF%
@ECHO.%TAB%%TAB%This is an automatically created HTML-file of the contents of the folder "%CDN%" on my Dropbox.^</br^>%WTF%
@ECHO.%TAB%%TAB%All files are linked with my Dropbox ID so that you can access them just by clicking in the list.%WTF%
@ECHO.%TAB%^</p^>%WTF%
:: TABLE BEGINS
@ECHO.^<table style="width:80%%"^>%WTF%
@ECHO.%TAB%^<tr^>%WTF%

@ECHO.%TAB%%TAB%^<th^>%WTF%
@ECHO.%TAB%%TAB%%TAB%^Name:%WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%

@ECHO.%TAB%%TAB%^<th^>%WTF%
@ECHO.%TAB%%TAB%%TAB%Last modified:%WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%

@ECHO.%TAB%%TAB%^<th^>%WTF%
@ECHO.%TAB%%TAB%%TAB%Type:%WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%

@ECHO.%TAB%%TAB%^<th^>%WTF%
@ECHO.%TAB%%TAB%%TAB%Size:%WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%

@ECHO.%TAB%^</tr^>%WTF%
