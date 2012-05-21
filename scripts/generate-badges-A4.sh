#!/bin/bash

source functions.sh

PDFFILE=../generated/badges-A4.pdf
PNGFILE=../generated/badges-A4.png

deleteExistingFile $PDFFILE
deleteExistingFile $PNGFILE

inkscape --without-gui --file=../src/badges-A4.svg --export-dpi=300 --export-area-page --export-pdf $PDFFILE --export-png $PNGFILE

printExportedFileSuccess $PDFFILE
printExportedFileSuccess $PNGFILE

DATAPDF=../generated/badges-2778878701.pdf
FINALPDF=../generated/badges-A4-data.pdf

pdftk $DATAPDF background $PDFFILE output $FINALPDF

printExportedFileSuccess $FINALPDF
