#!/bin/sh

PDFFILE=../generated/badges-A4.pdf
PNGFILE=../generated/badges-A4.png

if [ -f $PDFFILE ]; then
	echo $PDFFILE already exists, deleting...
	rm $PDFFILE
fi

if [ -f $PNGFILE ]; then
	echo $PNGFILE already exists, deleting...
	rm $PNGFILE
fi

inkscape --without-gui --file=../src/badges-A4.svg --export-dpi=300 --export-area-page --export-pdf $PDFFILE --export-png $PNGFILE

if [ -f $PDFFILE ]; then
	echo $PDFFILE sucessfully generated.
else
	echo Fail to generate $PDFFILE.
fi

if [ -f $PNGFILE ]; then
        echo $PNGFILE sucessfully generated.
else
        echo Fail to generate $PNGFILE.
fi
