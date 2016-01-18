REM ***********************************************************************
REM
REM TITLE:
REM START.bat
REM
REM FILE PURPOSE:
REM Start this file in order to use the program.
REM
REM CREATED BY:
REM Mossarelli
REM
REM LICENSE: BSD
REM
REM Permission to use, copy, modify, and/or distribute this software for any
REM purpose with or without fee is hereby granted, provided that the above
REM copyright notice and this permission notice appear in all copies.
REM
REM THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
REM AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
REM IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
REM DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
REM FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
REM DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
REM SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
REM CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
REM OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
REM OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
REM
REM ***********************************************************************

REM Set this off to turn off debugging:
REM Running the program with Echo on takes much longer time than if it is off.
REM This is because ECHO takes time to render text in the console window.
@ECHO OFF

REM Clear screen of text:
CLS

REM User prompt:
@ECHO.Indexing and creating files.

REM Init variables:
CALL "_VARIABLES.bat"

REM Go up one folder
CD ".."

REM Find all _BATCH.bat in child folders:
FOR /F "delims=|" %%A IN ('DIR /B /S _BATCH.bat') DO (
	REM Call the _BATCH.bat file:
	CALL "%%A" %%~dpA
)

REM Debug:
REM for /r %%x in (BATCH.bat) do echo "%%x"

REM Go back to the folder the file is in:
CD ".."
REM Go back to the folder where START.bat is in:
CD HEADER_FILES

REM User prompt:
@ECHO.Script succesfull.
REM @ECHO.Press Enter to quit.

REM Halt and wait for ENTER:
REM PAUSE >NUL
