#! /bin/sh

# assumes
#	a single-html output is present
#	being invoked from daps build/<name>/single-html/<name> dir

pandoc --data-dir=./ -s -f html index.html -t odt -o test.odt
