#!/bin/bash

source functions.sh

PLANFILE=../generated/plan.png

deleteExistingFile $PLANFILE

inkscape --without-gui --export-id=export --file=../src/plan.svg --export-dpi=300 --export-png $PLANFILE --export-text-to-path

printExportedFileSuccess $PLANFILE
