# DynamicHTMLinBAT
A windows batch script that creates HTML files based on folder content. The HTML files comes with Dropbox link integration so that you can put the batch files in your Dropbox public folder and create HTML files that can be opened using Dropbox public links.

If you don't have access to a Dropbox public folder (depecrated since 2012) then you can't use these HTML files for Dropbox. But with a small change to the script you can instead use it for a FTP or similar.

# Usage:
Place the folder HEADER_FILES in the same directory as other directories you want to make HTML files in. Put the file _BATCH.bat in each folder you want to make HTML files in, the script will automatically search for every _BATCH.bat file in all folders next to the HEADER_FILES folder.

In the file _VARIABLE.bat you can set file filtering for the variable TESTFILE. By default, Index.html and _BATCH.bat will be ignored by the script as to not add source code to the HTML file.

The ExampleFolder in the project gives you a test of how it works.

NOTE: Folder names cannot have spaces, so use underscores instead. Spaces are converted to %20 and weird stuff in both HTML and batch and I don't want to fix it right now.
