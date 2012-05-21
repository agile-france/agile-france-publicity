#!/bin/bash

source functions.sh

PDFFILE=../generated/questionnaire_session.pdf

deleteExistingFile $PDFFILE

inkscape --without-gui --file=../src/questionnaire_session.svg --export-dpi=150 --export-area-page --export-pdf $PDFFILE --export-text-to-path

printExportedFileSuccess $PDFFILE
