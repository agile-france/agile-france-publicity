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

PLANFILE=../generated/plan.png

deleteExistingFile $PLANFILE

inkscape --without-gui --export-id=export --file=../src/plan.svg --export-dpi=300 --export-png $PLANFILE

printExportedFileSuccess $PLANFILE
