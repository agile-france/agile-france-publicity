#!/bin/bash

source functions.sh

PDFFILE=../generated/mot_des_orgas.pdf

deleteExistingFile $PDFFILE

inkscape --without-gui --file=../src/mot_des_orgas.svg --export-dpi=300 --export-area-page --export-text-to-path --export-pdf $PDFFILE

printExportedFileSuccess $PDFFILE
