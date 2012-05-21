#!/bin/bash

source functions.sh

LOGOFILE=../generated/logo.png

deleteExistingFile $LOGOFILE

inkscape --without-gui --file=../src/logo/logo.svg --export-dpi=300 --export-area-page --export-png $LOGOFILE

printExportedFileSuccess $LOGOFILE
