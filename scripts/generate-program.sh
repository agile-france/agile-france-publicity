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

PDFDIR=../generated
PDFFILENAME=Planning-Agile-France-2012.pdf
PDFFILE=$PDFDIR/$PDFFILENAME

deleteExistingFile $PDFFILE

soffice --headless --convert-to pdf --outdir $PDFDIR ../src/AgileFranceProgram.ods
mv $PDFDIR/AgileFranceProgram.pdf $PDFFILE

printExportedFileSuccess $PDFFILE
