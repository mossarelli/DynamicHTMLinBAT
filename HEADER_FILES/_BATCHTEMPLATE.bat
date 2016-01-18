:: ***********************************************************************
::
:: TITLE:
:: _BATCHTEMPLATE.bat
::
:: FILE PURPOSE:
:: This file contains the template that is made for every token in the HTML file.
:: This file is run after _HEADER.bat and before _FOOTER.bat.
::
:: CREATED BY:
:: Mossarelli
::
:: LICENSE: BSD
::
:: Long version of license is in START.bat.
::
:: ***********************************************************************

:: Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

:: For every file in directory do:
FOR /f "tokens=*" %%A in ('DIR /a-d /b') DO (
	:: Filter blacklisted files:
	if "!TESTFILE:;%%A;=!" EQU "!TESTFILE!" (
		:: %TAB% is the tab indent character. This will make the HTML file readable by Allman style.
		:: %WTF% is Write to file macro.
		@ECHO.%TAB%^<tr^>%WTF%
		:: FILE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		:: %DROPBOXLINK% is defined in _VARIABLE.bat.
		@ECHO.%TAB%%TAB%%TAB%^<a href="%DROPBOXLINK%"^>%%~nA^</a^>%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		:: LAST MODIFIED
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		@ECHO.%TAB%%TAB%%TAB%%%~tA%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		:: FILE TYPE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		@ECHO.%TAB%%TAB%%TAB%%%~xA%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		:: FILE SIZE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		set /A "input=%%~zA/1024"
		:: Calculate file size and return a readable size:
		CALL "%~dp0..\HEADER_FILES\_FUNCTIONS.bat" :showThousands input output
		@ECHO.%TAB%%TAB%%TAB% !output! kb %WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%

		@ECHO.%TAB%^</tr^>%WTF%
	) else (
		:: Debug:
		@ECHO.
	)
)
