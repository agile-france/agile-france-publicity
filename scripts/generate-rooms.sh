#!/bin/sh

deleteExistingFile () {
	if [ -f $1 ]; then
        	echo $1 already exists, deleting...
        	rm $1
	else
		echo Output file does not exists.
	fi
}

printExportedFileSuccess () {
	if [ -f $1 ]; then
		echo $1 sucessfully generated.
	else
		echo Fail to generate $1.
	fi
}

PDFDIR=../generated
PDFFILENAME=rooms.pdf
PDFFILE=$PDFDIR/$PDFFILENAME

deleteExistingFile $PDFFILE

soffice --headless --verbose --convert-to pdf --outdir $PDFDIR ../src/rooms.odg

printExportedFileSuccess $PDFFILE
