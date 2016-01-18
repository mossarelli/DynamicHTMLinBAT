:: ***********************************************************************
::
:: TITLE:
:: START.bat
::
:: FILE PURPOSE:
:: Start this file in order to use the program.
::
:: CREATED BY:
:: Mossarelli
::
:: LICENSE: BSD
::
:: Permission to use, copy, modify, and/or distribute this software for any
:: purpose with or without fee is hereby granted, provided that the above
:: copyright notice and this permission notice appear in all copies.
::
:: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
:: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
:: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
:: DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
:: FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
:: DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
:: SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
:: CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
:: OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
:: OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
::
:: ***********************************************************************

:: Clear screen of text:
CLS

:: Set this off to turn off debugging:
@ECHO ON

:: Init variables:
CALL "_VARIABLE.bat"

:: Go up one folder:
CD ..

:: Find all _BATCH.bat in child folders:
FOR /F "delims=|" %%A IN ('DIR /B /S _BATCH.bat') DO (
	:: Call the _BATCH.bat file:
	CALL "%%A" %%~dpA
	:: Debug:
	:: CDN is Current Directory Name:
	@ECHO.%CDN%
)

FOR /F "delims=|" %%A IN ('DIR /B /S Index.html') DO (
	:: For debug:
	@ECHO.
)

:: Debug:
:: for /r %%x in (BATCH.bat) do echo "%%x"

:: Go back to the folder the file is in:
CD HEADER_FILES

:: User prompt:
@ECHO. Script succesfull.
@ECHO. Press Enter to quit.

:: Halt and wait for ENTER:
PAUSE >NUL
