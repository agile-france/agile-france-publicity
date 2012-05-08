#!/bin/sh

PDFFILE=../generated/badges-A4.pdf

if [ -f $PDFFILE ]; then
	echo $PDFFILE already exists, deleting...
	rm $PDFFILE
fi

inkscape --without-gui --file=../src/badges-A4.svg --export-area-page --export-pdf $PDFFILE

if [ -f $PDFFILE ]; then
	echo $PDFFILE sucessfully generated.
else
	echo Fail to generate $PDFFILE.
fi
