#!/bin/sh

deleteExistingFile () {
	if [ -f $1 ]; then
        	echo $1 already exists, deleting...
        	rm $1
	fi
}

printExportedFileSuccess () {
	if [ -f $1 ]; then
		echo $1 sucessfully generated.
	else
		echo Fail to generate $1.
	fi
}

LOGOFILE=../generated/logo.png

deleteExistingFile $LOGOFILE

inkscape --without-gui --file=../src/logo/logo.svg --export-dpi=300 --export-area-page --export-png $LOGOFILE

printExportedFileSuccess $LOGOFILE
