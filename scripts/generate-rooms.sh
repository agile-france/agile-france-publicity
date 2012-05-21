#!/bin/bash

source functions.sh

PDFDIR=../generated
PDFFILENAME=rooms.pdf
PDFFILE=$PDFDIR/$PDFFILENAME

deleteExistingFile $PDFFILE

soffice --headless --verbose --convert-to pdf --outdir $PDFDIR ../src/rooms.odg

printExportedFileSuccess $PDFFILE
