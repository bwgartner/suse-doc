#! /bin/sh

# prep for daps compatible 

type asciidoc || {
	echo "missing 'asciidoc' binary, please install it"
	exit 1
}

# prep for daps compatible 
[ -d ./xml ] || mkdir ./xml
OutputFN=./xml/MAIN-${1%.adoc}.xml

asciidoc --doctype=book --backend=docbook --out-file=${OutputFN} $1
