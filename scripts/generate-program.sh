#!/bin/bash

source functions.sh

PDFDIR=../generated
PDFFILENAME=Planning-Agile-France-2012.pdf
PDFFILE=$PDFDIR/$PDFFILENAME

deleteExistingFile $PDFFILE

soffice --headless --convert-to pdf --outdir $PDFDIR ../src/AgileFranceProgram.ods
mv $PDFDIR/AgileFranceProgram.pdf $PDFFILE

printExportedFileSuccess $PDFFILE
