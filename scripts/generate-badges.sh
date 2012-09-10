#!/bin/bash

source functions.sh

for suffix in fan inscrit orateur speaker sponsor
do
	LOGOFILE=../generated/AgileFranceConference-logo-$suffix.png

	deleteExistingFile $LOGOFILE

	inkscape --without-gui --file=../src/badges/AgileFranceConference-logo-$suffix.svg --export-dpi=300 --export-area-page --export-png $LOGOFILE

	printExportedFileSuccess $LOGOFILE
done

