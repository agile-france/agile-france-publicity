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

PDFFILE=../generated/flyer-agile-france.pdf
PNGFILE=../generated/flyer-agile-france.png

deleteExistingFile $PDFFILE
deleteExistingFile $PNGFILE

inkscape --without-gui --file=../src/flyer/flyer-agile-france.svg --export-dpi=300 --export-area-page --export-pdf $PDFFILE --export-png $PNGFILE

printExportedFileSuccess $PDFFILE
printExportedFileSuccess $PNGFILE
