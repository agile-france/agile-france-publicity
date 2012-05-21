#!/bin/bash

source functions.sh

PDFDIR=../generated
PDFFILENAME=booklet.pdf
PDFFILE=$PDFDIR/$PDFFILENAME

deleteExistingFile $PDFFILE

soffice --headless --convert-to pdf --outdir $PDFDIR ../src/booklet.odt

printExportedFileSuccess $PDFFILE
