CLS
@ECHO ON

CALL "_INIT.bat"

CD ..

FOR /F "delims=|" %%A IN ('DIR /B /S _BATCH.bat') DO (
	CALL "%%A" %%~dpA
	@ECHO.%CDN%
)

FOR /F "delims=|" %%A IN ('DIR /B /S Index.html') DO (
	@ECHO.
)

REM for /r %%x in (BATCH.bat) do echo "%%x"
CD HEADER_FILES

@ECHO.Script succesfull.
@ECHO.Press Enter to quit.

PAUSE >NUL
