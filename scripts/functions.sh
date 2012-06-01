#!/bin/bash

deleteExistingFile () {
	if [ -f $1 ]; then
        	echo [AGILE FRANCE] $1 already exists, deleting...
        	rm $1
	else
		echo [AGILE FRANCE] Output file does not exists.
	fi
}

printExportedFileSuccess () {
	if [ -f $1 ]; then
		echo [AGILE FRANCE] $1 sucessfully generated.
	else
		echo [AGILE FRANCE] Fail to generate $1.
	fi
}
