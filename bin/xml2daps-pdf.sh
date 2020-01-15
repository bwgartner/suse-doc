#! /bin/sh

type daps || {
	echo "missing 'daps' binary, please install it"
	exit 1
}

MyDC=DC-${1%.adoc}
daps --verbosity=3 -d ${MyDC} pdf
