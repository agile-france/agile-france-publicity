#!/bin/sh

deleteExistingFile () {
	if [ -f $1 ]; then
        	echo $1 already exists, deleting...
        	rm $1
	fi
}

printExportedFileSuccess () {
	if [ -f $1 ]; then
		echo $1 sucessfully generated.
	else
		echo Fail to generate $1.
	fi
}

PDFFILE=../generated/badges-A4.pdf
PNGFILE=../generated/badges-A4.png

deleteExistingFile $PDFFILE
deleteExistingFile $PNGFILE

inkscape --without-gui --file=../src/badges-A4.svg --export-dpi=300 --export-area-page --export-pdf $PDFFILE --export-png $PNGFILE

printExportedFileSuccess $PDFFILE
printExportedFileSuccess $PNGFILE
