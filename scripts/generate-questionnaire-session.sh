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

PDFFILE=../generated/questionnaire_session.pdf

deleteExistingFile $PDFFILE

inkscape --without-gui --file=../src/questionnaire_session.svg --export-dpi=150 --export-area-page --export-pdf $PDFFILE --export-text-to-path

printExportedFileSuccess $PDFFILE
