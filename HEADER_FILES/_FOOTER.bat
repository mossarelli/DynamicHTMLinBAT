:: ***********************************************************************
::
:: TITLE:
:: _FOOTER.bat
::
:: FILE PURPOSE:
:: Footer file for the main HTML creator script. It wraps up the HTML file and finishes the table and body.
::
:: CREATED BY:
:: Mossarelli
::
:: LICENSE: BSD
::
:: Long version of license is in START.bat.
::
:: ***********************************************************************

:: %WTF% is Write to file macro.
@ECHO.%TAB%^<tr^>%WTF%
@ECHO.%TAB%%TAB%^<th colspan="0"^>%WTF%
@ECHO.%TAB%%TAB%%TAB% %WTF%
@ECHO.%TAB%%TAB%^</th^>%WTF%
@ECHO.%TAB%^</tr^>%WTF%
@ECHO.^</table^>%WTF%
@ECHO.^</body^>%WTF%
@ECHO.^</html^>%WTF%
