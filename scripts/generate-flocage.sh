#!/bin/bash

source functions.sh

FLOCAGEFILE=../generated/flocage.png

deleteExistingFile $FLOCAGEFILE

inkscape --without-gui --file=../src/flocage.svg --export-dpi=300 --export-area-page --export-png $FLOCAGEFILE --export-text-to-path

printExportedFileSuccess $FLOCAGEFILE

