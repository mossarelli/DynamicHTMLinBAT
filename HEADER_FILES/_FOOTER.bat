REM ***********************************************************************
REM
REM TITLE:
REM _FOOTER.bat
REM
REM FILE PURPOSE:
REM Footer file for the main HTML creator script. It wraps up the HTML file and finishes the table and body.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Long version of license is in START.bat.
REM
REM ***********************************************************************

REM %WTF% is Write to file macro.
@ECHO.%TAB%^<tr^>%WTF%
@ECHO.%TAB%%TAB%^<th colspan="0"^>%WTF%
@ECHO.%TAB%%TAB%%TAB% %WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%
@ECHO.%TAB%^</tr^>%WTF%
@ECHO.^</table^>%WTF%
@ECHO.^</body^>%WTF%
@ECHO.^</html^>%WTF%
