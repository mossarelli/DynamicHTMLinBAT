# DynamicHTMLinBAT
A windows batch script that creates HTML files based on folder content. The HTML files comes with Dropbox link integration so that you can put the batch files in your Dropbox public folder and create HTML files that can be opened using Dropbox public links.

If you don't have access to a Dropbox public folder (depecrated since 2012) then you can't use these HTML files for Dropbox. But with a small change to the script you can instead use it for a FTP or similar.

# Usage:
Download the project and put the HEADER_FILES folder in the same directory as all the other folders you want to make catalogues of. Put the file _BATCH.bat found in the folder ExampleFolder in every folder you want the script to detect and make into HTML files.

In the file _VARIABLE.bat you can set file filtering for the variable TESTFILE. By default, Index.html and _BATCH.bat will be ignored by the script as to not add itself or source code to the HTML file.

The ExampleFolder in the project gives you a test of how it works.

NOTE: Folder names cannot have spaces, so use underscores instead. Spaces are converted to %20 and weird stuff in both HTML and batch and I don't want to fix it right now.

# Editing:
When you want to make comments in batch, you cannot simply use the :: marker, instead use REM. For some reason, lots of bugs is created if you use :: in Batch, both on Windows 7 and 10.
