#!/bin/bash

source functions.sh

PDFFILE=../generated/flyer-agile-france.pdf
PNGFILE=../generated/flyer-agile-france.png

deleteExistingFile $PDFFILE
deleteExistingFile $PNGFILE

inkscape --without-gui --file=../src/flyer/flyer-agile-france.svg --export-dpi=150 --export-area-page --export-pdf $PDFFILE --export-png $PNGFILE --export-text-to-path

printExportedFileSuccess $PDFFILE
printExportedFileSuccess $PNGFILE
