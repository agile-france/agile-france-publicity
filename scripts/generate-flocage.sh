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

FLOCAGEFILE=../generated/flocage.png

deleteExistingFile $FLOCAGEFILE

inkscape --without-gui --file=../src/flocage.svg --export-dpi=300 --export-area-page --export-png $FLOCAGEFILE

printExportedFileSuccess $FLOCAGEFILE
