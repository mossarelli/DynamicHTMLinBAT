REM ***********************************************************************
REM
REM TITLE:
REM _HEADER.bat
REM
REM FILE PURPOSE:
REM This is the header file that is the top of any HTML file.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

REM DELETES AND CREATES HTML FILE
COPY /y NUL Index.html >NUL

REM %WTF% is Write to file macro.
@ECHO.^<^^!doctype html^>%WTF%

@ECHO.^<head^>%WTF%
REM CSS:
@ECHO.%TAB%^<link rel="stylesheet" type="text/css" href="../HEADER_FILES/_CSS.css"^>%WTF%
@ECHO.%TAB%^<title^>%WTF%
REM CDN is Current Directory Name:
@ECHO.%TAB%%TAB%%CDN% - Dropbox repo%WTF%
@ECHO.%TAB%^</title^>%WTF%
@ECHO.^</head^>%WTF%

@ECHO.^<body^>%WTF%

REM HEADER:
@ECHO.%TAB%^<h1^>%WTF%
@ECHO.%TAB%%TAB%%CDN% folder:%WTF%
@ECHO.%TAB%^</h1^>%WTF%

REM DESCRIPTION:
@ECHO.%TAB%^<p^>%WTF%
@ECHO.%TAB%%TAB%This is an automatically created HTML-file of the contents of the folder "%CDN%" on my Dropbox.^</br^>%WTF%
@ECHO.%TAB%%TAB%All files are linked with my Dropbox ID so that you can access them just by clicking in the list.%WTF%
@ECHO.%TAB%^</p^>%WTF%
REM TABLE BEGINS
@ECHO.^<table style="width:80%%"^>%WTF%
@ECHO.%TAB%^<tr^>%WTF%

REM TABLE HEADERS:
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
REM CONTINUE TO TEMPLATE.
