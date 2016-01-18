REM ***********************************************************************
REM
REM TITLE:
REM _BATCHTEMPLATE.bat
REM
REM FILE PURPOSE:
REM This file contains the template that is made for every token in the HTML file.
REM This file is run after _HEADER.bat and before _FOOTER.bat.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

REM Delayed Expansion is necessary for the string search script.
SETLOCAL EnableExtensions EnableDelayedExpansion

REM For every file in directory do:
FOR /f "tokens=*" %%A in ('DIR /a-d /b') DO (
	REM Filter blacklisted files:
	if "!TESTFILE:;%%A;=!" EQU "!TESTFILE!" (
		REM %TAB% is the tab indent character. This will make the HTML file readable by Allman style.
		REM %WTF% is Write to file macro.
		@ECHO.%TAB%^<tr^>%WTF%
		REM FILE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		REM %DROPBOXLINK% is defined in _VARIABLE.bat. Uses !CDN!:
		@ECHO.%TAB%%TAB%%TAB%^<a href="%DROPBOXLINK%"^>%%~nA^</a^>%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		REM LAST MODIFIED
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		@ECHO.%TAB%%TAB%%TAB%%%~tA%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		REM FILE TYPE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		@ECHO.%TAB%%TAB%%TAB%%%~xA%WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%
		REM FILE SIZE
		@ECHO.%TAB%%TAB%^<td^>%WTF%
		set /A "input=%%~zA/1024"
		REM Calculate file size and return a readable size:
		CALL "%~dp0..\HEADER_FILES\_FUNCTIONS.bat" :showThousands input output
		@ECHO.%TAB%%TAB%%TAB% !output! kb %WTF%
		@ECHO.%TAB%%TAB%^</td^>%WTF%

		@ECHO.%TAB%^</tr^>%WTF%
	) else (
		REM Debug:
		@ECHO.
	)
)
